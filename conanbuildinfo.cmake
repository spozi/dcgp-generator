include(CMakeParseArguments)

macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS SUFFIX BUILD_TYPE)
    if(APPLE)
        if(CMAKE_BUILD_TYPE)
            set(_BTYPE ${CMAKE_BUILD_TYPE})
        elseif(NOT BUILD_TYPE STREQUAL "")
            set(_BTYPE ${BUILD_TYPE})
        endif()
        if(_BTYPE)
            if(${_BTYPE} MATCHES "Debug|_DEBUG")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "Release|_RELEASE")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "RelWithDebInfo|_RELWITHDEBINFO")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELWITHDEBINFO} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_RELWITHDEBINFO} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "MinSizeRel|_MINSIZEREL")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            endif()
        endif()
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${CONAN_FRAMEWORK_DIRS${SUFFIX}} CMAKE_FIND_ROOT_PATH_BOTH)
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${CONAN_FRAMEWORK_DIRS${SUFFIX}}")
            endif()
        endforeach()
    endif()
endmacro()


#################
###  DATAFRAME
#################
set(CONAN_DATAFRAME_ROOT "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895")
set(CONAN_INCLUDE_DIRS_DATAFRAME "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include")
set(CONAN_LIB_DIRS_DATAFRAME "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib")
set(CONAN_BIN_DIRS_DATAFRAME )
set(CONAN_RES_DIRS_DATAFRAME )
set(CONAN_SRC_DIRS_DATAFRAME )
set(CONAN_BUILD_DIRS_DATAFRAME "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/")
set(CONAN_FRAMEWORK_DIRS_DATAFRAME )
set(CONAN_LIBS_DATAFRAME DataFrame)
set(CONAN_PKG_LIBS_DATAFRAME DataFrame)
set(CONAN_SYSTEM_LIBS_DATAFRAME pthread dl rt)
set(CONAN_FRAMEWORKS_DATAFRAME )
set(CONAN_FRAMEWORKS_FOUND_DATAFRAME "")  # Will be filled later
set(CONAN_DEFINES_DATAFRAME )
set(CONAN_BUILD_MODULES_PATHS_DATAFRAME )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_DATAFRAME )

set(CONAN_C_FLAGS_DATAFRAME "")
set(CONAN_CXX_FLAGS_DATAFRAME "")
set(CONAN_SHARED_LINKER_FLAGS_DATAFRAME "")
set(CONAN_EXE_LINKER_FLAGS_DATAFRAME "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_DATAFRAME_LIST "")
set(CONAN_CXX_FLAGS_DATAFRAME_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_DATAFRAME_LIST "")
set(CONAN_EXE_LINKER_FLAGS_DATAFRAME_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_DATAFRAME "${CONAN_FRAMEWORKS_DATAFRAME}" "_DATAFRAME" "")
# Append to aggregated values variable
set(CONAN_LIBS_DATAFRAME ${CONAN_PKG_LIBS_DATAFRAME} ${CONAN_SYSTEM_LIBS_DATAFRAME} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME})


#################
###  TASKFLOW
#################
set(CONAN_TASKFLOW_ROOT "/home/syafiq/.conan/data/taskflow/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_TASKFLOW "/home/syafiq/.conan/data/taskflow/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_TASKFLOW )
set(CONAN_BIN_DIRS_TASKFLOW )
set(CONAN_RES_DIRS_TASKFLOW )
set(CONAN_SRC_DIRS_TASKFLOW )
set(CONAN_BUILD_DIRS_TASKFLOW "/home/syafiq/.conan/data/taskflow/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_TASKFLOW )
set(CONAN_LIBS_TASKFLOW )
set(CONAN_PKG_LIBS_TASKFLOW )
set(CONAN_SYSTEM_LIBS_TASKFLOW pthread)
set(CONAN_FRAMEWORKS_TASKFLOW )
set(CONAN_FRAMEWORKS_FOUND_TASKFLOW "")  # Will be filled later
set(CONAN_DEFINES_TASKFLOW )
set(CONAN_BUILD_MODULES_PATHS_TASKFLOW )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_TASKFLOW )

set(CONAN_C_FLAGS_TASKFLOW "")
set(CONAN_CXX_FLAGS_TASKFLOW "")
set(CONAN_SHARED_LINKER_FLAGS_TASKFLOW "")
set(CONAN_EXE_LINKER_FLAGS_TASKFLOW "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_TASKFLOW_LIST "")
set(CONAN_CXX_FLAGS_TASKFLOW_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_TASKFLOW_LIST "")
set(CONAN_EXE_LINKER_FLAGS_TASKFLOW_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_TASKFLOW "${CONAN_FRAMEWORKS_TASKFLOW}" "_TASKFLOW" "")
# Append to aggregated values variable
set(CONAN_LIBS_TASKFLOW ${CONAN_PKG_LIBS_TASKFLOW} ${CONAN_SYSTEM_LIBS_TASKFLOW} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW})


#################
###  FMT
#################
set(CONAN_FMT_ROOT "/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317")
set(CONAN_INCLUDE_DIRS_FMT "/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/include")
set(CONAN_LIB_DIRS_FMT "/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/lib")
set(CONAN_BIN_DIRS_FMT )
set(CONAN_RES_DIRS_FMT )
set(CONAN_SRC_DIRS_FMT )
set(CONAN_BUILD_DIRS_FMT "/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/")
set(CONAN_FRAMEWORK_DIRS_FMT )
set(CONAN_LIBS_FMT fmt)
set(CONAN_PKG_LIBS_FMT fmt)
set(CONAN_SYSTEM_LIBS_FMT )
set(CONAN_FRAMEWORKS_FMT )
set(CONAN_FRAMEWORKS_FOUND_FMT "")  # Will be filled later
set(CONAN_DEFINES_FMT )
set(CONAN_BUILD_MODULES_PATHS_FMT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FMT )

set(CONAN_C_FLAGS_FMT "")
set(CONAN_CXX_FLAGS_FMT "")
set(CONAN_SHARED_LINKER_FLAGS_FMT "")
set(CONAN_EXE_LINKER_FLAGS_FMT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FMT_LIST "")
set(CONAN_CXX_FLAGS_FMT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FMT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FMT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FMT "${CONAN_FRAMEWORKS_FMT}" "_FMT" "")
# Append to aggregated values variable
set(CONAN_LIBS_FMT ${CONAN_PKG_LIBS_FMT} ${CONAN_SYSTEM_LIBS_FMT} ${CONAN_FRAMEWORKS_FOUND_FMT})


#################
###  CERES-SOLVER
#################
set(CONAN_CERES-SOLVER_ROOT "/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3")
set(CONAN_INCLUDE_DIRS_CERES-SOLVER "/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include/ceres"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include/ceres/internal/miniglog")
set(CONAN_LIB_DIRS_CERES-SOLVER "/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/lib")
set(CONAN_BIN_DIRS_CERES-SOLVER )
set(CONAN_RES_DIRS_CERES-SOLVER )
set(CONAN_SRC_DIRS_CERES-SOLVER )
set(CONAN_BUILD_DIRS_CERES-SOLVER "/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/")
set(CONAN_FRAMEWORK_DIRS_CERES-SOLVER )
set(CONAN_LIBS_CERES-SOLVER ceres)
set(CONAN_PKG_LIBS_CERES-SOLVER ceres)
set(CONAN_SYSTEM_LIBS_CERES-SOLVER pthread stdc++)
set(CONAN_FRAMEWORKS_CERES-SOLVER )
set(CONAN_FRAMEWORKS_FOUND_CERES-SOLVER "")  # Will be filled later
set(CONAN_DEFINES_CERES-SOLVER )
set(CONAN_BUILD_MODULES_PATHS_CERES-SOLVER )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CERES-SOLVER )

set(CONAN_C_FLAGS_CERES-SOLVER "")
set(CONAN_CXX_FLAGS_CERES-SOLVER "")
set(CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER "")
set(CONAN_EXE_LINKER_FLAGS_CERES-SOLVER "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CERES-SOLVER_LIST "")
set(CONAN_CXX_FLAGS_CERES-SOLVER_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CERES-SOLVER "${CONAN_FRAMEWORKS_CERES-SOLVER}" "_CERES-SOLVER" "")
# Append to aggregated values variable
set(CONAN_LIBS_CERES-SOLVER ${CONAN_PKG_LIBS_CERES-SOLVER} ${CONAN_SYSTEM_LIBS_CERES-SOLVER} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER})


#################
###  CXXOPTS
#################
set(CONAN_CXXOPTS_ROOT "/home/syafiq/.conan/data/cxxopts/3.0.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_CXXOPTS "/home/syafiq/.conan/data/cxxopts/3.0.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_CXXOPTS )
set(CONAN_BIN_DIRS_CXXOPTS )
set(CONAN_RES_DIRS_CXXOPTS )
set(CONAN_SRC_DIRS_CXXOPTS )
set(CONAN_BUILD_DIRS_CXXOPTS "/home/syafiq/.conan/data/cxxopts/3.0.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_CXXOPTS )
set(CONAN_LIBS_CXXOPTS )
set(CONAN_PKG_LIBS_CXXOPTS )
set(CONAN_SYSTEM_LIBS_CXXOPTS )
set(CONAN_FRAMEWORKS_CXXOPTS )
set(CONAN_FRAMEWORKS_FOUND_CXXOPTS "")  # Will be filled later
set(CONAN_DEFINES_CXXOPTS )
set(CONAN_BUILD_MODULES_PATHS_CXXOPTS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CXXOPTS )

set(CONAN_C_FLAGS_CXXOPTS "")
set(CONAN_CXX_FLAGS_CXXOPTS "")
set(CONAN_SHARED_LINKER_FLAGS_CXXOPTS "")
set(CONAN_EXE_LINKER_FLAGS_CXXOPTS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CXXOPTS_LIST "")
set(CONAN_CXX_FLAGS_CXXOPTS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CXXOPTS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CXXOPTS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CXXOPTS "${CONAN_FRAMEWORKS_CXXOPTS}" "_CXXOPTS" "")
# Append to aggregated values variable
set(CONAN_LIBS_CXXOPTS ${CONAN_PKG_LIBS_CXXOPTS} ${CONAN_SYSTEM_LIBS_CXXOPTS} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS})


#################
###  DOCTEST
#################
set(CONAN_DOCTEST_ROOT "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_DOCTEST "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_DOCTEST "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib")
set(CONAN_BIN_DIRS_DOCTEST )
set(CONAN_RES_DIRS_DOCTEST )
set(CONAN_SRC_DIRS_DOCTEST )
set(CONAN_BUILD_DIRS_DOCTEST "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake")
set(CONAN_FRAMEWORK_DIRS_DOCTEST )
set(CONAN_LIBS_DOCTEST )
set(CONAN_PKG_LIBS_DOCTEST )
set(CONAN_SYSTEM_LIBS_DOCTEST )
set(CONAN_FRAMEWORKS_DOCTEST )
set(CONAN_FRAMEWORKS_FOUND_DOCTEST "")  # Will be filled later
set(CONAN_DEFINES_DOCTEST )
set(CONAN_BUILD_MODULES_PATHS_DOCTEST "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/doctest.cmake")
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_DOCTEST )

