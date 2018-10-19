
include(nuttx_parse_function_args)

define_property(GLOBAL PROPERTY NUTTX_APP_LIBS
	BRIEF_DOCS "NuttX application libs"
	FULL_DOCS "List of all NuttX application libraries"
)

define_property(GLOBAL PROPERTY NUTTX_APP_BDATLIST
	BRIEF_DOCS "NuttX application BDAT"
	FULL_DOCS "BDATLIST"
)

define_property(GLOBAL PROPERTY NUTTX_APP_PDATLIST
	BRIEF_DOCS "NuttX application PDAT"
	FULL_DOCS "PDATLIST"
)

#=============================================================================
#
#	nuttx_add_application
#
#	This function builds a static library from a module description.
#
#	Usage:
#		nuttx_add_application(
#			APPLICATION <string>
#			[ PRIORITY <string> ]
#			[ STACKSIZE <string> ]
#			[ COMPILE_FLAGS <list> ]
#			[ INCLUDES <list> ]
#			[ DEPENDS <string> ]
#			[ SRCS <list> ]
#			)
#
#	Input:
#		APPLICATION		: unique name of application
#		PRIORITY		: priority
#		STACKSIZE		: stack size
#		COMPILE_FLAGS	: compile flags
#		SRCS			: source files
#		INCLUDES		: include directories
#		DEPENDS			: targets which this module depends on
#
#	Output:
#		Static library with name matching MODULE.
#		(Or a shared library when DYNAMIC is specified.)
#
#	Example:
#		nuttx_add_application(APPLICATION test
#			SRCS
#				file.cpp
#			STACKSIZE
#				1024
#			DEPENDS
#				nshlib
#			)
#
function(nuttx_add_application)

	nuttx_parse_function_args(
		NAME nuttx_add_application
		ONE_VALUE
			APPLICATION PRIORITY STACKSIZE 
		MULTI_VALUE
			COMPILE_FLAGS SRCS INCLUDES DEPENDS
		OPTIONS
		REQUIRED
			APPLICATION SRCS
		ARGN ${ARGN})
		
	set(TARGET apps_${APPLICATION})

	add_library(${TARGET} EXCLUDE_FROM_ALL ${SRCS})
	add_dependencies(${TARGET} nuttx_context)

	set_property(GLOBAL APPEND PROPERTY NUTTX_APP_LIBS ${TARGET})

	# set defaults if not set
	set(MAIN_DEFAULT MAIN-NOTFOUND)
	set(STACKSIZE_DEFAULT 1024)
	set(PRIORITY_DEFAULT SCHED_PRIORITY_DEFAULT)

	foreach(property APPLICATION PRIORITY STACKSIZE)
		if(NOT ${property})
			set(${property} ${${property}_DEFAULT})
		endif()
		set_target_properties(${TARGET} PROPERTIES ${property} ${${property}})
	endforeach()

	# default stack max to stack main
	if(NOT STACKSIZE)
		set(STACKSIZE ${STACKSIZE})
	endif()
	set_target_properties(${TARGET} PROPERTIES STACKSIZE ${STACKSIZE})

	if(COMPILE_FLAGS)
		target_compile_options(${TARGET} PRIVATE ${COMPILE_FLAGS})
	endif()

	if(DEPENDS)
		# using target_link_libraries for dependencies provides linking
		#  as well as interface include and libraries
		foreach(dep ${DEPENDS})
			get_target_property(dep_type ${dep} TYPE)
			if (${dep_type} STREQUAL "STATIC_LIBRARY")
				target_link_libraries(${TARGET} PRIVATE ${dep})
			else()
				add_dependencies(${TARGET} ${dep})
			endif()
		endforeach()
	endif()

	foreach (prop STACKSIZE MAIN PRIORITY)
		if (${prop})
			set_target_properties(${TARGET} PROPERTIES ${prop} ${${prop}})
		endif()
	endforeach()




	# builtin BDAT
	add_custom_command(
		OUTPUT
			${APPS_DIR}/builtin/registry/${MAIN}_main.bdat
		COMMAND
			echo "{ \"${MAIN}\", ${PRIORITY}, ${STACK_MAIN}, ${MAIN}_main }," > ${APPS_DIR}/builtin/registry/${MAIN}_main.bdat
		COMMAND
			#${CMAKE_COMMAND} -E touch ${APPS_DIR}/builtin/registry/.updated
		DEPENDS
			nuttx_context
		VERBATIM
	)
	set_property(GLOBAL APPEND PROPERTY NUTTX_APP_BDATLIST ${APPS_DIR}/builtin/registry/${MAIN}_main.bdat)

	# builtin PDAT
	add_custom_command(
		OUTPUT
			${APPS_DIR}/builtin/registry/${MAIN}_main.pdat
		COMMAND
			echo "int ${MAIN}_main(int argc, char *argv[]);" > ${APPS_DIR}/builtin/registry/${MAIN}_main.pdat
		COMMAND
			#${CMAKE_COMMAND} -E touch ${APPS_DIR}/builtin/registry/.updated
		DEPENDS
			nuttx_context
		VERBATIM
	)
	set_property(GLOBAL APPEND PROPERTY NUTTX_APP_PDATLIST ${APPS_DIR}/builtin/registry/${MAIN}_main.pdat)


endfunction()
