set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(triple aarch64-linux-gnu)

set(CMAKE_C_COMPILER /usr/bin/aarch64-linux-gnu-gcc-10)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER /usr/bin/aarch64-linux-gnu-g++-10)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE debug)
set(CMAKE_CXX_COMPILER_TARGET ${triple})
