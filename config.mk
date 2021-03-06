#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = .

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m4

# Target part
PART = sam4sd16b

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = kicon_badge_flash.elf
TARGET_SRAM = kicon_badge_sram.elf

# List of C source files.
CSRCS = \
       main.c \
       buttons.c \
       commands.c \
       io_capture.c \
       logic_analyzer.c \
       usb_handlers.c \
       lcd.c \
       led.c \
       scope.c \
       nyan.c \
       spi_master.c \
       gfx.c \
       i2c.c \
       io_conf.c \
       serial.c \
       menu.c \
       name.c \
       menu_struct.c \
       common/services/clock/sam4s/sysclk.c               \
       common/services/usb/class/cdc/device/udi_cdc.c     \
       common/services/usb/class/cdc/device/udi_cdc_desc.c \
       common/services/usb/udc/udc.c                      \
       common/services/delay/sam/cycle_counter.c          \
       sam/drivers/pdc/pdc.c                              \
       sam/drivers/pio/pio.c                              \
       sam/drivers/pmc/pmc.c                              \
       sam/drivers/pmc/sleep.c                            \
       sam/drivers/tc/tc.c                                \
       sam/drivers/twi/twi.c                              \
       sam/drivers/uart/uart.c                            \
       sam/drivers/udp/udp_device.c                       \
       sam/drivers/wdt/wdt.c                              \
       sam/drivers/spi/spi.c                              \
       sam/drivers/adc/adc.c                              \
       sam/utils/cmsis/sam4s/source/templates/gcc/startup_sam4s.c \
       sam/utils/cmsis/sam4s/source/templates/system_sam4s.c \
       sam/utils/syscalls/gcc/syscalls.c                  \

# List of assembler source files.
ASSRCS =

# List of include paths.
INC_PATH = \
       .                                          \
       common/services/clock                              \
       common/services/ioport                             \
       common/services/sleepmgr                           \
       common/services/usb                                \
       common/services/usb/class/cdc                      \
       common/services/usb/class/cdc/device               \
       common/services/usb/udc                            \
       common/utils                                       \
       sam/drivers/pdc                                    \
       sam/drivers/pio                                    \
       sam/drivers/pmc                                    \
       sam/drivers/tc                                     \
       sam/drivers/twi                                    \
       sam/drivers/uart                                   \
       sam/drivers/udp                                    \
       sam/drivers/wdt                                    \
       sam/drivers/spi                                    \
       sam/drivers/adc                                    \
       sam/utils                                          \
       sam/utils/cmsis/sam4s/include                      \
       sam/utils/cmsis/sam4s/source/templates             \
       sam/utils/header_files                             \
       sam/utils/preprocessor                             \
       thirdparty/CMSIS/Include                           \

# Additional search paths for libraries.
LIB_PATH =

# List of libraries to use during linking.
LIBS =

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam/utils/linker_scripts/sam4s/sam4s16/gcc/flash.ld
LINKER_SCRIPT_SRAM  = sam/utils/linker_scripts/sam4s/sam4s16/gcc/sram.ld

# Project type parameter: all, sram or flash
PROJECT_TYPE        = all

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS =

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O2

# Extra flags to use when archiving.
ARFLAGS =

# Extra flags to use when assembling.
ASFLAGS =

# Extra flags to use when compiling.
CFLAGS =

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM4=true                               \
       -D __SAM4S16B__                                    \
       -D printf=iprintf                                  \
       -D scanf=iscanf

# Extra flags to use when linking
LDFLAGS = \

# Pre- and post-build commands
PREBUILD_CMD =
POSTBUILD_CMD = make commands_def.py
