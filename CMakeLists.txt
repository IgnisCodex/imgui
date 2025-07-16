cmake_minimum_required(VERSION 3.15)
project(imgui LANGUAGES CXX)

# Only the core ImGui files, no backends (bgfx handles rendering)
set(IMGUI_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR})

add_library(imgui STATIC
    ${IMGUI_SRC_DIR}/imgui.cpp
    ${IMGUI_SRC_DIR}/imgui_demo.cpp
    ${IMGUI_SRC_DIR}/imgui_draw.cpp
    ${IMGUI_SRC_DIR}/imgui_tables.cpp
    ${IMGUI_SRC_DIR}/imgui_widgets.cpp
)

target_include_directories(imgui PUBLIC
    ${IMGUI_SRC_DIR}
)

target_compile_features(imgui PUBLIC cxx_std_11)
