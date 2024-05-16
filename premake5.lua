project "ImGui"
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"backends/imgui_impl_vulkan.h",
		"backends/imgui_impl_vulkan.cpp",
		"backends/imgui_impl_glfw.cpp",
		"backends/imgui_impl_glfw.h"
	}

	includedirs
    {
        "%{IncludeDir.VulkanSDK}",
        "%{IncludeDir.glfw}",
        "%{IncludeDir.imgui}",
    }

	libdirs 
    { 
        "%{LibDir.VulkanSDK}",
        "%{LibDir.glfw}",
    }

	links
	{
		"%{Lib.Vulkan}",
		"%{Lib.glfw}",
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:DebugDLL"
		defines "_UNICODE"
		defines "UNICODE"
		runtime "Debug"
		symbols "on"

	filter "configurations:ReleaseDLL"
		defines "_UNICODE"
		defines "UNICODE"
		runtime "Release"
		optimize "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"