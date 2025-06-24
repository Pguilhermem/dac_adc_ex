################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-988233969: ../dac_adc.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1281/ccs/utils/sysconfig_1.21.0/sysconfig_cli.bat" --script "C:/Users/guilh/Documents/WSC2000/ex_sim_conv/dac_adc.syscfg" -o "syscfg" -s "C:/ti/c2000/C2000Ware_5_04_00_00/.metadata/sdk.json" -b "/boards/LAUNCHXL_F28379D" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-988233969 ../dac_adc.syscfg
syscfg/board.h: build-988233969
syscfg/board.cmd.genlibs: build-988233969
syscfg/board.opt: build-988233969
syscfg/board.json: build-988233969
syscfg/pinmux.csv: build-988233969
syscfg/adc.dot: build-988233969
syscfg/c2000ware_libraries.cmd.genlibs: build-988233969
syscfg/c2000ware_libraries.opt: build-988233969
syscfg/c2000ware_libraries.c: build-988233969
syscfg/c2000ware_libraries.h: build-988233969
syscfg/clocktree.h: build-988233969
syscfg: build-988233969

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -Ooff --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv" --include_path="C:/ti/c2000/C2000Ware_5_04_00_00" --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv/device" --include_path="C:/ti/c2000/C2000Ware_5_04_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=_LAUNCHXL_F28379D --define=DEBUG --define=CPU1 --define=RAM --c99 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv/CPU1_RAM/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -Ooff --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv" --include_path="C:/ti/c2000/C2000Ware_5_04_00_00" --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv/device" --include_path="C:/ti/c2000/C2000Ware_5_04_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1281/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=_LAUNCHXL_F28379D --define=DEBUG --define=CPU1 --define=RAM --c99 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/guilh/Documents/WSC2000/ex_sim_conv/CPU1_RAM/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