set(CONAN_C_FLAGS_DOCTEST "")
set(CONAN_CXX_FLAGS_DOCTEST "")
set(CONAN_SHARED_LINKER_FLAGS_DOCTEST "")
set(CONAN_EXE_LINKER_FLAGS_DOCTEST "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_DOCTEST_LIST "")
set(CONAN_CXX_FLAGS_DOCTEST_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_DOCTEST_LIST "")
set(CONAN_EXE_LINKER_FLAGS_DOCTEST_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_DOCTEST "${CONAN_FRAMEWORKS_DOCTEST}" "_DOCTEST" "")
# Append to aggregated values variable
set(CONAN_LIBS_DOCTEST ${CONAN_PKG_LIBS_DOCTEST} ${CONAN_SYSTEM_LIBS_DOCTEST} ${CONAN_FRAMEWORKS_FOUND_DOCTEST})


#################
###  PYBIND11
#################
set(CONAN_PYBIND11_ROOT "/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_PYBIND11 "/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/pybind11"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_PYBIND11 "/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib")
set(CONAN_BIN_DIRS_PYBIND11 )
set(CONAN_RES_DIRS_PYBIND11 )
set(CONAN_SRC_DIRS_PYBIND11 )
set(CONAN_BUILD_DIRS_PYBIND11 "/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/pybind11")
set(CONAN_FRAMEWORK_DIRS_PYBIND11 )
set(CONAN_LIBS_PYBIND11 )
set(CONAN_PKG_LIBS_PYBIND11 )
set(CONAN_SYSTEM_LIBS_PYBIND11 )
set(CONAN_FRAMEWORKS_PYBIND11 )
set(CONAN_FRAMEWORKS_FOUND_PYBIND11 "")  # Will be filled later
set(CONAN_DEFINES_PYBIND11 )
set(CONAN_BUILD_MODULES_PATHS_PYBIND11 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PYBIND11 )

set(CONAN_C_FLAGS_PYBIND11 "")
set(CONAN_CXX_FLAGS_PYBIND11 "")
set(CONAN_SHARED_LINKER_FLAGS_PYBIND11 "")
set(CONAN_EXE_LINKER_FLAGS_PYBIND11 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PYBIND11_LIST "")
set(CONAN_CXX_FLAGS_PYBIND11_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PYBIND11_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PYBIND11_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PYBIND11 "${CONAN_FRAMEWORKS_PYBIND11}" "_PYBIND11" "")
# Append to aggregated values variable
set(CONAN_LIBS_PYBIND11 ${CONAN_PKG_LIBS_PYBIND11} ${CONAN_SYSTEM_LIBS_PYBIND11} ${CONAN_FRAMEWORKS_FOUND_PYBIND11})


#################
###  CPP-SORT
#################
set(CONAN_CPP-SORT_ROOT "/home/syafiq/.conan/data/cpp-sort/1.12.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_CPP-SORT "/home/syafiq/.conan/data/cpp-sort/1.12.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_CPP-SORT )
set(CONAN_BIN_DIRS_CPP-SORT )
set(CONAN_RES_DIRS_CPP-SORT )
set(CONAN_SRC_DIRS_CPP-SORT )
set(CONAN_BUILD_DIRS_CPP-SORT "/home/syafiq/.conan/data/cpp-sort/1.12.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_CPP-SORT )
set(CONAN_LIBS_CPP-SORT )
set(CONAN_PKG_LIBS_CPP-SORT )
set(CONAN_SYSTEM_LIBS_CPP-SORT )
set(CONAN_FRAMEWORKS_CPP-SORT )
set(CONAN_FRAMEWORKS_FOUND_CPP-SORT "")  # Will be filled later
set(CONAN_DEFINES_CPP-SORT )
set(CONAN_BUILD_MODULES_PATHS_CPP-SORT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CPP-SORT )

set(CONAN_C_FLAGS_CPP-SORT "")
set(CONAN_CXX_FLAGS_CPP-SORT "")
set(CONAN_SHARED_LINKER_FLAGS_CPP-SORT "")
set(CONAN_EXE_LINKER_FLAGS_CPP-SORT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CPP-SORT_LIST "")
set(CONAN_CXX_FLAGS_CPP-SORT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_CPP-SORT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CPP-SORT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CPP-SORT "${CONAN_FRAMEWORKS_CPP-SORT}" "_CPP-SORT" "")
# Append to aggregated values variable
set(CONAN_LIBS_CPP-SORT ${CONAN_PKG_LIBS_CPP-SORT} ${CONAN_SYSTEM_LIBS_CPP-SORT} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT})


#################
###  FAST_FLOAT
#################
set(CONAN_FAST_FLOAT_ROOT "/home/syafiq/.conan/data/fast_float/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_FAST_FLOAT "/home/syafiq/.conan/data/fast_float/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_FAST_FLOAT )
set(CONAN_BIN_DIRS_FAST_FLOAT )
set(CONAN_RES_DIRS_FAST_FLOAT )
set(CONAN_SRC_DIRS_FAST_FLOAT )
set(CONAN_BUILD_DIRS_FAST_FLOAT "/home/syafiq/.conan/data/fast_float/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_FAST_FLOAT )
set(CONAN_LIBS_FAST_FLOAT )
set(CONAN_PKG_LIBS_FAST_FLOAT )
set(CONAN_SYSTEM_LIBS_FAST_FLOAT )
set(CONAN_FRAMEWORKS_FAST_FLOAT )
set(CONAN_FRAMEWORKS_FOUND_FAST_FLOAT "")  # Will be filled later
set(CONAN_DEFINES_FAST_FLOAT )
set(CONAN_BUILD_MODULES_PATHS_FAST_FLOAT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FAST_FLOAT )

set(CONAN_C_FLAGS_FAST_FLOAT "")
set(CONAN_CXX_FLAGS_FAST_FLOAT "")
set(CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT "")
set(CONAN_EXE_LINKER_FLAGS_FAST_FLOAT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FAST_FLOAT_LIST "")
set(CONAN_CXX_FLAGS_FAST_FLOAT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FAST_FLOAT "${CONAN_FRAMEWORKS_FAST_FLOAT}" "_FAST_FLOAT" "")
# Append to aggregated values variable
set(CONAN_LIBS_FAST_FLOAT ${CONAN_PKG_LIBS_FAST_FLOAT} ${CONAN_SYSTEM_LIBS_FAST_FLOAT} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT})


#################
###  ROBIN-HOOD-HASHING
#################
set(CONAN_ROBIN-HOOD-HASHING_ROOT "/home/syafiq/.conan/data/robin-hood-hashing/3.11.4/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING "/home/syafiq/.conan/data/robin-hood-hashing/3.11.4/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_ROBIN-HOOD-HASHING )
set(CONAN_BIN_DIRS_ROBIN-HOOD-HASHING )
set(CONAN_RES_DIRS_ROBIN-HOOD-HASHING )
set(CONAN_SRC_DIRS_ROBIN-HOOD-HASHING )
set(CONAN_BUILD_DIRS_ROBIN-HOOD-HASHING "/home/syafiq/.conan/data/robin-hood-hashing/3.11.4/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_ROBIN-HOOD-HASHING )
set(CONAN_LIBS_ROBIN-HOOD-HASHING )
set(CONAN_PKG_LIBS_ROBIN-HOOD-HASHING )
set(CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING )
set(CONAN_FRAMEWORKS_ROBIN-HOOD-HASHING )
set(CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING "")  # Will be filled later
set(CONAN_DEFINES_ROBIN-HOOD-HASHING )
set(CONAN_BUILD_MODULES_PATHS_ROBIN-HOOD-HASHING )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING )

set(CONAN_C_FLAGS_ROBIN-HOOD-HASHING "")
set(CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING "")
set(CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING "")
set(CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ROBIN-HOOD-HASHING_LIST "")
set(CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING "${CONAN_FRAMEWORKS_ROBIN-HOOD-HASHING}" "_ROBIN-HOOD-HASHING" "")
# Append to aggregated values variable
set(CONAN_LIBS_ROBIN-HOOD-HASHING ${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING} ${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING})


#################
###  NANOBENCH
#################
set(CONAN_NANOBENCH_ROOT "/home/syafiq/.conan/data/nanobench/4.3.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_NANOBENCH "/home/syafiq/.conan/data/nanobench/4.3.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_NANOBENCH )
set(CONAN_BIN_DIRS_NANOBENCH )
set(CONAN_RES_DIRS_NANOBENCH )
set(CONAN_SRC_DIRS_NANOBENCH )
set(CONAN_BUILD_DIRS_NANOBENCH "/home/syafiq/.conan/data/nanobench/4.3.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_NANOBENCH )
set(CONAN_LIBS_NANOBENCH )
set(CONAN_PKG_LIBS_NANOBENCH )
set(CONAN_SYSTEM_LIBS_NANOBENCH )
set(CONAN_FRAMEWORKS_NANOBENCH )
set(CONAN_FRAMEWORKS_FOUND_NANOBENCH "")  # Will be filled later
set(CONAN_DEFINES_NANOBENCH )
set(CONAN_BUILD_MODULES_PATHS_NANOBENCH )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_NANOBENCH )

set(CONAN_C_FLAGS_NANOBENCH "")
set(CONAN_CXX_FLAGS_NANOBENCH "")
set(CONAN_SHARED_LINKER_FLAGS_NANOBENCH "")
set(CONAN_EXE_LINKER_FLAGS_NANOBENCH "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_NANOBENCH_LIST "")
set(CONAN_CXX_FLAGS_NANOBENCH_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_NANOBENCH_LIST "")
set(CONAN_EXE_LINKER_FLAGS_NANOBENCH_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_NANOBENCH "${CONAN_FRAMEWORKS_NANOBENCH}" "_NANOBENCH" "")
# Append to aggregated values variable
set(CONAN_LIBS_NANOBENCH ${CONAN_PKG_LIBS_NANOBENCH} ${CONAN_SYSTEM_LIBS_NANOBENCH} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH})


#################
###  RAPIDCSV
#################
set(CONAN_RAPIDCSV_ROOT "/home/syafiq/.conan/data/rapidcsv/8.53/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_RAPIDCSV "/home/syafiq/.conan/data/rapidcsv/8.53/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_RAPIDCSV )
set(CONAN_BIN_DIRS_RAPIDCSV )
set(CONAN_RES_DIRS_RAPIDCSV )
set(CONAN_SRC_DIRS_RAPIDCSV )
set(CONAN_BUILD_DIRS_RAPIDCSV "/home/syafiq/.conan/data/rapidcsv/8.53/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_RAPIDCSV )
set(CONAN_LIBS_RAPIDCSV )
set(CONAN_PKG_LIBS_RAPIDCSV )
set(CONAN_SYSTEM_LIBS_RAPIDCSV )
set(CONAN_FRAMEWORKS_RAPIDCSV )
set(CONAN_FRAMEWORKS_FOUND_RAPIDCSV "")  # Will be filled later
set(CONAN_DEFINES_RAPIDCSV )
set(CONAN_BUILD_MODULES_PATHS_RAPIDCSV )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_RAPIDCSV )

set(CONAN_C_FLAGS_RAPIDCSV "")
set(CONAN_CXX_FLAGS_RAPIDCSV "")
set(CONAN_SHARED_LINKER_FLAGS_RAPIDCSV "")
set(CONAN_EXE_LINKER_FLAGS_RAPIDCSV "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_RAPIDCSV_LIST "")
set(CONAN_CXX_FLAGS_RAPIDCSV_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_LIST "")
set(CONAN_EXE_LINKER_FLAGS_RAPIDCSV_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_RAPIDCSV "${CONAN_FRAMEWORKS_RAPIDCSV}" "_RAPIDCSV" "")
# Append to aggregated values variable
set(CONAN_LIBS_RAPIDCSV ${CONAN_PKG_LIBS_RAPIDCSV} ${CONAN_SYSTEM_LIBS_RAPIDCSV} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV})


#################
###  SPAN-LITE
#################
set(CONAN_SPAN-LITE_ROOT "/home/syafiq/.conan/data/span-lite/0.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_SPAN-LITE "/home/syafiq/.conan/data/span-lite/0.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_SPAN-LITE )
set(CONAN_BIN_DIRS_SPAN-LITE )
set(CONAN_RES_DIRS_SPAN-LITE )
set(CONAN_SRC_DIRS_SPAN-LITE )
set(CONAN_BUILD_DIRS_SPAN-LITE "/home/syafiq/.conan/data/span-lite/0.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_SPAN-LITE )
set(CONAN_LIBS_SPAN-LITE )
set(CONAN_PKG_LIBS_SPAN-LITE )
set(CONAN_SYSTEM_LIBS_SPAN-LITE )
set(CONAN_FRAMEWORKS_SPAN-LITE )
set(CONAN_FRAMEWORKS_FOUND_SPAN-LITE "")  # Will be filled later
set(CONAN_DEFINES_SPAN-LITE )
set(CONAN_BUILD_MODULES_PATHS_SPAN-LITE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_SPAN-LITE )

set(CONAN_C_FLAGS_SPAN-LITE "")
set(CONAN_CXX_FLAGS_SPAN-LITE "")
set(CONAN_SHARED_LINKER_FLAGS_SPAN-LITE "")
set(CONAN_EXE_LINKER_FLAGS_SPAN-LITE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_SPAN-LITE_LIST "")
set(CONAN_CXX_FLAGS_SPAN-LITE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_SPAN-LITE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_SPAN-LITE "${CONAN_FRAMEWORKS_SPAN-LITE}" "_SPAN-LITE" "")
# Append to aggregated values variable
set(CONAN_LIBS_SPAN-LITE ${CONAN_PKG_LIBS_SPAN-LITE} ${CONAN_SYSTEM_LIBS_SPAN-LITE} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE})


#################
###  VECTORCLASS
#################
set(CONAN_VECTORCLASS_ROOT "/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895")
set(CONAN_INCLUDE_DIRS_VECTORCLASS "/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include")
set(CONAN_LIB_DIRS_VECTORCLASS "/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib")
set(CONAN_BIN_DIRS_VECTORCLASS )
set(CONAN_RES_DIRS_VECTORCLASS )
set(CONAN_SRC_DIRS_VECTORCLASS )
set(CONAN_BUILD_DIRS_VECTORCLASS "/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/")
set(CONAN_FRAMEWORK_DIRS_VECTORCLASS )
set(CONAN_LIBS_VECTORCLASS vectorclass)
set(CONAN_PKG_LIBS_VECTORCLASS vectorclass)
set(CONAN_SYSTEM_LIBS_VECTORCLASS )
set(CONAN_FRAMEWORKS_VECTORCLASS )
set(CONAN_FRAMEWORKS_FOUND_VECTORCLASS "")  # Will be filled later
set(CONAN_DEFINES_VECTORCLASS )
set(CONAN_BUILD_MODULES_PATHS_VECTORCLASS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_VECTORCLASS )

set(CONAN_C_FLAGS_VECTORCLASS "")
set(CONAN_CXX_FLAGS_VECTORCLASS "")
set(CONAN_SHARED_LINKER_FLAGS_VECTORCLASS "")
set(CONAN_EXE_LINKER_FLAGS_VECTORCLASS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_VECTORCLASS_LIST "")
set(CONAN_CXX_FLAGS_VECTORCLASS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_VECTORCLASS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_VECTORCLASS "${CONAN_FRAMEWORKS_VECTORCLASS}" "_VECTORCLASS" "")
# Append to aggregated values variable
set(CONAN_LIBS_VECTORCLASS ${CONAN_PKG_LIBS_VECTORCLASS} ${CONAN_SYSTEM_LIBS_VECTORCLASS} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS})


#################
###  XXHASH
#################
set(CONAN_XXHASH_ROOT "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c")
set(CONAN_INCLUDE_DIRS_XXHASH "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/include")
set(CONAN_LIB_DIRS_XXHASH "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/lib")
set(CONAN_BIN_DIRS_XXHASH "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/bin")
set(CONAN_RES_DIRS_XXHASH )
set(CONAN_SRC_DIRS_XXHASH )
set(CONAN_BUILD_DIRS_XXHASH "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/")
set(CONAN_FRAMEWORK_DIRS_XXHASH )
set(CONAN_LIBS_XXHASH xxhash)
set(CONAN_PKG_LIBS_XXHASH xxhash)
set(CONAN_SYSTEM_LIBS_XXHASH )
set(CONAN_FRAMEWORKS_XXHASH )
set(CONAN_FRAMEWORKS_FOUND_XXHASH "")  # Will be filled later
set(CONAN_DEFINES_XXHASH )
set(CONAN_BUILD_MODULES_PATHS_XXHASH )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_XXHASH )

