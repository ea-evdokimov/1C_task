# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /snap/clion/149/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/149/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/egor/CLionProjects/1C_task

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/egor/CLionProjects/1C_task/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/1C_task.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1C_task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1C_task.dir/flags.make

CMakeFiles/1C_task.dir/main.cpp.o: CMakeFiles/1C_task.dir/flags.make
CMakeFiles/1C_task.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/CLionProjects/1C_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1C_task.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1C_task.dir/main.cpp.o -c /home/egor/CLionProjects/1C_task/main.cpp

CMakeFiles/1C_task.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1C_task.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/CLionProjects/1C_task/main.cpp > CMakeFiles/1C_task.dir/main.cpp.i

CMakeFiles/1C_task.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1C_task.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/CLionProjects/1C_task/main.cpp -o CMakeFiles/1C_task.dir/main.cpp.s

CMakeFiles/1C_task.dir/deckstate.cpp.o: CMakeFiles/1C_task.dir/flags.make
CMakeFiles/1C_task.dir/deckstate.cpp.o: ../deckstate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/CLionProjects/1C_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/1C_task.dir/deckstate.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1C_task.dir/deckstate.cpp.o -c /home/egor/CLionProjects/1C_task/deckstate.cpp

CMakeFiles/1C_task.dir/deckstate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1C_task.dir/deckstate.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/CLionProjects/1C_task/deckstate.cpp > CMakeFiles/1C_task.dir/deckstate.cpp.i

CMakeFiles/1C_task.dir/deckstate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1C_task.dir/deckstate.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/CLionProjects/1C_task/deckstate.cpp -o CMakeFiles/1C_task.dir/deckstate.cpp.s

CMakeFiles/1C_task.dir/solver.cpp.o: CMakeFiles/1C_task.dir/flags.make
CMakeFiles/1C_task.dir/solver.cpp.o: ../solver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/CLionProjects/1C_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/1C_task.dir/solver.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1C_task.dir/solver.cpp.o -c /home/egor/CLionProjects/1C_task/solver.cpp

CMakeFiles/1C_task.dir/solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1C_task.dir/solver.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/CLionProjects/1C_task/solver.cpp > CMakeFiles/1C_task.dir/solver.cpp.i

CMakeFiles/1C_task.dir/solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1C_task.dir/solver.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/CLionProjects/1C_task/solver.cpp -o CMakeFiles/1C_task.dir/solver.cpp.s

# Object files for target 1C_task
1C_task_OBJECTS = \
"CMakeFiles/1C_task.dir/main.cpp.o" \
"CMakeFiles/1C_task.dir/deckstate.cpp.o" \
"CMakeFiles/1C_task.dir/solver.cpp.o"

# External object files for target 1C_task
1C_task_EXTERNAL_OBJECTS =

1C_task: CMakeFiles/1C_task.dir/main.cpp.o
1C_task: CMakeFiles/1C_task.dir/deckstate.cpp.o
1C_task: CMakeFiles/1C_task.dir/solver.cpp.o
1C_task: CMakeFiles/1C_task.dir/build.make
1C_task: CMakeFiles/1C_task.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/egor/CLionProjects/1C_task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable 1C_task"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1C_task.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1C_task.dir/build: 1C_task

.PHONY : CMakeFiles/1C_task.dir/build

CMakeFiles/1C_task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1C_task.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1C_task.dir/clean

CMakeFiles/1C_task.dir/depend:
	cd /home/egor/CLionProjects/1C_task/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egor/CLionProjects/1C_task /home/egor/CLionProjects/1C_task /home/egor/CLionProjects/1C_task/cmake-build-debug /home/egor/CLionProjects/1C_task/cmake-build-debug /home/egor/CLionProjects/1C_task/cmake-build-debug/CMakeFiles/1C_task.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1C_task.dir/depend

