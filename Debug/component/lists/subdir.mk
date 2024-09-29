################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/lists/fsl_component_generic_list.c 

C_DEPS += \
./component/lists/fsl_component_generic_list.d 

OBJS += \
./component/lists/fsl_component_generic_list.o 


# Each subdirectory must supply rules for building sources it contributes
component/lists/%.o: ../component/lists/%.c component/lists/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DMCUXPRESSO_SDK -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/source" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/utilities" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/drivers" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/device" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/startup" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/component/uart" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/component/lists" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/CMSIS" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/board" -I"/Users/tedd/dev/mcuxpresso/__hello/gpio_led_output_sample/frdmmcxn947/driver_examples/gpio/led_output/cm33_core0" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-lists

clean-component-2f-lists:
	-$(RM) ./component/lists/fsl_component_generic_list.d ./component/lists/fsl_component_generic_list.o

.PHONY: clean-component-2f-lists

