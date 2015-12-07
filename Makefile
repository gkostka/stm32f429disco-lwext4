
BUILD_TYPE = Release
PROJECT_SETUP = "Unix Makefiles"

stm32f429disco:
	rm -R -f build_stm32f429disco
	mkdir build_stm32f429disco
	cd build_stm32f429disco && cmake -G$(PROJECT_SETUP) -DCMAKE_BUILD_TYPE=$(BUILD_TYPE) -DCMAKE_TOOLCHAIN_FILE=../lwext4/toolchain/cortex-m4.cmake ..
	
	
clean:
	rm -R -f build_*
	rm -R -f ext_images