# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/steve-kameron/Загрузки/DesignPattern/factory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/steve-kameron/Загрузки/DesignPattern/factory/build

# Include any dependencies generated for this target.
include CMakeFiles/factory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/factory.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/factory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/factory.dir/flags.make

CMakeFiles/factory.dir/factory.cpp.o: CMakeFiles/factory.dir/flags.make
CMakeFiles/factory.dir/factory.cpp.o: /home/steve-kameron/Загрузки/DesignPattern/factory/factory.cpp
CMakeFiles/factory.dir/factory.cpp.o: CMakeFiles/factory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/steve-kameron/Загрузки/DesignPattern/factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/factory.dir/factory.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/factory.dir/factory.cpp.o -MF CMakeFiles/factory.dir/factory.cpp.o.d -o CMakeFiles/factory.dir/factory.cpp.o -c /home/steve-kameron/Загрузки/DesignPattern/factory/factory.cpp

CMakeFiles/factory.dir/factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/factory.dir/factory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/steve-kameron/Загрузки/DesignPattern/factory/factory.cpp > CMakeFiles/factory.dir/factory.cpp.i

CMakeFiles/factory.dir/factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/factory.dir/factory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/steve-kameron/Загрузки/DesignPattern/factory/factory.cpp -o CMakeFiles/factory.dir/factory.cpp.s

# Object files for target factory
factory_OBJECTS = \
"CMakeFiles/factory.dir/factory.cpp.o"

# External object files for target factory
factory_EXTERNAL_OBJECTS =

factory: CMakeFiles/factory.dir/factory.cpp.o
factory: CMakeFiles/factory.dir/build.make
factory: CMakeFiles/factory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/steve-kameron/Загрузки/DesignPattern/factory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable factory"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/factory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/factory.dir/build: factory
.PHONY : CMakeFiles/factory.dir/build

CMakeFiles/factory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/factory.dir/cmake_clean.cmake
.PHONY : CMakeFiles/factory.dir/clean

CMakeFiles/factory.dir/depend:
	cd /home/steve-kameron/Загрузки/DesignPattern/factory/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/steve-kameron/Загрузки/DesignPattern/factory /home/steve-kameron/Загрузки/DesignPattern/factory /home/steve-kameron/Загрузки/DesignPattern/factory/build /home/steve-kameron/Загрузки/DesignPattern/factory/build /home/steve-kameron/Загрузки/DesignPattern/factory/build/CMakeFiles/factory.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/factory.dir/depend

