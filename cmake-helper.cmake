
# Include guard
if(DEFINED MY_CMAKE_HELPER_INCLUDED)
    return()
endif()
set(MY_CMAKE_HELPER_INCLUDED TRUE)

# Default build release
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose Release or Debug" FORCE)
endif()

# Add cmake functions
file(GLOB CMAKE_HELPER_FUNCTIONS ${CMAKE_CURRENT_SOURCE_DIR}/cmake/*.cmake)
foreach(CMAKE_HELPER_FUNCTION ${CMAKE_HELPER_FILES})
    include(${CMAKE_HELPER_FILE})
endforeach()
