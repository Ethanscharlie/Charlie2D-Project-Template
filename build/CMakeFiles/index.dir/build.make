# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build

# Include any dependencies generated for this target.
include CMakeFiles/index.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/index.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/index.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/index.dir/flags.make

CMakeFiles/index.dir/src/main.cpp.o: CMakeFiles/index.dir/flags.make
CMakeFiles/index.dir/src/main.cpp.o: /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/src/main.cpp
CMakeFiles/index.dir/src/main.cpp.o: CMakeFiles/index.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/index.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/index.dir/src/main.cpp.o -MF CMakeFiles/index.dir/src/main.cpp.o.d -o CMakeFiles/index.dir/src/main.cpp.o -c /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/src/main.cpp

CMakeFiles/index.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/index.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/src/main.cpp > CMakeFiles/index.dir/src/main.cpp.i

CMakeFiles/index.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/index.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/src/main.cpp -o CMakeFiles/index.dir/src/main.cpp.s

# Object files for target index
index_OBJECTS = \
"CMakeFiles/index.dir/src/main.cpp.o"

# External object files for target index
index_EXTERNAL_OBJECTS =

index: CMakeFiles/index.dir/src/main.cpp.o
index: CMakeFiles/index.dir/build.make
index: /usr/lib/libSDL2main.a
index: /usr/lib/libSDL2.so
index: /usr/lib/libSDL2_ttf.so
index: /usr/lib/libSDL2_image.so
index: /usr/lib/libSDL2_mixer.so
index: /usr/lib/libSDL2_gfx.so
index: /usr/local/lib/libcharlie2D.a
index: CMakeFiles/index.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable index"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/index.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/index.dir/build: index
.PHONY : CMakeFiles/index.dir/build

CMakeFiles/index.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/index.dir/cmake_clean.cmake
.PHONY : CMakeFiles/index.dir/clean

CMakeFiles/index.dir/depend:
	cd /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build /home/ethanscharlie/Projects/Code/C++/CharlieGamesv3/Charlie2D-Project-Template/build/CMakeFiles/index.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/index.dir/depend

