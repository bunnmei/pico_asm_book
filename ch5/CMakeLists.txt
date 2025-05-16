cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)
# include(pico_extras_import_optional.cmake)
pico_sdk_init()

project(ControlFlow C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

include_directories(${CMAKE_SOURCE_DIR})

add_executable(ControlFlow
    ControlFlow.S
    )

pico_enable_stdio_uart(ControlFlow 1)
pico_enable_stdio_usb(ControlFlow 0)
# pull in common dependencies
target_link_libraries(ControlFlow pico_stdlib)

pico_add_extra_outputs(ControlFlow)