set(CONAN_C_FLAGS_XXHASH "")
set(CONAN_CXX_FLAGS_XXHASH "")
set(CONAN_SHARED_LINKER_FLAGS_XXHASH "")
set(CONAN_EXE_LINKER_FLAGS_XXHASH "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_XXHASH_LIST "")
set(CONAN_CXX_FLAGS_XXHASH_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_XXHASH_LIST "")
set(CONAN_EXE_LINKER_FLAGS_XXHASH_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_XXHASH "${CONAN_FRAMEWORKS_XXHASH}" "_XXHASH" "")
# Append to aggregated values variable
set(CONAN_LIBS_XXHASH ${CONAN_PKG_LIBS_XXHASH} ${CONAN_SYSTEM_LIBS_XXHASH} ${CONAN_FRAMEWORKS_FOUND_XXHASH})


#################
###  OPERON
#################
set(CONAN_OPERON_ROOT "/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895")
set(CONAN_INCLUDE_DIRS_OPERON "/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include")
set(CONAN_LIB_DIRS_OPERON "/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib")
set(CONAN_BIN_DIRS_OPERON )
set(CONAN_RES_DIRS_OPERON )
set(CONAN_SRC_DIRS_OPERON )
set(CONAN_BUILD_DIRS_OPERON "/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/")
set(CONAN_FRAMEWORK_DIRS_OPERON )
set(CONAN_LIBS_OPERON hello)
set(CONAN_PKG_LIBS_OPERON hello)
set(CONAN_SYSTEM_LIBS_OPERON )
set(CONAN_FRAMEWORKS_OPERON )
set(CONAN_FRAMEWORKS_FOUND_OPERON "")  # Will be filled later
set(CONAN_DEFINES_OPERON )
set(CONAN_BUILD_MODULES_PATHS_OPERON )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPERON )

