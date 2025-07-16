cmake_minimum_required(VERSION 3.15)
project(ImGui LANGUAGES CXX)

add_library(ImGui STATIC
    imgui.cpp
    imgui_draw.cpp
    imgui_widgets.cpp
    imgui_demo.cpp
    imgui.h
    imgui_internal.h
    imconfig.h
    imstb_rectpack.h
    imstb_textedit.h
    imstb_truetype.h
)

target_include_directories(ImGui PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_compile_features(ImGui PUBLIC cxx_std_17)
