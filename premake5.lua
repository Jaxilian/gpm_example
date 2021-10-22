workspace "Wildsoft"  

configurations {
        "Release" 
    }

project "gpm_example"  

    kind "ConsoleApp"   
    language "C++"   
    targetdir "bin/%{cfg.buildcfg}"
    objdir "obj/%{cfg.buildcfg}"
    cppdialect "C++20"

    includedirs{
        "src/",
        "src/thirdparty/glad/include",
        "src/thirdparty/glm"
    }

    links{
        "glfw"
    }

    files { 
        "src/**.h",
        "src/**.c",
        "src/**.cpp",
        "src/**.hpp"
        }

