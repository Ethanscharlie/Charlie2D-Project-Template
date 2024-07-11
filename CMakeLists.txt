cmake_minimum_required(VERSION 3.10)

# set the project name
project(index)

# set the C++ standard to C++11
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB_RECURSE SOURCE_FILES ${PROJECT_SOURCE_DIR}/src/*.cpp)

add_executable(index
  src/main.cpp
  ${SOURCE_FILES}
)

# add include directories
target_include_directories(index PUBLIC
    ${PROJECT_SOURCE_DIR}/include/SDL2 
    ${PROJECT_SOURCE_DIR}/include 
    ${PROJECT_SOURCE_DIR}/include/charlie2D 
    ${PROJECT_SOURCE_DIR}/src
)

if (LINUX)
  set(SDL_LIB_PATH "${PROJECT_SOURCE_DIR}/lib/linux/SDL2")
  set(CH2D_LIB_PATH "${PROJECT_SOURCE_DIR}/lib/linux/charlie2D")
endif()

find_library(SDL2_      SDL2       PATHS ${SDL_LIB_PATH})
find_library(SDL2_MAIN  SDL2main   PATHS ${SDL_LIB_PATH})
find_library(SDL2_TTF   SDL2_ttf   PATHS ${SDL_LIB_PATH})
find_library(SDL2_IMAGE SDL2_image PATHS ${SDL_LIB_PATH})
find_library(SDL2_MIXER SDL2_mixer PATHS ${SDL_LIB_PATH})
find_library(SDL2_GFX SDL2_gfx PATHS ${SDL_LIB_PATH})

find_library(CHARLIE2D charlie2D PATHS ${CH2D_LIB_PATH})

if (LINUX)
  target_link_libraries(index
    ${SDL2_MAIN}
    ${SDL2_}
    ${SDL2_TTF}
    ${SDL2_IMAGE}
    ${SDL2_MIXER}
    ${SDL2_GFX}
    ${CHARLIE2D}
  )
elseif(EMSCRIPTEN)
  target_link_libraries(index
    "${PROJECT_SOURCE_DIR}/lib/emscripten/charlie2D/libcharlie2D.a"
  )

  # Enable Emscripten-specific flags
  set(CMAKE_EXECUTABLE_SUFFIX ".html")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s USE_SDL=2")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s USE_SDL_IMAGE=2")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s SDL2_IMAGE_FORMATS=['png']")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s USE_SDL_TTF=2")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s USE_SDL_MIXER=2")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s USE_SDL_GFX=2")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s WASM=0")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s ALLOW_MEMORY_GROWTH=1")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -s EXPORTED_FUNCTIONS=\"['_main', '_on_resize']\"")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --use-preload-plugins")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --shell-file ../minimal.html")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --preload-file ${CMAKE_SOURCE_DIR}/res@/res")
endif()

# if (WIN32)
#   set(SDL_LIB_PATH "/usr/x86_64-w64-mingw32/lib")
#
#   find_library(SDL2_      SDL2       PATHS ${SDL_LIB_PATH})
#   find_library(SDL2_MAIN  SDL2main   PATHS ${SDL_LIB_PATH})
#   find_library(SDL2_TTF   SDL2_ttf   PATHS ${SDL_LIB_PATH})
#   find_library(SDL2_IMAGE SDL2_image PATHS ${SDL_LIB_PATH})
#   find_library(SDL2_MIXER SDL2_mixer PATHS ${SDL_LIB_PATH})
#
#   target_link_libraries(index
#     -static-libgcc
#     -static-libstdc++
#     -static
#     mingw32
#     ${SDL2_MAIN}
#     ${SDL2_}
#     ${SDL2_TTF}
#     ${SDL2_IMAGE}
#     ${SDL2_MIXER}
#     )
#
# else()
#   # link libraries
#   target_link_libraries(index
#     SDL2
#     SDL2_ttf
#     SDL2_mixer
#     SDL2_image
#     charlie2D
#     )
# endif()

# copy image directory to build directory
file(COPY ${CMAKE_SOURCE_DIR}/res DESTINATION ${CMAKE_BINARY_DIR})

# set output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