set(CONAN_C_FLAGS_OPERON "")
set(CONAN_CXX_FLAGS_OPERON "")
set(CONAN_SHARED_LINKER_FLAGS_OPERON "")
set(CONAN_EXE_LINKER_FLAGS_OPERON "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPERON_LIST "")
set(CONAN_CXX_FLAGS_OPERON_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPERON_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPERON_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPERON "${CONAN_FRAMEWORKS_OPERON}" "_OPERON" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPERON ${CONAN_PKG_LIBS_OPERON} ${CONAN_SYSTEM_LIBS_OPERON} ${CONAN_FRAMEWORKS_FOUND_OPERON})


#################
###  DCOL
#################
set(CONAN_DCOL_ROOT "/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895")
set(CONAN_INCLUDE_DIRS_DCOL "/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include")
set(CONAN_LIB_DIRS_DCOL "/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib")
set(CONAN_BIN_DIRS_DCOL )
set(CONAN_RES_DIRS_DCOL )
set(CONAN_SRC_DIRS_DCOL )
set(CONAN_BUILD_DIRS_DCOL "/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/")
set(CONAN_FRAMEWORK_DIRS_DCOL )
set(CONAN_LIBS_DCOL hello)
set(CONAN_PKG_LIBS_DCOL hello)
set(CONAN_SYSTEM_LIBS_DCOL )
set(CONAN_FRAMEWORKS_DCOL )
set(CONAN_FRAMEWORKS_FOUND_DCOL "")  # Will be filled later
set(CONAN_DEFINES_DCOL )
set(CONAN_BUILD_MODULES_PATHS_DCOL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_DCOL )

set(CONAN_C_FLAGS_DCOL "")
set(CONAN_CXX_FLAGS_DCOL "")
set(CONAN_SHARED_LINKER_FLAGS_DCOL "")
set(CONAN_EXE_LINKER_FLAGS_DCOL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_DCOL_LIST "")
set(CONAN_CXX_FLAGS_DCOL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_DCOL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_DCOL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_DCOL "${CONAN_FRAMEWORKS_DCOL}" "_DCOL" "")
# Append to aggregated values variable
set(CONAN_LIBS_DCOL ${CONAN_PKG_LIBS_DCOL} ${CONAN_SYSTEM_LIBS_DCOL} ${CONAN_FRAMEWORKS_FOUND_DCOL})


#################
###  EIGEN
#################
set(CONAN_EIGEN_ROOT "/home/syafiq/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_EIGEN "/home/syafiq/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/eigen3")
set(CONAN_LIB_DIRS_EIGEN )
set(CONAN_BIN_DIRS_EIGEN )
set(CONAN_RES_DIRS_EIGEN )
set(CONAN_SRC_DIRS_EIGEN )
set(CONAN_BUILD_DIRS_EIGEN "/home/syafiq/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_EIGEN )
set(CONAN_LIBS_EIGEN )
set(CONAN_PKG_LIBS_EIGEN )
set(CONAN_SYSTEM_LIBS_EIGEN m)
set(CONAN_FRAMEWORKS_EIGEN )
set(CONAN_FRAMEWORKS_FOUND_EIGEN "")  # Will be filled later
set(CONAN_DEFINES_EIGEN )
set(CONAN_BUILD_MODULES_PATHS_EIGEN )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_EIGEN )

set(CONAN_C_FLAGS_EIGEN "")
set(CONAN_CXX_FLAGS_EIGEN "")
set(CONAN_SHARED_LINKER_FLAGS_EIGEN "")
set(CONAN_EXE_LINKER_FLAGS_EIGEN "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_EIGEN_LIST "")
set(CONAN_CXX_FLAGS_EIGEN_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_EIGEN_LIST "")
set(CONAN_EXE_LINKER_FLAGS_EIGEN_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_EIGEN "${CONAN_FRAMEWORKS_EIGEN}" "_EIGEN" "")
# Append to aggregated values variable
set(CONAN_LIBS_EIGEN ${CONAN_PKG_LIBS_EIGEN} ${CONAN_SYSTEM_LIBS_EIGEN} ${CONAN_FRAMEWORKS_FOUND_EIGEN})


### Definition of global aggregated variables ###

set(CONAN_PACKAGE_NAME None)
set(CONAN_PACKAGE_VERSION None)

set(CONAN_SETTINGS_ARCH "x86_64")
set(CONAN_SETTINGS_ARCH_BUILD "x86_64")
set(CONAN_SETTINGS_BUILD_TYPE "Release")
set(CONAN_SETTINGS_COMPILER "gcc")
set(CONAN_SETTINGS_COMPILER_LIBCXX "libstdc++")
set(CONAN_SETTINGS_COMPILER_VERSION "9")
set(CONAN_SETTINGS_OS "Linux")
set(CONAN_SETTINGS_OS_BUILD "Linux")

set(CONAN_DEPENDENCIES dataframe taskflow fmt ceres-solver cxxopts doctest pybind11 cpp-sort fast_float robin-hood-hashing nanobench rapidcsv span-lite vectorclass xxhash operon dcol eigen)
# Storing original command line args (CMake helper) flags
set(CONAN_CMD_CXX_FLAGS ${CONAN_CXX_FLAGS})

set(CONAN_CMD_SHARED_LINKER_FLAGS ${CONAN_SHARED_LINKER_FLAGS})
set(CONAN_CMD_C_FLAGS ${CONAN_C_FLAGS})
# Defining accumulated conan variables for all deps

set(CONAN_INCLUDE_DIRS "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include"
			"/home/syafiq/.conan/data/taskflow/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/include"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include/ceres"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/include/ceres/internal/miniglog"
			"/home/syafiq/.conan/data/cxxopts/3.0.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/pybind11"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/cpp-sort/1.12.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/fast_float/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/robin-hood-hashing/3.11.4/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/nanobench/4.3.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/rapidcsv/8.53/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/span-lite/0.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include"
			"/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/include"
			"/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include"
			"/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/include"
			"/home/syafiq/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/eigen3" ${CONAN_INCLUDE_DIRS})
set(CONAN_LIB_DIRS "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib"
			"/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/lib"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/lib"
			"/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib"
			"/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib"
			"/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/lib"
			"/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib"
			"/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/lib" ${CONAN_LIB_DIRS})
set(CONAN_BIN_DIRS "/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/bin" ${CONAN_BIN_DIRS})
set(CONAN_RES_DIRS  ${CONAN_RES_DIRS})
set(CONAN_FRAMEWORK_DIRS  ${CONAN_FRAMEWORK_DIRS})
set(CONAN_LIBS DataFrame fmt ceres vectorclass xxhash hello ${CONAN_LIBS})
set(CONAN_PKG_LIBS DataFrame fmt ceres vectorclass xxhash hello ${CONAN_PKG_LIBS})
set(CONAN_SYSTEM_LIBS dl rt pthread stdc++ m ${CONAN_SYSTEM_LIBS})
set(CONAN_FRAMEWORKS  ${CONAN_FRAMEWORKS})
set(CONAN_FRAMEWORKS_FOUND "")  # Will be filled later
set(CONAN_DEFINES  ${CONAN_DEFINES})
set(CONAN_BUILD_MODULES_PATHS "/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/doctest.cmake" ${CONAN_BUILD_MODULES_PATHS})
set(CONAN_CMAKE_MODULE_PATH "/home/syafiq/.conan/data/dataframe/1.19.0/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/"
			"/home/syafiq/.conan/data/taskflow/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/fmt/8.0.1/_/_/package/30a9781670e6fb2f17b8355b17a15cf916045317/"
			"/home/syafiq/.conan/data/ceres-solver/2.0.0/_/_/package/5a26de78aba1482bb4998b4dfae77be20b4a3ec3/"
			"/home/syafiq/.conan/data/cxxopts/3.0.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/doctest/2.4.6/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/pybind11/2.8.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/pybind11"
			"/home/syafiq/.conan/data/cpp-sort/1.12.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/fast_float/3.2.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/robin-hood-hashing/3.11.4/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/nanobench/4.3.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/rapidcsv/8.53/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/span-lite/0.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/syafiq/.conan/data/vectorclass/2.01.03/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/"
			"/home/syafiq/.conan/data/xxhash/0.8.0/_/_/package/3105381e661d17c03da1b510aa0204c9f199d31c/"
			"/home/syafiq/.conan/data/operon/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/"
			"/home/syafiq/.conan/data/dcol/0.1/_/_/package/50a5030bbbb13ae56bc4be41915ecd48549cb895/"
			"/home/syafiq/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/" ${CONAN_CMAKE_MODULE_PATH})

set(CONAN_CXX_FLAGS " ${CONAN_CXX_FLAGS}")
set(CONAN_SHARED_LINKER_FLAGS " ${CONAN_SHARED_LINKER_FLAGS}")
set(CONAN_EXE_LINKER_FLAGS " ${CONAN_EXE_LINKER_FLAGS}")
set(CONAN_C_FLAGS " ${CONAN_C_FLAGS}")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND "${CONAN_FRAMEWORKS}" "" "")
# Append to aggregated values variable: Use CONAN_LIBS instead of CONAN_PKG_LIBS to include user appended vars
set(CONAN_LIBS ${CONAN_LIBS} ${CONAN_SYSTEM_LIBS} ${CONAN_FRAMEWORKS_FOUND})


###  Definition of macros and functions ###

macro(conan_define_targets)
    if(${CMAKE_VERSION} VERSION_LESS "3.1.2")
        message(FATAL_ERROR "TARGETS not supported by your CMake version!")
    endif()  # CMAKE > 3.x
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CONAN_CMD_CXX_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CONAN_CMD_C_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${CONAN_CMD_SHARED_LINKER_FLAGS}")


    set(_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES "${CONAN_SYSTEM_LIBS_DATAFRAME} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATAFRAME}" "${CONAN_LIB_DIRS_DATAFRAME}"
                                  CONAN_PACKAGE_TARGETS_DATAFRAME "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES}"
                                  "" dataframe)
    set(_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_DATAFRAME_DEBUG} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATAFRAME_DEBUG}" "${CONAN_LIB_DIRS_DATAFRAME_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_DATAFRAME_DEBUG "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_DEBUG}"
                                  "debug" dataframe)
    set(_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_DATAFRAME_RELEASE} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATAFRAME_RELEASE}" "${CONAN_LIB_DIRS_DATAFRAME_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_DATAFRAME_RELEASE "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELEASE}"
                                  "release" dataframe)
    set(_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_DATAFRAME_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATAFRAME_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_DATAFRAME_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_DATAFRAME_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" dataframe)
    set(_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_DATAFRAME_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_DATAFRAME_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DATAFRAME_MINSIZEREL}" "${CONAN_LIB_DIRS_DATAFRAME_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_DATAFRAME_MINSIZEREL "${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" dataframe)

    add_library(CONAN_PKG::dataframe INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::dataframe PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_DATAFRAME} ${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATAFRAME_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_DATAFRAME_RELEASE} ${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATAFRAME_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_DATAFRAME_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATAFRAME_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_DATAFRAME_MINSIZEREL} ${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATAFRAME_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_DATAFRAME_DEBUG} ${_CONAN_PKG_LIBS_DATAFRAME_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DATAFRAME_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DATAFRAME_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::dataframe PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_DATAFRAME}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_DATAFRAME_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_DATAFRAME_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_DATAFRAME_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DATAFRAME_DEBUG}>)
    set_property(TARGET CONAN_PKG::dataframe PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_DATAFRAME}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_DATAFRAME_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_DATAFRAME_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_DATAFRAME_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_DATAFRAME_DEBUG}>)
    set_property(TARGET CONAN_PKG::dataframe PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_DATAFRAME_LIST} ${CONAN_CXX_FLAGS_DATAFRAME_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_DATAFRAME_RELEASE_LIST} ${CONAN_CXX_FLAGS_DATAFRAME_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_DATAFRAME_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_DATAFRAME_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_DATAFRAME_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_DATAFRAME_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_DATAFRAME_DEBUG_LIST}  ${CONAN_CXX_FLAGS_DATAFRAME_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES "${CONAN_SYSTEM_LIBS_TASKFLOW} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_TASKFLOW}" "${CONAN_LIB_DIRS_TASKFLOW}"
                                  CONAN_PACKAGE_TARGETS_TASKFLOW "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES}"
                                  "" taskflow)
    set(_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_TASKFLOW_DEBUG} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_TASKFLOW_DEBUG}" "${CONAN_LIB_DIRS_TASKFLOW_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_TASKFLOW_DEBUG "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_DEBUG}"
                                  "debug" taskflow)
    set(_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_TASKFLOW_RELEASE} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_TASKFLOW_RELEASE}" "${CONAN_LIB_DIRS_TASKFLOW_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_TASKFLOW_RELEASE "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELEASE}"
                                  "release" taskflow)
    set(_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_TASKFLOW_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_TASKFLOW_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_TASKFLOW_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_TASKFLOW_RELWITHDEBINFO "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" taskflow)
    set(_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_TASKFLOW_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_TASKFLOW_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_TASKFLOW_MINSIZEREL}" "${CONAN_LIB_DIRS_TASKFLOW_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_TASKFLOW_MINSIZEREL "${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" taskflow)

    add_library(CONAN_PKG::taskflow INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::taskflow PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_TASKFLOW} ${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_TASKFLOW_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_TASKFLOW_RELEASE} ${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_TASKFLOW_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_TASKFLOW_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_TASKFLOW_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_TASKFLOW_MINSIZEREL} ${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_TASKFLOW_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_TASKFLOW_DEBUG} ${_CONAN_PKG_LIBS_TASKFLOW_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_TASKFLOW_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_TASKFLOW_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::taskflow PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_TASKFLOW}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_TASKFLOW_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_TASKFLOW_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_TASKFLOW_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_TASKFLOW_DEBUG}>)
    set_property(TARGET CONAN_PKG::taskflow PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_TASKFLOW}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_TASKFLOW_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_TASKFLOW_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_TASKFLOW_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_TASKFLOW_DEBUG}>)
    set_property(TARGET CONAN_PKG::taskflow PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_TASKFLOW_LIST} ${CONAN_CXX_FLAGS_TASKFLOW_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_TASKFLOW_RELEASE_LIST} ${CONAN_CXX_FLAGS_TASKFLOW_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_TASKFLOW_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_TASKFLOW_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_TASKFLOW_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_TASKFLOW_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_TASKFLOW_DEBUG_LIST}  ${CONAN_CXX_FLAGS_TASKFLOW_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FMT} ${CONAN_FRAMEWORKS_FOUND_FMT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT}" "${CONAN_LIB_DIRS_FMT}"
                                  CONAN_PACKAGE_TARGETS_FMT "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}"
                                  "" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FMT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FMT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_DEBUG}" "${CONAN_LIB_DIRS_FMT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FMT_DEBUG "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}"
                                  "debug" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FMT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FMT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_RELEASE}" "${CONAN_LIB_DIRS_FMT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FMT_RELEASE "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}"
                                  "release" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FMT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FMT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FMT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FMT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FMT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FMT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_MINSIZEREL}" "${CONAN_LIB_DIRS_FMT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FMT_MINSIZEREL "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" fmt)

    add_library(CONAN_PKG::fmt INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FMT} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FMT_RELEASE} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FMT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FMT_MINSIZEREL} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FMT_DEBUG} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FMT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FMT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FMT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FMT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FMT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FMT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FMT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FMT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FMT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FMT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FMT_LIST} ${CONAN_CXX_FLAGS_FMT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FMT_RELEASE_LIST} ${CONAN_CXX_FLAGS_FMT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FMT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FMT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FMT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FMT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CERES-SOLVER} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER} CONAN_PKG::eigen")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CERES-SOLVER}" "${CONAN_LIB_DIRS_CERES-SOLVER}"
                                  CONAN_PACKAGE_TARGETS_CERES-SOLVER "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES}"
                                  "" ceres-solver)
    set(_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CERES-SOLVER_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER_DEBUG} CONAN_PKG::eigen")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CERES-SOLVER_DEBUG}" "${CONAN_LIB_DIRS_CERES-SOLVER_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CERES-SOLVER_DEBUG "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_DEBUG}"
                                  "debug" ceres-solver)
    set(_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CERES-SOLVER_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER_RELEASE} CONAN_PKG::eigen")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CERES-SOLVER_RELEASE}" "${CONAN_LIB_DIRS_CERES-SOLVER_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CERES-SOLVER_RELEASE "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELEASE}"
                                  "release" ceres-solver)
    set(_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CERES-SOLVER_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER_RELWITHDEBINFO} CONAN_PKG::eigen")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CERES-SOLVER_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CERES-SOLVER_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CERES-SOLVER_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" ceres-solver)
    set(_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CERES-SOLVER_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CERES-SOLVER_MINSIZEREL} CONAN_PKG::eigen")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CERES-SOLVER_MINSIZEREL}" "${CONAN_LIB_DIRS_CERES-SOLVER_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CERES-SOLVER_MINSIZEREL "${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" ceres-solver)

    add_library(CONAN_PKG::ceres-solver INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::ceres-solver PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CERES-SOLVER} ${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CERES-SOLVER_RELEASE} ${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CERES-SOLVER_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CERES-SOLVER_MINSIZEREL} ${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CERES-SOLVER_DEBUG} ${_CONAN_PKG_LIBS_CERES-SOLVER_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CERES-SOLVER_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CERES-SOLVER_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::ceres-solver PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CERES-SOLVER}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CERES-SOLVER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CERES-SOLVER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CERES-SOLVER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CERES-SOLVER_DEBUG}>)
    set_property(TARGET CONAN_PKG::ceres-solver PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CERES-SOLVER}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CERES-SOLVER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CERES-SOLVER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CERES-SOLVER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CERES-SOLVER_DEBUG}>)
    set_property(TARGET CONAN_PKG::ceres-solver PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CERES-SOLVER_LIST} ${CONAN_CXX_FLAGS_CERES-SOLVER_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CERES-SOLVER_RELEASE_LIST} ${CONAN_CXX_FLAGS_CERES-SOLVER_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CERES-SOLVER_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CERES-SOLVER_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CERES-SOLVER_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CERES-SOLVER_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CERES-SOLVER_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CERES-SOLVER_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CXXOPTS} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CXXOPTS}" "${CONAN_LIB_DIRS_CXXOPTS}"
                                  CONAN_PACKAGE_TARGETS_CXXOPTS "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES}"
                                  "" cxxopts)
    set(_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CXXOPTS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CXXOPTS_DEBUG}" "${CONAN_LIB_DIRS_CXXOPTS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CXXOPTS_DEBUG "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_DEBUG}"
                                  "debug" cxxopts)
    set(_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CXXOPTS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CXXOPTS_RELEASE}" "${CONAN_LIB_DIRS_CXXOPTS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CXXOPTS_RELEASE "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELEASE}"
                                  "release" cxxopts)
    set(_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CXXOPTS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CXXOPTS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CXXOPTS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CXXOPTS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" cxxopts)
    set(_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CXXOPTS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CXXOPTS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CXXOPTS_MINSIZEREL}" "${CONAN_LIB_DIRS_CXXOPTS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CXXOPTS_MINSIZEREL "${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" cxxopts)

    add_library(CONAN_PKG::cxxopts INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::cxxopts PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CXXOPTS} ${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CXXOPTS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CXXOPTS_RELEASE} ${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CXXOPTS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CXXOPTS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CXXOPTS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CXXOPTS_MINSIZEREL} ${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CXXOPTS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CXXOPTS_DEBUG} ${_CONAN_PKG_LIBS_CXXOPTS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CXXOPTS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CXXOPTS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::cxxopts PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CXXOPTS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CXXOPTS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CXXOPTS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CXXOPTS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CXXOPTS_DEBUG}>)
    set_property(TARGET CONAN_PKG::cxxopts PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CXXOPTS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CXXOPTS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CXXOPTS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CXXOPTS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CXXOPTS_DEBUG}>)
    set_property(TARGET CONAN_PKG::cxxopts PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CXXOPTS_LIST} ${CONAN_CXX_FLAGS_CXXOPTS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CXXOPTS_RELEASE_LIST} ${CONAN_CXX_FLAGS_CXXOPTS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CXXOPTS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CXXOPTS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CXXOPTS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CXXOPTS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CXXOPTS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CXXOPTS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES "${CONAN_SYSTEM_LIBS_DOCTEST} ${CONAN_FRAMEWORKS_FOUND_DOCTEST} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DOCTEST}" "${CONAN_LIB_DIRS_DOCTEST}"
                                  CONAN_PACKAGE_TARGETS_DOCTEST "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES}"
                                  "" doctest)
    set(_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_DOCTEST_DEBUG} ${CONAN_FRAMEWORKS_FOUND_DOCTEST_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DOCTEST_DEBUG}" "${CONAN_LIB_DIRS_DOCTEST_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_DOCTEST_DEBUG "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_DEBUG}"
                                  "debug" doctest)
    set(_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_DOCTEST_RELEASE} ${CONAN_FRAMEWORKS_FOUND_DOCTEST_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DOCTEST_RELEASE}" "${CONAN_LIB_DIRS_DOCTEST_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_DOCTEST_RELEASE "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELEASE}"
                                  "release" doctest)
    set(_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_DOCTEST_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_DOCTEST_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DOCTEST_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_DOCTEST_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_DOCTEST_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" doctest)
    set(_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_DOCTEST_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_DOCTEST_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DOCTEST_MINSIZEREL}" "${CONAN_LIB_DIRS_DOCTEST_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_DOCTEST_MINSIZEREL "${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" doctest)

    add_library(CONAN_PKG::doctest INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::doctest PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_DOCTEST} ${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DOCTEST_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_DOCTEST_RELEASE} ${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DOCTEST_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_DOCTEST_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DOCTEST_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_DOCTEST_MINSIZEREL} ${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DOCTEST_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_DOCTEST_DEBUG} ${_CONAN_PKG_LIBS_DOCTEST_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DOCTEST_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DOCTEST_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::doctest PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_DOCTEST}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_DOCTEST_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_DOCTEST_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_DOCTEST_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DOCTEST_DEBUG}>)
    set_property(TARGET CONAN_PKG::doctest PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_DOCTEST}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_DOCTEST_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_DOCTEST_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_DOCTEST_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_DOCTEST_DEBUG}>)
    set_property(TARGET CONAN_PKG::doctest PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_DOCTEST_LIST} ${CONAN_CXX_FLAGS_DOCTEST_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_DOCTEST_RELEASE_LIST} ${CONAN_CXX_FLAGS_DOCTEST_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_DOCTEST_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_DOCTEST_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_DOCTEST_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_DOCTEST_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_DOCTEST_DEBUG_LIST}  ${CONAN_CXX_FLAGS_DOCTEST_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PYBIND11} ${CONAN_FRAMEWORKS_FOUND_PYBIND11} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PYBIND11}" "${CONAN_LIB_DIRS_PYBIND11}"
                                  CONAN_PACKAGE_TARGETS_PYBIND11 "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES}"
                                  "" pybind11)
    set(_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PYBIND11_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PYBIND11_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PYBIND11_DEBUG}" "${CONAN_LIB_DIRS_PYBIND11_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PYBIND11_DEBUG "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_DEBUG}"
                                  "debug" pybind11)
    set(_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PYBIND11_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PYBIND11_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PYBIND11_RELEASE}" "${CONAN_LIB_DIRS_PYBIND11_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PYBIND11_RELEASE "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELEASE}"
                                  "release" pybind11)
    set(_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PYBIND11_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PYBIND11_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PYBIND11_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PYBIND11_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PYBIND11_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pybind11)
    set(_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PYBIND11_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PYBIND11_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PYBIND11_MINSIZEREL}" "${CONAN_LIB_DIRS_PYBIND11_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PYBIND11_MINSIZEREL "${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pybind11)

    add_library(CONAN_PKG::pybind11 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pybind11 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PYBIND11} ${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PYBIND11_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PYBIND11_RELEASE} ${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PYBIND11_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PYBIND11_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PYBIND11_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PYBIND11_MINSIZEREL} ${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PYBIND11_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PYBIND11_DEBUG} ${_CONAN_PKG_LIBS_PYBIND11_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PYBIND11_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PYBIND11_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pybind11 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PYBIND11}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PYBIND11_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PYBIND11_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PYBIND11_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PYBIND11_DEBUG}>)
    set_property(TARGET CONAN_PKG::pybind11 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PYBIND11}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PYBIND11_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PYBIND11_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PYBIND11_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PYBIND11_DEBUG}>)
    set_property(TARGET CONAN_PKG::pybind11 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PYBIND11_LIST} ${CONAN_CXX_FLAGS_PYBIND11_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PYBIND11_RELEASE_LIST} ${CONAN_CXX_FLAGS_PYBIND11_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PYBIND11_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PYBIND11_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PYBIND11_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PYBIND11_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PYBIND11_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PYBIND11_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CPP-SORT} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CPP-SORT}" "${CONAN_LIB_DIRS_CPP-SORT}"
                                  CONAN_PACKAGE_TARGETS_CPP-SORT "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES}"
                                  "" cpp-sort)
    set(_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CPP-SORT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CPP-SORT_DEBUG}" "${CONAN_LIB_DIRS_CPP-SORT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CPP-SORT_DEBUG "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_DEBUG}"
                                  "debug" cpp-sort)
    set(_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CPP-SORT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CPP-SORT_RELEASE}" "${CONAN_LIB_DIRS_CPP-SORT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CPP-SORT_RELEASE "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELEASE}"
                                  "release" cpp-sort)
    set(_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CPP-SORT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CPP-SORT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CPP-SORT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CPP-SORT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" cpp-sort)
    set(_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CPP-SORT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CPP-SORT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CPP-SORT_MINSIZEREL}" "${CONAN_LIB_DIRS_CPP-SORT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CPP-SORT_MINSIZEREL "${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" cpp-sort)

    add_library(CONAN_PKG::cpp-sort INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::cpp-sort PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CPP-SORT} ${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CPP-SORT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CPP-SORT_RELEASE} ${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CPP-SORT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CPP-SORT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CPP-SORT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CPP-SORT_MINSIZEREL} ${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CPP-SORT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CPP-SORT_DEBUG} ${_CONAN_PKG_LIBS_CPP-SORT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CPP-SORT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CPP-SORT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::cpp-sort PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CPP-SORT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CPP-SORT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CPP-SORT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CPP-SORT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CPP-SORT_DEBUG}>)
    set_property(TARGET CONAN_PKG::cpp-sort PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CPP-SORT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CPP-SORT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CPP-SORT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CPP-SORT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CPP-SORT_DEBUG}>)
    set_property(TARGET CONAN_PKG::cpp-sort PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CPP-SORT_LIST} ${CONAN_CXX_FLAGS_CPP-SORT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CPP-SORT_RELEASE_LIST} ${CONAN_CXX_FLAGS_CPP-SORT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CPP-SORT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CPP-SORT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CPP-SORT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CPP-SORT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CPP-SORT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CPP-SORT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FAST_FLOAT} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FAST_FLOAT}" "${CONAN_LIB_DIRS_FAST_FLOAT}"
                                  CONAN_PACKAGE_TARGETS_FAST_FLOAT "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES}"
                                  "" fast_float)
    set(_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FAST_FLOAT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FAST_FLOAT_DEBUG}" "${CONAN_LIB_DIRS_FAST_FLOAT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FAST_FLOAT_DEBUG "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_DEBUG}"
                                  "debug" fast_float)
    set(_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FAST_FLOAT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FAST_FLOAT_RELEASE}" "${CONAN_LIB_DIRS_FAST_FLOAT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FAST_FLOAT_RELEASE "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELEASE}"
                                  "release" fast_float)
    set(_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FAST_FLOAT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FAST_FLOAT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FAST_FLOAT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FAST_FLOAT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" fast_float)
    set(_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FAST_FLOAT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FAST_FLOAT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FAST_FLOAT_MINSIZEREL}" "${CONAN_LIB_DIRS_FAST_FLOAT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FAST_FLOAT_MINSIZEREL "${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" fast_float)

    add_library(CONAN_PKG::fast_float INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::fast_float PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FAST_FLOAT} ${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FAST_FLOAT_RELEASE} ${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FAST_FLOAT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FAST_FLOAT_MINSIZEREL} ${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FAST_FLOAT_DEBUG} ${_CONAN_PKG_LIBS_FAST_FLOAT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FAST_FLOAT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FAST_FLOAT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::fast_float PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FAST_FLOAT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FAST_FLOAT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FAST_FLOAT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FAST_FLOAT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FAST_FLOAT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fast_float PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FAST_FLOAT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FAST_FLOAT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FAST_FLOAT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FAST_FLOAT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FAST_FLOAT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fast_float PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FAST_FLOAT_LIST} ${CONAN_CXX_FLAGS_FAST_FLOAT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FAST_FLOAT_RELEASE_LIST} ${CONAN_CXX_FLAGS_FAST_FLOAT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FAST_FLOAT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FAST_FLOAT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FAST_FLOAT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FAST_FLOAT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FAST_FLOAT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FAST_FLOAT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING}" "${CONAN_LIB_DIRS_ROBIN-HOOD-HASHING}"
                                  CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES}"
                                  "" robin-hood-hashing)
    set(_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEBUG}" "${CONAN_LIB_DIRS_ROBIN-HOOD-HASHING_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_DEBUG "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_DEBUG}"
                                  "debug" robin-hood-hashing)
    set(_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_RELEASE}" "${CONAN_LIB_DIRS_ROBIN-HOOD-HASHING_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_RELEASE "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELEASE}"
                                  "release" robin-hood-hashing)
    set(_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ROBIN-HOOD-HASHING_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" robin-hood-hashing)
    set(_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ROBIN-HOOD-HASHING_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ROBIN-HOOD-HASHING_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_MINSIZEREL}" "${CONAN_LIB_DIRS_ROBIN-HOOD-HASHING_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_MINSIZEREL "${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" robin-hood-hashing)

    add_library(CONAN_PKG::robin-hood-hashing INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::robin-hood-hashing PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING} ${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_RELEASE} ${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_MINSIZEREL} ${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ROBIN-HOOD-HASHING_DEBUG} ${_CONAN_PKG_LIBS_ROBIN-HOOD-HASHING_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ROBIN-HOOD-HASHING_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ROBIN-HOOD-HASHING_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::robin-hood-hashing PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ROBIN-HOOD-HASHING_DEBUG}>)
    set_property(TARGET CONAN_PKG::robin-hood-hashing PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ROBIN-HOOD-HASHING_DEBUG}>)
    set_property(TARGET CONAN_PKG::robin-hood-hashing PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ROBIN-HOOD-HASHING_LIST} ${CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ROBIN-HOOD-HASHING_RELEASE_LIST} ${CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ROBIN-HOOD-HASHING_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ROBIN-HOOD-HASHING_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ROBIN-HOOD-HASHING_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ROBIN-HOOD-HASHING_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES "${CONAN_SYSTEM_LIBS_NANOBENCH} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NANOBENCH}" "${CONAN_LIB_DIRS_NANOBENCH}"
                                  CONAN_PACKAGE_TARGETS_NANOBENCH "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES}"
                                  "" nanobench)
    set(_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_NANOBENCH_DEBUG} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NANOBENCH_DEBUG}" "${CONAN_LIB_DIRS_NANOBENCH_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_NANOBENCH_DEBUG "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_DEBUG}"
                                  "debug" nanobench)
    set(_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_NANOBENCH_RELEASE} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NANOBENCH_RELEASE}" "${CONAN_LIB_DIRS_NANOBENCH_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_NANOBENCH_RELEASE "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELEASE}"
                                  "release" nanobench)
    set(_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_NANOBENCH_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NANOBENCH_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_NANOBENCH_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_NANOBENCH_RELWITHDEBINFO "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" nanobench)
    set(_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_NANOBENCH_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_NANOBENCH_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NANOBENCH_MINSIZEREL}" "${CONAN_LIB_DIRS_NANOBENCH_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_NANOBENCH_MINSIZEREL "${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" nanobench)

    add_library(CONAN_PKG::nanobench INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::nanobench PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_NANOBENCH} ${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NANOBENCH_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_NANOBENCH_RELEASE} ${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NANOBENCH_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_NANOBENCH_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NANOBENCH_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_NANOBENCH_MINSIZEREL} ${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NANOBENCH_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_NANOBENCH_DEBUG} ${_CONAN_PKG_LIBS_NANOBENCH_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NANOBENCH_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NANOBENCH_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::nanobench PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_NANOBENCH}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_NANOBENCH_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_NANOBENCH_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_NANOBENCH_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_NANOBENCH_DEBUG}>)
    set_property(TARGET CONAN_PKG::nanobench PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_NANOBENCH}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_NANOBENCH_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_NANOBENCH_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_NANOBENCH_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_NANOBENCH_DEBUG}>)
    set_property(TARGET CONAN_PKG::nanobench PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_NANOBENCH_LIST} ${CONAN_CXX_FLAGS_NANOBENCH_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_NANOBENCH_RELEASE_LIST} ${CONAN_CXX_FLAGS_NANOBENCH_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_NANOBENCH_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_NANOBENCH_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_NANOBENCH_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_NANOBENCH_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_NANOBENCH_DEBUG_LIST}  ${CONAN_CXX_FLAGS_NANOBENCH_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES "${CONAN_SYSTEM_LIBS_RAPIDCSV} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RAPIDCSV}" "${CONAN_LIB_DIRS_RAPIDCSV}"
                                  CONAN_PACKAGE_TARGETS_RAPIDCSV "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES}"
                                  "" rapidcsv)
    set(_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_RAPIDCSV_DEBUG} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RAPIDCSV_DEBUG}" "${CONAN_LIB_DIRS_RAPIDCSV_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_RAPIDCSV_DEBUG "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_DEBUG}"
                                  "debug" rapidcsv)
    set(_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_RAPIDCSV_RELEASE} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RAPIDCSV_RELEASE}" "${CONAN_LIB_DIRS_RAPIDCSV_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_RAPIDCSV_RELEASE "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELEASE}"
                                  "release" rapidcsv)
    set(_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_RAPIDCSV_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RAPIDCSV_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RAPIDCSV_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_RAPIDCSV_RELWITHDEBINFO "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" rapidcsv)
    set(_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_RAPIDCSV_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_RAPIDCSV_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_RAPIDCSV_MINSIZEREL}" "${CONAN_LIB_DIRS_RAPIDCSV_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_RAPIDCSV_MINSIZEREL "${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" rapidcsv)

    add_library(CONAN_PKG::rapidcsv INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::rapidcsv PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_RAPIDCSV} ${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RAPIDCSV_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_RAPIDCSV_RELEASE} ${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RAPIDCSV_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_RAPIDCSV_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RAPIDCSV_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_RAPIDCSV_MINSIZEREL} ${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RAPIDCSV_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_RAPIDCSV_DEBUG} ${_CONAN_PKG_LIBS_RAPIDCSV_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_RAPIDCSV_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_RAPIDCSV_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::rapidcsv PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_RAPIDCSV}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RAPIDCSV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RAPIDCSV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_RAPIDCSV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_RAPIDCSV_DEBUG}>)
    set_property(TARGET CONAN_PKG::rapidcsv PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_RAPIDCSV}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_RAPIDCSV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_RAPIDCSV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_RAPIDCSV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_RAPIDCSV_DEBUG}>)
    set_property(TARGET CONAN_PKG::rapidcsv PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_RAPIDCSV_LIST} ${CONAN_CXX_FLAGS_RAPIDCSV_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_RAPIDCSV_RELEASE_LIST} ${CONAN_CXX_FLAGS_RAPIDCSV_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_RAPIDCSV_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_RAPIDCSV_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_RAPIDCSV_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_RAPIDCSV_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_RAPIDCSV_DEBUG_LIST}  ${CONAN_CXX_FLAGS_RAPIDCSV_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_SPAN-LITE} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPAN-LITE}" "${CONAN_LIB_DIRS_SPAN-LITE}"
                                  CONAN_PACKAGE_TARGETS_SPAN-LITE "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES}"
                                  "" span-lite)
    set(_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_SPAN-LITE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPAN-LITE_DEBUG}" "${CONAN_LIB_DIRS_SPAN-LITE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_SPAN-LITE_DEBUG "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_DEBUG}"
                                  "debug" span-lite)
    set(_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_SPAN-LITE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPAN-LITE_RELEASE}" "${CONAN_LIB_DIRS_SPAN-LITE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_SPAN-LITE_RELEASE "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELEASE}"
                                  "release" span-lite)
    set(_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_SPAN-LITE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPAN-LITE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_SPAN-LITE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_SPAN-LITE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" span-lite)
    set(_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_SPAN-LITE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_SPAN-LITE_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPAN-LITE_MINSIZEREL}" "${CONAN_LIB_DIRS_SPAN-LITE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_SPAN-LITE_MINSIZEREL "${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" span-lite)

    add_library(CONAN_PKG::span-lite INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::span-lite PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_SPAN-LITE} ${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPAN-LITE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_SPAN-LITE_RELEASE} ${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPAN-LITE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_SPAN-LITE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPAN-LITE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_SPAN-LITE_MINSIZEREL} ${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPAN-LITE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_SPAN-LITE_DEBUG} ${_CONAN_PKG_LIBS_SPAN-LITE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPAN-LITE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPAN-LITE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::span-lite PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_SPAN-LITE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_SPAN-LITE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_SPAN-LITE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_SPAN-LITE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_SPAN-LITE_DEBUG}>)
    set_property(TARGET CONAN_PKG::span-lite PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_SPAN-LITE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_SPAN-LITE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_SPAN-LITE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_SPAN-LITE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_SPAN-LITE_DEBUG}>)
    set_property(TARGET CONAN_PKG::span-lite PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_SPAN-LITE_LIST} ${CONAN_CXX_FLAGS_SPAN-LITE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_SPAN-LITE_RELEASE_LIST} ${CONAN_CXX_FLAGS_SPAN-LITE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_SPAN-LITE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_SPAN-LITE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_SPAN-LITE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_SPAN-LITE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_SPAN-LITE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_SPAN-LITE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_VECTORCLASS} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VECTORCLASS}" "${CONAN_LIB_DIRS_VECTORCLASS}"
                                  CONAN_PACKAGE_TARGETS_VECTORCLASS "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES}"
                                  "" vectorclass)
    set(_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_VECTORCLASS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VECTORCLASS_DEBUG}" "${CONAN_LIB_DIRS_VECTORCLASS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_VECTORCLASS_DEBUG "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_DEBUG}"
                                  "debug" vectorclass)
    set(_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_VECTORCLASS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VECTORCLASS_RELEASE}" "${CONAN_LIB_DIRS_VECTORCLASS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_VECTORCLASS_RELEASE "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELEASE}"
                                  "release" vectorclass)
    set(_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_VECTORCLASS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VECTORCLASS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_VECTORCLASS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_VECTORCLASS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" vectorclass)
    set(_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_VECTORCLASS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_VECTORCLASS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VECTORCLASS_MINSIZEREL}" "${CONAN_LIB_DIRS_VECTORCLASS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_VECTORCLASS_MINSIZEREL "${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" vectorclass)

    add_library(CONAN_PKG::vectorclass INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::vectorclass PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_VECTORCLASS} ${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VECTORCLASS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_VECTORCLASS_RELEASE} ${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VECTORCLASS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_VECTORCLASS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VECTORCLASS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_VECTORCLASS_MINSIZEREL} ${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VECTORCLASS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_VECTORCLASS_DEBUG} ${_CONAN_PKG_LIBS_VECTORCLASS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VECTORCLASS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VECTORCLASS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::vectorclass PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_VECTORCLASS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_VECTORCLASS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_VECTORCLASS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_VECTORCLASS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_VECTORCLASS_DEBUG}>)
    set_property(TARGET CONAN_PKG::vectorclass PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_VECTORCLASS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_VECTORCLASS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_VECTORCLASS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_VECTORCLASS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_VECTORCLASS_DEBUG}>)
    set_property(TARGET CONAN_PKG::vectorclass PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_VECTORCLASS_LIST} ${CONAN_CXX_FLAGS_VECTORCLASS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_VECTORCLASS_RELEASE_LIST} ${CONAN_CXX_FLAGS_VECTORCLASS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_VECTORCLASS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_VECTORCLASS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_VECTORCLASS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_VECTORCLASS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_VECTORCLASS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_VECTORCLASS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES "${CONAN_SYSTEM_LIBS_XXHASH} ${CONAN_FRAMEWORKS_FOUND_XXHASH} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XXHASH_DEPENDENCIES "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XXHASH}" "${CONAN_LIB_DIRS_XXHASH}"
                                  CONAN_PACKAGE_TARGETS_XXHASH "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES}"
                                  "" xxhash)
    set(_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_XXHASH_DEBUG} ${CONAN_FRAMEWORKS_FOUND_XXHASH_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XXHASH_DEBUG}" "${CONAN_LIB_DIRS_XXHASH_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_XXHASH_DEBUG "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_DEBUG}"
                                  "debug" xxhash)
    set(_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_XXHASH_RELEASE} ${CONAN_FRAMEWORKS_FOUND_XXHASH_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XXHASH_RELEASE}" "${CONAN_LIB_DIRS_XXHASH_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_XXHASH_RELEASE "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELEASE}"
                                  "release" xxhash)
    set(_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_XXHASH_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_XXHASH_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XXHASH_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_XXHASH_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_XXHASH_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" xxhash)
    set(_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_XXHASH_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_XXHASH_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XXHASH_MINSIZEREL}" "${CONAN_LIB_DIRS_XXHASH_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_XXHASH_MINSIZEREL "${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" xxhash)

    add_library(CONAN_PKG::xxhash INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::xxhash PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_XXHASH} ${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XXHASH_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_XXHASH_RELEASE} ${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XXHASH_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_XXHASH_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XXHASH_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_XXHASH_MINSIZEREL} ${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XXHASH_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_XXHASH_DEBUG} ${_CONAN_PKG_LIBS_XXHASH_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XXHASH_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XXHASH_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::xxhash PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_XXHASH}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_XXHASH_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_XXHASH_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_XXHASH_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_XXHASH_DEBUG}>)
    set_property(TARGET CONAN_PKG::xxhash PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_XXHASH}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_XXHASH_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_XXHASH_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_XXHASH_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_XXHASH_DEBUG}>)
    set_property(TARGET CONAN_PKG::xxhash PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_XXHASH_LIST} ${CONAN_CXX_FLAGS_XXHASH_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_XXHASH_RELEASE_LIST} ${CONAN_CXX_FLAGS_XXHASH_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_XXHASH_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_XXHASH_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_XXHASH_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_XXHASH_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_XXHASH_DEBUG_LIST}  ${CONAN_CXX_FLAGS_XXHASH_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPERON_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPERON} ${CONAN_FRAMEWORKS_FOUND_OPERON} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPERON_DEPENDENCIES "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPERON}" "${CONAN_LIB_DIRS_OPERON}"
                                  CONAN_PACKAGE_TARGETS_OPERON "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES}"
                                  "" operon)
    set(_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPERON_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPERON_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPERON_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPERON_DEBUG}" "${CONAN_LIB_DIRS_OPERON_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPERON_DEBUG "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_DEBUG}"
                                  "debug" operon)
    set(_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPERON_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPERON_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPERON_RELEASE}" "${CONAN_LIB_DIRS_OPERON_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPERON_RELEASE "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELEASE}"
                                  "release" operon)
    set(_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPERON_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPERON_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPERON_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPERON_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPERON_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" operon)
    set(_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPERON_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPERON_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPERON_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPERON_MINSIZEREL}" "${CONAN_LIB_DIRS_OPERON_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPERON_MINSIZEREL "${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" operon)

    add_library(CONAN_PKG::operon INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::operon PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPERON} ${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPERON_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPERON_RELEASE} ${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPERON_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPERON_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPERON_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPERON_MINSIZEREL} ${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPERON_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPERON_DEBUG} ${_CONAN_PKG_LIBS_OPERON_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPERON_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPERON_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::operon PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPERON}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPERON_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPERON_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPERON_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPERON_DEBUG}>)
    set_property(TARGET CONAN_PKG::operon PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPERON}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPERON_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPERON_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPERON_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPERON_DEBUG}>)
    set_property(TARGET CONAN_PKG::operon PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPERON_LIST} ${CONAN_CXX_FLAGS_OPERON_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPERON_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPERON_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPERON_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPERON_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPERON_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPERON_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPERON_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPERON_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_DCOL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_DCOL} ${CONAN_FRAMEWORKS_FOUND_DCOL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DCOL_DEPENDENCIES "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DCOL}" "${CONAN_LIB_DIRS_DCOL}"
                                  CONAN_PACKAGE_TARGETS_DCOL "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES}"
                                  "" dcol)
    set(_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_DCOL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_DCOL_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DCOL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DCOL_DEBUG}" "${CONAN_LIB_DIRS_DCOL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_DCOL_DEBUG "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_DEBUG}"
                                  "debug" dcol)
    set(_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_DCOL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_DCOL_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DCOL_RELEASE}" "${CONAN_LIB_DIRS_DCOL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_DCOL_RELEASE "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELEASE}"
                                  "release" dcol)
    set(_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_DCOL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_DCOL_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DCOL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_DCOL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_DCOL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" dcol)
    set(_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_DCOL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_DCOL_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DCOL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DCOL_MINSIZEREL}" "${CONAN_LIB_DIRS_DCOL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_DCOL_MINSIZEREL "${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" dcol)

    add_library(CONAN_PKG::dcol INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::dcol PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_DCOL} ${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DCOL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_DCOL_RELEASE} ${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DCOL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_DCOL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DCOL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_DCOL_MINSIZEREL} ${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DCOL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_DCOL_DEBUG} ${_CONAN_PKG_LIBS_DCOL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DCOL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DCOL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::dcol PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_DCOL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_DCOL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_DCOL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_DCOL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DCOL_DEBUG}>)
    set_property(TARGET CONAN_PKG::dcol PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_DCOL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_DCOL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_DCOL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_DCOL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_DCOL_DEBUG}>)
    set_property(TARGET CONAN_PKG::dcol PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_DCOL_LIST} ${CONAN_CXX_FLAGS_DCOL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_DCOL_RELEASE_LIST} ${CONAN_CXX_FLAGS_DCOL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_DCOL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_DCOL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_DCOL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_DCOL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_DCOL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_DCOL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES "${CONAN_SYSTEM_LIBS_EIGEN} ${CONAN_FRAMEWORKS_FOUND_EIGEN} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN_DEPENDENCIES "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN}" "${CONAN_LIB_DIRS_EIGEN}"
                                  CONAN_PACKAGE_TARGETS_EIGEN "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES}"
                                  "" eigen)
    set(_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_EIGEN_DEBUG} ${CONAN_FRAMEWORKS_FOUND_EIGEN_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN_DEBUG}" "${CONAN_LIB_DIRS_EIGEN_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_EIGEN_DEBUG "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_DEBUG}"
                                  "debug" eigen)
    set(_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_EIGEN_RELEASE} ${CONAN_FRAMEWORKS_FOUND_EIGEN_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN_RELEASE}" "${CONAN_LIB_DIRS_EIGEN_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_EIGEN_RELEASE "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELEASE}"
                                  "release" eigen)
    set(_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_EIGEN_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_EIGEN_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_EIGEN_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_EIGEN_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" eigen)
    set(_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_EIGEN_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_EIGEN_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EIGEN_MINSIZEREL}" "${CONAN_LIB_DIRS_EIGEN_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_EIGEN_MINSIZEREL "${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" eigen)

    add_library(CONAN_PKG::eigen INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::eigen PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_EIGEN} ${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EIGEN_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_EIGEN_RELEASE} ${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EIGEN_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_EIGEN_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EIGEN_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_EIGEN_MINSIZEREL} ${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EIGEN_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_EIGEN_DEBUG} ${_CONAN_PKG_LIBS_EIGEN_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EIGEN_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EIGEN_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::eigen PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_EIGEN}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_EIGEN_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_EIGEN_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_EIGEN_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_EIGEN_DEBUG}>)
    set_property(TARGET CONAN_PKG::eigen PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_EIGEN}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_EIGEN_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_EIGEN_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_EIGEN_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_EIGEN_DEBUG}>)
    set_property(TARGET CONAN_PKG::eigen PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_EIGEN_LIST} ${CONAN_CXX_FLAGS_EIGEN_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_EIGEN_RELEASE_LIST} ${CONAN_CXX_FLAGS_EIGEN_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_EIGEN_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_EIGEN_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_EIGEN_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_EIGEN_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_EIGEN_DEBUG_LIST}  ${CONAN_CXX_FLAGS_EIGEN_DEBUG_LIST}>)

    set(CONAN_TARGETS CONAN_PKG::dataframe CONAN_PKG::taskflow CONAN_PKG::fmt CONAN_PKG::ceres-solver CONAN_PKG::cxxopts CONAN_PKG::doctest CONAN_PKG::pybind11 CONAN_PKG::cpp-sort CONAN_PKG::fast_float CONAN_PKG::robin-hood-hashing CONAN_PKG::nanobench CONAN_PKG::rapidcsv CONAN_PKG::span-lite CONAN_PKG::vectorclass CONAN_PKG::xxhash CONAN_PKG::operon CONAN_PKG::dcol CONAN_PKG::eigen)

