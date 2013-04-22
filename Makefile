.PHONY: all test vendor clean

all:
	cd build; cmake -DCMAKE_INSTALL_PREFIX=$(CURDIR) ..; make all install

test: all
	cd tests/build; cmake ..; make; ./tests

vendor:
	cd vendor; cmake .; make

clean:
	rm -f build/*.*
	rm -f build/Makefile
	rm -f -r build/CMake*
	rm -f lib/*.*
	rm -f tests/build/*.*
	rm -f tests/build/Makefile
	rm -f -r tests/build/CMake*
	rm -f vendor/CMakeCache.txt
	rm -f vendor/cmake_install.cmake
	rm -f vendor/Makefile
	rm -f -r vendor/CMakeFiles
	rm -f -r vendor/curl/include
	rm -f -r vendor/curl/lib
	rm -f -r vendor/curl/src
	rm -f -r vendor/curl/tmp
	rm -f -r vendor/gtest/include
	rm -f -r vendor/gtest/lib
	rm -f -r vendor/gtest/src
	rm -f -r vendor/gtest/tmp
	rm -f -r vendor/iconv/include
	rm -f -r vendor/iconv/lib
	rm -f -r vendor/iconv/src
	rm -f -r vendor/iconv/tmp
	rm -f -r vendor/yajl/include
	rm -f -r vendor/yajl/lib
	rm -f -r vendor/yajl/src
	rm -f -r vendor/yajl/tmp
