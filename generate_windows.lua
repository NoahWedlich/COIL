workspace "COIL"
    configurations { "Debug", "Release" }
    platforms { "Win64" }
    
    location("build/" .. _ACTION)
    
project "COIL"
    kind "ConsoleApp"
    
    language "C++"
    cppdialect "C++20"
    
    files { "src/**.h", "src/**.cpp" }
    
    targetdir "bin/%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}"
    objdir "bin/%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}/obj"
    
    filter "configurations:Debug"
        defines { "COIL_DEBUG" }
        symbols "On"
        
    filter "configurations:Release"
        defines { "COIL_RELEASE" }
        optimize "On"
        
    filter "platforms:Win64"
        system "Windows"
        architecture "x86_64"
        systemversion "latest"
        defines { "WIN64" }