endmacro()


macro(conan_basic_setup)
    set(options TARGETS NO_OUTPUT_DIRS SKIP_RPATH KEEP_RPATHS SKIP_STD SKIP_FPIC)
    cmake_parse_arguments(ARGUMENTS "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    if(CONAN_EXPORTED)
        conan_message(STATUS "Conan: called by CMake conan helper")
    endif()

    if(CONAN_IN_LOCAL_CACHE)
        conan_message(STATUS "Conan: called inside local cache")
    endif()

    if(NOT ARGUMENTS_NO_OUTPUT_DIRS)
        conan_message(STATUS "Conan: Adjusting output directories")
        conan_output_dirs_setup()
    endif()

    if(NOT ARGUMENTS_TARGETS)
        conan_message(STATUS "Conan: Using cmake global configuration")
        conan_global_flags()
    else()
        conan_message(STATUS "Conan: Using cmake targets configuration")
        conan_define_targets()
    endif()

    if(ARGUMENTS_SKIP_RPATH)
        # Change by "DEPRECATION" or "SEND_ERROR" when we are ready
        conan_message(WARNING "Conan: SKIP_RPATH is deprecated, it has been renamed to KEEP_RPATHS")
    endif()

    if(NOT ARGUMENTS_SKIP_RPATH AND NOT ARGUMENTS_KEEP_RPATHS)
        # Parameter has renamed, but we keep the compatibility with old SKIP_RPATH
        conan_set_rpath()
    endif()

    if(NOT ARGUMENTS_SKIP_STD)
        conan_set_std()
    endif()

    if(NOT ARGUMENTS_SKIP_FPIC)
        conan_set_fpic()
    endif()

    conan_check_compiler()
    conan_set_libcxx()
    conan_set_vs_runtime()
    conan_set_find_paths()
    conan_include_build_modules()
    conan_set_find_library_paths()
endmacro()


macro(conan_set_find_paths)
    # CMAKE_MODULE_PATH does not have Debug/Release config, but there are variables
    # CONAN_CMAKE_MODULE_PATH_DEBUG to be used by the consumer
    # CMake can find findXXX.cmake files in the root of packages
    set(CMAKE_MODULE_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_MODULE_PATH})

    # Make find_package() to work
    set(CMAKE_PREFIX_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_PREFIX_PATH})

    # Set the find root path (cross build)
    set(CMAKE_FIND_ROOT_PATH ${CONAN_CMAKE_FIND_ROOT_PATH} ${CMAKE_FIND_ROOT_PATH})
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
        set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
        set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
        set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE})
    endif()
