project "glfw"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
		{"deps/**.h"
		,"deps/**.c"
		,"deps/**.cpp"
		,"src/**.h"
		,"src/**.c"
		,"src/**.cpp"}

	defines 
		{"_GLFW_WIN32"
		,"_CRT_SECURE_NO_WARNINGS"}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:release"
		runtime "Release"
		optimize "on"

    filter "configurations:distribution"
		runtime "Release"
		optimize "on"