cmake_minimum_required(VERSION 2.8)

project(PANDA Fortran)

set(CMAKE_Fortran_COMPILER      "gfortran.exe")
#set(CMAKE_Fortran_COMPILER      "mpiifort") 

#set(CMAKE_Fortran_FLAGS   "-O0 -fopenmp")
set(CMAKE_Fortran_FLAGS   "-O0 -fopenmp -fcheck=bounds -llapack")
#set(CMAKE_Fortran_FLAGS   "-O3 -ipo -xHOST -qopenmp")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR})

set(TARGET_NAME   "rabbitt")

set(MOD_LIB "module_lib")

set(SRC_DIR "./src")
add_subdirectory(${SRC_DIR})

