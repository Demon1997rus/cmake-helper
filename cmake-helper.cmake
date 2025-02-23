# Include guard
if(DEFINED MY_CMAKE_HELPER_INCLUDED)
    return()
endif()
set(MY_CMAKE_HELPER_INCLUDED TRUE)

# Default build release
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose Release or Debug" FORCE)
endif()

set(CMAKE_AUTOMOC ON)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
include_directories(${CMAKE_BINARY_DIR}/../include)

# Add cmake functions
file(GLOB_RECURSE CMAKE_HELPER_FUNCTIONS cmake-helper/cmake/*.cmake*)
foreach(CMAKE_HELPER_FUNCTION ${CMAKE_HELPER_FUNCTIONS})
    include(${CMAKE_HELPER_FUNCTION})
endforeach()

add_definitions(-DROOT_PATH="..")
