cmake_minimum_required(VERSION 2.8)
project(four_c)

if(EXISTS ${CMAKE_SOURCE_DIR}/.conan/conanbuildinfo.cmake)
    include(${CMAKE_SOURCE_DIR}/.conan/conanbuildinfo.cmake)
else()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

find_package( Boost REQUIRED COMPONENTS regex )
include_directories( ${Boost_INCLUDE_DIRS} )

# Alternatively you could use ${Boost_LIBRARIES} here.
# target_link_libraries( run ${Boost_REGEX_LIBRARY} )

conan_basic_setup()

add_compile_options(-std=c++11)
add_executable(timer timer.cpp)
target_link_libraries(timer ${CONAN_LIBS})
