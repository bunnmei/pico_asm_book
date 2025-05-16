cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)
# include(pico_extras_import_optional.cmake)
pico_sdk_init()

project(memory C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

include_directories(${CMAKE_SOURCE_DIR})

add_executable(memory
    memory.S
    upper.S
    )

pico_enable_stdio_uart(memory 1)
pico_enable_stdio_usb(memory 0)
# pull in common dependencies
target_link_libraries(memory pico_stdlib)

pico_add_extra_outputs(memory)
