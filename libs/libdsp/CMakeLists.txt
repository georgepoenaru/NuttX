
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

if("${CONFIG_LIBDSP}" STREQUAL "y")

	set(CSRCS)
	
	list(APPEND CSRCS lib_pid.c)
	list(APPEND CSRCS lib_svm.c)
	list(APPEND CSRCS lib_transform.c)
	list(APPEND CSRCS lib_observer.c)
	list(APPEND CSRCS lib_foc.c)
	list(APPEND CSRCS lib_misc.c)
	list(APPEND CSRCS lib_motor.c)
	
	nuttx_add_library(dsp ${CSRCS})
	target_include_directories(dsp INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

endif()
