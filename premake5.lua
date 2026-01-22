project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"

	targetdir (BIN_DIR .. "/%{prj.name}")
    objdir (OBJ_DIR .. "/%{prj.name}")

	files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp"
	}

    includedirs {
        ".",
        "backends",
        INCLUDE_DIRS["glfw"]
    }

	filter "system:windows"
		systemversion "latest"
		

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"