endmacro()


macro(conan_set_find_library_paths)
    # CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH does not have Debug/Release config, but there are variables
    # CONAN_INCLUDE_DIRS_DEBUG/RELEASE CONAN_LIB_DIRS_DEBUG/RELEASE to be used by the consumer
    # For find_library
    set(CMAKE_INCLUDE_PATH ${CONAN_INCLUDE_DIRS} ${CMAKE_INCLUDE_PATH})
    set(CMAKE_LIBRARY_PATH ${CONAN_LIB_DIRS} ${CMAKE_LIBRARY_PATH})
endmacro()


macro(conan_set_vs_runtime)
    if(CONAN_LINK_RUNTIME)
        conan_get_policy(CMP0091 policy_0091)
        if(policy_0091 STREQUAL "NEW")
            if(CONAN_LINK_RUNTIME MATCHES "MTd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebug")
            elseif(CONAN_LINK_RUNTIME MATCHES "MDd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebugDLL")
            elseif(CONAN_LINK_RUNTIME MATCHES "MT")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")
            elseif(CONAN_LINK_RUNTIME MATCHES "MD")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDLL")
            endif()
        else()
            foreach(flag CMAKE_C_FLAGS_RELEASE CMAKE_CXX_FLAGS_RELEASE
                         CMAKE_C_FLAGS_RELWITHDEBINFO CMAKE_CXX_FLAGS_RELWITHDEBINFO
                         CMAKE_C_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_MINSIZEREL)
                if(DEFINED ${flag})
                    string(REPLACE "/MD" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
            foreach(flag CMAKE_C_FLAGS_DEBUG CMAKE_CXX_FLAGS_DEBUG)
                if(DEFINED ${flag})
                    string(REPLACE "/MDd" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
        endif()
    endif()
endmacro()


macro(conan_flags_setup)
    # Macro maintained for backwards compatibility
    conan_set_find_library_paths()
    conan_global_flags()
    conan_set_rpath()
    conan_set_vs_runtime()
    conan_set_libcxx()
endmacro()


function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()


function(conan_get_policy policy_id policy)
    if(POLICY "${policy_id}")
        cmake_policy(GET "${policy_id}" _policy)
        set(${policy} "${_policy}" PARENT_SCOPE)
    else()
        set(${policy} "" PARENT_SCOPE)
    endif()
endfunction()


function(conan_find_libraries_abs_path libraries package_libdir libraries_abs_path)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${CONAN_FOUND_LIBRARY})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


function(conan_package_library_targets libraries package_libdir libraries_abs_path deps build_type package_name)
    unset(_CONAN_ACTUAL_TARGETS CACHE)
    unset(_CONAN_FOUND_SYSTEM_LIBS CACHE)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
            add_library(${_LIB_NAME} UNKNOWN IMPORTED)
            set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIB_NAME})
            set(_CONAN_ACTUAL_TARGETS ${_CONAN_ACTUAL_TARGETS} ${_LIB_NAME})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
            set(_CONAN_FOUND_SYSTEM_LIBS "${_CONAN_FOUND_SYSTEM_LIBS};${_LIBRARY_NAME}")
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()

    # Add all dependencies to all targets
    string(REPLACE " " ";" deps_list "${deps}")
    foreach(_CONAN_ACTUAL_TARGET ${_CONAN_ACTUAL_TARGETS})
        set_property(TARGET ${_CONAN_ACTUAL_TARGET} PROPERTY INTERFACE_LINK_LIBRARIES "${_CONAN_FOUND_SYSTEM_LIBS};${deps_list}")
    endforeach()

    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


