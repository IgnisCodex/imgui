cmake_minimum_required(VERSION 3.15)
project(imgui LANGUAGES CXX)

find_library(SDL3::SDL3 REQUIRED)

add_library(imgui STATIC
    imconfig.h
    imgui.cpp
    imgui.h
    imgui_demo.cpp
    imgui_draw.cpp
    imgui_internal.h
    imgui_tables.cpp
    imstb_rectpack.h
    imstb_textedit.h
    imstb_truetype.h
    imgui_widgets.cpp
)

target_include_directories(imgui PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/backends
)

target_compile_features(imgui PUBLIC cxx_std_17)
target_link_libraries(imgui PUBLIC SDL3::SDL3)