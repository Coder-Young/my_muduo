# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/yzq/github/myMuduo/my_muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yzq/github/myMuduo/my_muduo/build

# Include any dependencies generated for this target.
include CMakeFiles/mymuduo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mymuduo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mymuduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mymuduo.dir/flags.make

CMakeFiles/mymuduo.dir/src/Channel.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/Channel.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/Channel.cpp
CMakeFiles/mymuduo.dir/src/Channel.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mymuduo.dir/src/Channel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/Channel.cpp.o -MF CMakeFiles/mymuduo.dir/src/Channel.cpp.o.d -o CMakeFiles/mymuduo.dir/src/Channel.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/Channel.cpp

CMakeFiles/mymuduo.dir/src/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/Channel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/Channel.cpp > CMakeFiles/mymuduo.dir/src/Channel.cpp.i

CMakeFiles/mymuduo.dir/src/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/Channel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/Channel.cpp -o CMakeFiles/mymuduo.dir/src/Channel.cpp.s

CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/DefaultPoller.cpp
CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o -MF CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o.d -o CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/DefaultPoller.cpp

CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/DefaultPoller.cpp > CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.i

CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/DefaultPoller.cpp -o CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.s

CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/EPollerPoller.cpp
CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o -MF CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o.d -o CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/EPollerPoller.cpp

CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/EPollerPoller.cpp > CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.i

CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/EPollerPoller.cpp -o CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.s

CMakeFiles/mymuduo.dir/src/Poller.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/Poller.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/Poller.cpp
CMakeFiles/mymuduo.dir/src/Poller.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mymuduo.dir/src/Poller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/Poller.cpp.o -MF CMakeFiles/mymuduo.dir/src/Poller.cpp.o.d -o CMakeFiles/mymuduo.dir/src/Poller.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/Poller.cpp

CMakeFiles/mymuduo.dir/src/Poller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/Poller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/Poller.cpp > CMakeFiles/mymuduo.dir/src/Poller.cpp.i

CMakeFiles/mymuduo.dir/src/Poller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/Poller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/Poller.cpp -o CMakeFiles/mymuduo.dir/src/Poller.cpp.s

CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/inetAddress.cpp
CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o -MF CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o.d -o CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/inetAddress.cpp

CMakeFiles/mymuduo.dir/src/inetAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/inetAddress.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/inetAddress.cpp > CMakeFiles/mymuduo.dir/src/inetAddress.cpp.i

CMakeFiles/mymuduo.dir/src/inetAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/inetAddress.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/inetAddress.cpp -o CMakeFiles/mymuduo.dir/src/inetAddress.cpp.s

CMakeFiles/mymuduo.dir/src/logger.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/logger.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/logger.cpp
CMakeFiles/mymuduo.dir/src/logger.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mymuduo.dir/src/logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/logger.cpp.o -MF CMakeFiles/mymuduo.dir/src/logger.cpp.o.d -o CMakeFiles/mymuduo.dir/src/logger.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/logger.cpp

CMakeFiles/mymuduo.dir/src/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/logger.cpp > CMakeFiles/mymuduo.dir/src/logger.cpp.i

CMakeFiles/mymuduo.dir/src/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/logger.cpp -o CMakeFiles/mymuduo.dir/src/logger.cpp.s

CMakeFiles/mymuduo.dir/src/test.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/test.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/test.cpp
CMakeFiles/mymuduo.dir/src/test.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mymuduo.dir/src/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/test.cpp.o -MF CMakeFiles/mymuduo.dir/src/test.cpp.o.d -o CMakeFiles/mymuduo.dir/src/test.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/test.cpp

CMakeFiles/mymuduo.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/test.cpp > CMakeFiles/mymuduo.dir/src/test.cpp.i

CMakeFiles/mymuduo.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/test.cpp -o CMakeFiles/mymuduo.dir/src/test.cpp.s

CMakeFiles/mymuduo.dir/src/timestamp.cpp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/src/timestamp.cpp.o: /home/yzq/github/myMuduo/my_muduo/src/timestamp.cpp
CMakeFiles/mymuduo.dir/src/timestamp.cpp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/mymuduo.dir/src/timestamp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/src/timestamp.cpp.o -MF CMakeFiles/mymuduo.dir/src/timestamp.cpp.o.d -o CMakeFiles/mymuduo.dir/src/timestamp.cpp.o -c /home/yzq/github/myMuduo/my_muduo/src/timestamp.cpp

CMakeFiles/mymuduo.dir/src/timestamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/src/timestamp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yzq/github/myMuduo/my_muduo/src/timestamp.cpp > CMakeFiles/mymuduo.dir/src/timestamp.cpp.i

CMakeFiles/mymuduo.dir/src/timestamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/src/timestamp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yzq/github/myMuduo/my_muduo/src/timestamp.cpp -o CMakeFiles/mymuduo.dir/src/timestamp.cpp.s

# Object files for target mymuduo
mymuduo_OBJECTS = \
"CMakeFiles/mymuduo.dir/src/Channel.cpp.o" \
"CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o" \
"CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o" \
"CMakeFiles/mymuduo.dir/src/Poller.cpp.o" \
"CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o" \
"CMakeFiles/mymuduo.dir/src/logger.cpp.o" \
"CMakeFiles/mymuduo.dir/src/test.cpp.o" \
"CMakeFiles/mymuduo.dir/src/timestamp.cpp.o"

# External object files for target mymuduo
mymuduo_EXTERNAL_OBJECTS =

mymuduo: CMakeFiles/mymuduo.dir/src/Channel.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/DefaultPoller.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/EPollerPoller.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/Poller.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/inetAddress.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/logger.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/test.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/src/timestamp.cpp.o
mymuduo: CMakeFiles/mymuduo.dir/build.make
mymuduo: CMakeFiles/mymuduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yzq/github/myMuduo/my_muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable mymuduo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mymuduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mymuduo.dir/build: mymuduo
.PHONY : CMakeFiles/mymuduo.dir/build

CMakeFiles/mymuduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mymuduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mymuduo.dir/clean

CMakeFiles/mymuduo.dir/depend:
	cd /home/yzq/github/myMuduo/my_muduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yzq/github/myMuduo/my_muduo /home/yzq/github/myMuduo/my_muduo /home/yzq/github/myMuduo/my_muduo/build /home/yzq/github/myMuduo/my_muduo/build /home/yzq/github/myMuduo/my_muduo/build/CMakeFiles/mymuduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mymuduo.dir/depend

