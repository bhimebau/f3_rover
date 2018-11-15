# E321 Local targets

download: $(BUILD_DIR)/$(TARGET).bin                                            
	st-flash write $(BUILD_DIR)/$(TARGET).bin 0x8000000 > st-flash.log 2>&1    

etags:                                                                          
	find . -type f -iname "*.[ch]" | xargs etags --append         

gdb:
	cp gdbinit ./build/.gdbinit
	openocd -f board/stm32f3discovery.cfg 
