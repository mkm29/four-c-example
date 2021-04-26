cmake_minimum_required(VERSION 2.8)
project(four_c)

if(EXISTS ${CMAKE_SOURCE_DIR}/.conan/conanbuildinfo.cmake)
    include(${CMAKE_SOURCE_DIR}/.conan/conanbuildinfo.cmake)
else()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

conan_basic_setup()

add_compile_options(-std=c++11)
add_executable(timer timer.cpp)
target_link_libraries(timer ${CONAN_LIBS})

#set(Boost_USE_STATIC_LIBS ON) 
#set(Boost_USE_MULTITHREADED ON)  
#set(Boost_USE_STATIC_RUNTIME OFF) 
#find_package(Boost 1.70.0 COMPONENTS regex)

#if(Boost_FOUND)
#    include_directories(${Boost_INCLUDE_DIRS})
#    target_link_libraries(timer ${Boost_LIBRARIES})
#endif()
