# CMAKELIST

cmake_minimum_required(VERSION 3.10)
project(HelloWorld CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Dodanie flag dla statycznej kompilacji oraz optymalizacji rozmiaru
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Os -Wall")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -s")

# Automatyczne wyszukiwanie wszystkich plików .cpp w katalogu
file(GLOB SOURCES "*.cpp")

# Tworzenie pliku wykonywalnego "hello"
add_executable(hello ${SOURCES})
