################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/pin_mux.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/pin_mux.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/pin_mux.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DMCUXPRESSO_SDK -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/source" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/utilities" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/drivers" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/device" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/startup" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/component/uart" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/component/lists" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/CMSIS" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/board" -I"/Users/tedd/dev/mcuxpresso/__hello/frdmmcxn947_gpio_led_output2/frdmmcxn947/driver_examples/gpio/led_output/cm33_core0" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/pin_mux.d ./board/pin_mux.o

.PHONY: clean-board