macro(conan_set_libcxx)
    if(DEFINED CONAN_LIBCXX)
        conan_message(STATUS "Conan: C++ stdlib: ${CONAN_LIBCXX}")
        if(CONAN_COMPILER STREQUAL "clang" OR CONAN_COMPILER STREQUAL "apple-clang")
            if(CONAN_LIBCXX STREQUAL "libstdc++" OR CONAN_LIBCXX STREQUAL "libstdc++11" )
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
            elseif(CONAN_LIBCXX STREQUAL "libc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
            endif()
        endif()
        if(CONAN_COMPILER STREQUAL "sun-cc")
            if(CONAN_LIBCXX STREQUAL "libCstd")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=Cstd")
            elseif(CONAN_LIBCXX STREQUAL "libstdcxx")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcxx4")
            elseif(CONAN_LIBCXX STREQUAL "libstlport")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stlport4")
            elseif(CONAN_LIBCXX STREQUAL "libstdc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcpp")
            endif()
        endif()
        if(CONAN_LIBCXX STREQUAL "libstdc++11")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=1)
        elseif(CONAN_LIBCXX STREQUAL "libstdc++")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
        endif()
    endif()
endmacro()


macro(conan_set_std)
    conan_message(STATUS "Conan: Adjusting language standard")
    # Do not warn "Manually-specified variables were not used by the project"
    set(ignorevar "${CONAN_STD_CXX_FLAG}${CONAN_CMAKE_CXX_STANDARD}${CONAN_CMAKE_CXX_EXTENSIONS}")
    if (CMAKE_VERSION VERSION_LESS "3.1" OR
        (CMAKE_VERSION VERSION_LESS "3.12" AND ("${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "20" OR "${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "gnu20")))
        if(CONAN_STD_CXX_FLAG)
            conan_message(STATUS "Conan setting CXX_FLAGS flags: ${CONAN_STD_CXX_FLAG}")
            set(CMAKE_CXX_FLAGS "${CONAN_STD_CXX_FLAG} ${CMAKE_CXX_FLAGS}")
        endif()
    else()
        if(CONAN_CMAKE_CXX_STANDARD)
            conan_message(STATUS "Conan setting CPP STANDARD: ${CONAN_CMAKE_CXX_STANDARD} WITH EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS}")
            set(CMAKE_CXX_STANDARD ${CONAN_CMAKE_CXX_STANDARD})
            set(CMAKE_CXX_EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS})
        endif()
    endif()
endmacro()


macro(conan_set_rpath)
    conan_message(STATUS "Conan: Adjusting default RPATHs Conan policies")
    if(APPLE)
        # https://cmake.org/Wiki/CMake_RPATH_handling
        # CONAN GUIDE: All generated libraries should have the id and dependencies to other
        # dylibs without path, just the name, EX:
        # libMyLib1.dylib:
        #     libMyLib1.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     libMyLib0.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     /usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 120.0.0)
        #     /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1197.1.1)
        # AVOID RPATH FOR *.dylib, ALL LIBS BETWEEN THEM AND THE EXE
        # SHOULD BE ON THE LINKER RESOLVER PATH (./ IS ONE OF THEM)
        set(CMAKE_SKIP_RPATH 1 CACHE BOOL "rpaths" FORCE)
        # Policy CMP0068
        # We want the old behavior, in CMake >= 3.9 CMAKE_SKIP_RPATH won't affect the install_name in OSX
        set(CMAKE_INSTALL_NAME_DIR "")
    endif()
