 cmake_minimum_required(VERSION 2.8.12)
 project(DCGP)

 add_definitions("-std=c++17")

 include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
 conan_basic_setup()

 add_executable(dcgp dcgp.cpp)
 target_link_libraries(dcgp ${CONAN_LIBS})
