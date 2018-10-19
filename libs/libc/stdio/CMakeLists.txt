############################################################################
# libs/libc/stdio/Make.defs
#
#   Copyright (C) 2011-2014 Gregory Nutt. All rights reserved.
#   Author: Gregory Nutt <gnutt@nuttx.org>
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name NuttX nor the names of its contributors may be
#    used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
############################################################################

# Add the stdio C files to the build

set(CSRCS)

# The remaining sources files depend upon file descriptors
if(NOT "${CONFIG_NFILE_DESCRIPTORS}" STREQUAL "0")

	list(APPEND CSRCS
		lib_rawinstream.c
		lib_rawoutstream.c
		lib_rawsistream.c
		lib_rawsostream.c
		lib_remove.c
	)

	# And these depend upon both file descriptors and C streams
	if(NOT "${CONFIG_NFILE_STREAMS}" STREQUAL "0")
		list(APPEND CSRCS
			lib_clearerr.c
			lib_fclose.c
			lib_feof.c
			lib_ferror.c
			lib_fflush.c
			lib_fgetc.c
			lib_fgetpos.c
			lib_fgets.c
			lib_fopen.c
			lib_fprintf.c
			lib_fputc.c
			lib_fputs.c
			lib_fread.c
			lib_freopen.c
			lib_fseek.c
			lib_fsetpos.c
			lib_ftell.c
			lib_fwrite.c
			lib_gets.c
			lib_gets_s.c
			lib_libfflush.c
			lib_libfgets.c
			lib_libflushall.c
			lib_libfread.c
			lib_libfwrite.c
			lib_perror.c
			lib_puts.c
			lib_rdflush.c
			lib_stdinstream.c
			lib_stdoutstream.c
			lib_stdsistream.c
			lib_stdsostream.c
			lib_ungetc.c
			lib_vfprintf.c
			lib_vprintf.c
			lib_wrflush.c
		)
	endif()

	if("${CONFIG_FS_WRITABLE}" STREQUAL "y")
		list(APPEND CSRCS lib_tempnam.c lib_tmpnam.c)
	endif()

	if(NOT "${CONFIG_STDIO_DISABLE_BUFFERING}" STREQUAL "y")
		list(APPEND CSRCS lib_setbuf.c lib_setvbuf.c)
	endif()
endif()

# Other support that depends on specific, configured features.
if("${CONFIG_LIBC_FLOATINGPOINT}" STREQUAL "y")
	list(APPEND CSRCS lib_dtoa.c)
endif()

# Add the stdio directory to the build
# This first group of C files do not depend on having file descriptors or
# C streams.
list(APPEND CSRCS
	lib_asprintf.c
	lib_dprintf.c
	lib_fileno.c
	lib_libnoflush.c
	lib_libsnoflush.c
	lib_libsprintf.c
	lib_libvsprintf.c
	lib_lowoutstream.c
	lib_meminstream.c
	lib_memoutstream.c
	lib_memsistream.c
	lib_memsostream.c
	lib_nullinstream.c
	lib_nulloutstream.c
	lib_printf.c
	lib_snprintf.c
	lib_sprintf.c
	lib_sscanf.c
	lib_vasprintf.c
	lib_vdprintf.c
	lib_vsnprintf.c
	lib_vsprintf.c
	lib_zeroinstream.c
)
set_parent_srcs(${CSRCS})