endmacro()


macro(conan_set_fpic)
    if(DEFINED CONAN_CMAKE_POSITION_INDEPENDENT_CODE)
        conan_message(STATUS "Conan: Adjusting fPIC flag (${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})")
        set(CMAKE_POSITION_INDEPENDENT_CODE ${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})
    endif()
endmacro()


macro(conan_output_dirs_setup)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
endmacro()


macro(conan_split_version VERSION_STRING MAJOR MINOR)
    #make a list from the version string
    string(REPLACE "." ";" VERSION_LIST "${VERSION_STRING}")

    #write output values
    list(LENGTH VERSION_LIST _version_len)
    list(GET VERSION_LIST 0 ${MAJOR})
    if(${_version_len} GREATER 1)
        list(GET VERSION_LIST 1 ${MINOR})
    endif()
endmacro()


macro(conan_error_compiler_version)
    message(FATAL_ERROR "Detected a mismatch for the compiler version between your conan profile settings and CMake: \n"
                        "Compiler version specified in your conan profile: ${CONAN_COMPILER_VERSION}\n"
                        "Compiler version detected in CMake: ${VERSION_MAJOR}.${VERSION_MINOR}\n"
                        "Please check your conan profile settings (conan profile show [default|your_profile_name])\n"
                        "P.S. You may set CONAN_DISABLE_CHECK_COMPILER CMake variable in order to disable this check."
           )
endmacro()

set(_CONAN_CURRENT_DIR ${CMAKE_CURRENT_LIST_DIR})

function(conan_get_compiler CONAN_INFO_COMPILER CONAN_INFO_COMPILER_VERSION)
    conan_message(STATUS "Current conanbuildinfo.cmake directory: " ${_CONAN_CURRENT_DIR})
    if(NOT EXISTS ${_CONAN_CURRENT_DIR}/conaninfo.txt)
        conan_message(STATUS "WARN: conaninfo.txt not found")
        return()
    endif()

    file (READ "${_CONAN_CURRENT_DIR}/conaninfo.txt" CONANINFO)

    # MATCHALL will match all, including the last one, which is the full_settings one
    string(REGEX MATCH "full_settings.*" _FULL_SETTINGS_MATCHED ${CONANINFO})
    string(REGEX MATCH "compiler=([-A-Za-z0-9_ ]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER)
        set(${CONAN_INFO_COMPILER} ${_CONAN_INFO_COMPILER} PARENT_SCOPE)
    endif()

    string(REGEX MATCH "compiler.version=([-A-Za-z0-9_.]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER_VERSION)
        set(${CONAN_INFO_COMPILER_VERSION} ${_CONAN_INFO_COMPILER_VERSION} PARENT_SCOPE)
    endif()
endfunction()


function(check_compiler_version)
    conan_split_version(${CMAKE_CXX_COMPILER_VERSION} VERSION_MAJOR VERSION_MINOR)
    if(DEFINED CONAN_SETTINGS_COMPILER_TOOLSET)
       conan_message(STATUS "Conan: Skipping compiler check: Declared 'compiler.toolset'")
       return()
    endif()
    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        # MSVC_VERSION is defined since 2.8.2 at least
        # https://cmake.org/cmake/help/v2.8.2/cmake.html#variable:MSVC_VERSION
        # https://cmake.org/cmake/help/v3.14/variable/MSVC_VERSION.html
        if(
            # 1930 = VS 17.0 (v143 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "17" AND NOT MSVC_VERSION EQUAL 1930) OR
            # 1920-1929 = VS 16.0 (v142 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "16" AND NOT((MSVC_VERSION GREATER 1919) AND (MSVC_VERSION LESS 1930))) OR
            # 1910-1919 = VS 15.0 (v141 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "15" AND NOT((MSVC_VERSION GREATER 1909) AND (MSVC_VERSION LESS 1920))) OR
            # 1900      = VS 14.0 (v140 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "14" AND NOT(MSVC_VERSION EQUAL 1900)) OR
            # 1800      = VS 12.0 (v120 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "12" AND NOT VERSION_MAJOR STREQUAL "18") OR
            # 1700      = VS 11.0 (v110 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "11" AND NOT VERSION_MAJOR STREQUAL "17") OR
            # 1600      = VS 10.0 (v100 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "10" AND NOT VERSION_MAJOR STREQUAL "16") OR
            # 1500      = VS  9.0 (v90 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "9" AND NOT VERSION_MAJOR STREQUAL "15") OR
            # 1400      = VS  8.0 (v80 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "8" AND NOT VERSION_MAJOR STREQUAL "14") OR
            # 1310      = VS  7.1, 1300      = VS  7.0
            (CONAN_COMPILER_VERSION STREQUAL "7" AND NOT VERSION_MAJOR STREQUAL "13") OR
            # 1200      = VS  6.0
            (CONAN_COMPILER_VERSION STREQUAL "6" AND NOT VERSION_MAJOR STREQUAL "12") )
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "gcc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 5.0)
            conan_message(STATUS "Conan: Compiler GCC>=5, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
                set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL ${_CONAN_VERSION})
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "clang")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 8.0)
            conan_message(STATUS "Conan: Compiler Clang>=8, checking major version ${CONAN_COMPILER_VERSION}")
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
                set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL ${_CONAN_VERSION})
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "apple-clang" OR CONAN_COMPILER STREQUAL "sun-cc" OR CONAN_COMPILER STREQUAL "mcst-lcc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
           conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "intel")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 19.1)
            if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
               conan_error_compiler_version()
            endif()
        else()
            if(NOT ${VERSION_MAJOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR})
               conan_error_compiler_version()
            endif()
        endif()
    else()
        conan_message(STATUS "WARN: Unknown compiler '${CONAN_COMPILER}', skipping the version check...")
    endif()
endfunction()


function(conan_check_compiler)
    if(CONAN_DISABLE_CHECK_COMPILER)
        conan_message(STATUS "WARN: Disabled conan compiler checks")
        return()
    endif()
    if(NOT DEFINED CMAKE_CXX_COMPILER_ID)
        if(DEFINED CMAKE_C_COMPILER_ID)
            conan_message(STATUS "This project seems to be plain C, using '${CMAKE_C_COMPILER_ID}' compiler")
            set(CMAKE_CXX_COMPILER_ID ${CMAKE_C_COMPILER_ID})
            set(CMAKE_CXX_COMPILER_VERSION ${CMAKE_C_COMPILER_VERSION})
        else()
            message(FATAL_ERROR "This project seems to be plain C, but no compiler defined")
        endif()
    endif()
    if(NOT CMAKE_CXX_COMPILER_ID AND NOT CMAKE_C_COMPILER_ID)
        # This use case happens when compiler is not identified by CMake, but the compilers are there and work
        conan_message(STATUS "*** WARN: CMake was not able to identify a C or C++ compiler ***")
        conan_message(STATUS "*** WARN: Disabling compiler checks. Please make sure your settings match your environment ***")
        return()
    endif()
    if(NOT DEFINED CONAN_COMPILER)
        conan_get_compiler(CONAN_COMPILER CONAN_COMPILER_VERSION)
        if(NOT DEFINED CONAN_COMPILER)
            conan_message(STATUS "WARN: CONAN_COMPILER variable not set, please make sure yourself that "
                          "your compiler and version matches your declared settings")
            return()
        endif()
    endif()

    if(NOT CMAKE_HOST_SYSTEM_NAME STREQUAL ${CMAKE_SYSTEM_NAME})
        set(CROSS_BUILDING 1)
    endif()

    # If using VS, verify toolset
    if (CONAN_COMPILER STREQUAL "Visual Studio")
        if (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "LLVM" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "llvm" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "clang" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Clang")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Clang")
        elseif (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Intel")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Intel")
        else()
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "MSVC")
        endif()

        if (NOT CMAKE_CXX_COMPILER_ID MATCHES ${EXPECTED_CMAKE_CXX_COMPILER_ID})
            message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}'. Toolset specifies compiler as '${EXPECTED_CMAKE_CXX_COMPILER_ID}' "
                                "but CMake detected '${CMAKE_CXX_COMPILER_ID}'")
        endif()

    # Avoid checks when cross compiling, apple-clang crashes because its APPLE but not apple-clang
    # Actually CMake is detecting "clang" when you are using apple-clang, only if CMP0025 is set to NEW will detect apple-clang
    elseif((CONAN_COMPILER STREQUAL "gcc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR
        (CONAN_COMPILER STREQUAL "apple-clang" AND NOT CROSS_BUILDING AND (NOT APPLE OR NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")) OR
        (CONAN_COMPILER STREQUAL "clang" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang") OR
        (CONAN_COMPILER STREQUAL "sun-cc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "SunPro") )
        message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}', is not the one detected by CMake: '${CMAKE_CXX_COMPILER_ID}'")
    endif()


    if(NOT DEFINED CONAN_COMPILER_VERSION)
        conan_message(STATUS "WARN: CONAN_COMPILER_VERSION variable not set, please make sure yourself "
                             "that your compiler version matches your declared settings")
        return()
    endif()
    check_compiler_version()
endfunction()


macro(conan_set_flags build_type)
    set(CMAKE_CXX_FLAGS${build_type} "${CMAKE_CXX_FLAGS${build_type}} ${CONAN_CXX_FLAGS${build_type}}")
    set(CMAKE_C_FLAGS${build_type} "${CMAKE_C_FLAGS${build_type}} ${CONAN_C_FLAGS${build_type}}")
    set(CMAKE_SHARED_LINKER_FLAGS${build_type} "${CMAKE_SHARED_LINKER_FLAGS${build_type}} ${CONAN_SHARED_LINKER_FLAGS${build_type}}")
    set(CMAKE_EXE_LINKER_FLAGS${build_type} "${CMAKE_EXE_LINKER_FLAGS${build_type}} ${CONAN_EXE_LINKER_FLAGS${build_type}}")
endmacro()


macro(conan_global_flags)
    if(CONAN_SYSTEM_INCLUDES)
        include_directories(SYSTEM ${CONAN_INCLUDE_DIRS}
                                   "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                                   "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                                   "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                                   "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    else()
        include_directories(${CONAN_INCLUDE_DIRS}
                            "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                            "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                            "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                            "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    endif()

    link_directories(${CONAN_LIB_DIRS})

    conan_find_libraries_abs_path("${CONAN_LIBS_DEBUG}" "${CONAN_LIB_DIRS_DEBUG}"
                                  CONAN_LIBS_DEBUG)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELEASE}" "${CONAN_LIB_DIRS_RELEASE}"
                                  CONAN_LIBS_RELEASE)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RELWITHDEBINFO}"
                                  CONAN_LIBS_RELWITHDEBINFO)
    conan_find_libraries_abs_path("${CONAN_LIBS_MINSIZEREL}" "${CONAN_LIB_DIRS_MINSIZEREL}"
                                  CONAN_LIBS_MINSIZEREL)

    add_compile_options(${CONAN_DEFINES}
                        "$<$<CONFIG:Debug>:${CONAN_DEFINES_DEBUG}>"
                        "$<$<CONFIG:Release>:${CONAN_DEFINES_RELEASE}>"
                        "$<$<CONFIG:RelWithDebInfo>:${CONAN_DEFINES_RELWITHDEBINFO}>"
                        "$<$<CONFIG:MinSizeRel>:${CONAN_DEFINES_MINSIZEREL}>")

    conan_set_flags("")
    conan_set_flags("_RELEASE")
    conan_set_flags("_DEBUG")

endmacro()


macro(conan_target_link_libraries target)
    if(CONAN_TARGETS)
        target_link_libraries(${target} ${CONAN_TARGETS})
    else()
        target_link_libraries(${target} ${CONAN_LIBS})
        foreach(_LIB ${CONAN_LIBS_RELEASE})
            target_link_libraries(${target} optimized ${_LIB})
        endforeach()
        foreach(_LIB ${CONAN_LIBS_DEBUG})
            target_link_libraries(${target} debug ${_LIB})
        endforeach()
    endif()
endmacro()


macro(conan_include_build_modules)
    if(CMAKE_BUILD_TYPE)
        if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_DEBUG} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
        endif()
    endif()

    foreach(_BUILD_MODULE_PATH ${CONAN_BUILD_MODULES_PATHS})
        include(${_BUILD_MODULE_PATH})
    endforeach()
endmacro()


### Definition of user declared vars (user_info) ###

