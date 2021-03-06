################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_ADC.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xiicps_clock_generator.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xiicps_slow_led.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xspips_DAC.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/muon_buf_utils.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/shwr_buf_utils.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/test_periph.c \
/afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/trigger_test.c 

OBJS += \
./src/init_ADC.o \
./src/init_xiicps_clock_generator.o \
./src/init_xiicps_slow_led.o \
./src/init_xspips_DAC.o \
./src/muon_buf_utils.o \
./src/shwr_buf_utils.o \
./src/test_periph.o \
./src/trigger_test.o 

C_DEPS += \
./src/init_ADC.d \
./src/init_xiicps_clock_generator.d \
./src/init_xiicps_slow_led.d \
./src/init_xspips_DAC.d \
./src/muon_buf_utils.d \
./src/shwr_buf_utils.d \
./src/test_periph.d \
./src/trigger_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/init_ADC.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_ADC.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/init_xiicps_clock_generator.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xiicps_clock_generator.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/init_xiicps_slow_led.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xiicps_slow_led.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/init_xspips_DAC.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/init_xspips_DAC.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/muon_buf_utils.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/muon_buf_utils.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/shwr_buf_utils.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/shwr_buf_utils.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/test_periph.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/test_periph.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/trigger_test.o: /afs/auger.mtu.edu/common/scratch/dfnitz/git_clones/temp/uub-firmware/wp2/uub_proto2/src/test_periph/src/trigger_test.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test_periph_dfn_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


