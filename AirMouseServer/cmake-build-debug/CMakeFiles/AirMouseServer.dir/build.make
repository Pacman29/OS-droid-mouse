# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/pacman29/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/pacman29/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/AirMouseServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AirMouseServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AirMouseServer.dir/flags.make

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o: ../DiscoveryServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/DiscoveryServer.cpp"

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/DiscoveryServer.cpp" > CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.i

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/DiscoveryServer.cpp" -o CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.s

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.requires

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.provides: CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.provides

CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o


CMakeFiles/AirMouseServer.dir/main.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AirMouseServer.dir/main.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/main.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/main.cpp"

CMakeFiles/AirMouseServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/main.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/main.cpp" > CMakeFiles/AirMouseServer.dir/main.cpp.i

CMakeFiles/AirMouseServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/main.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/main.cpp" -o CMakeFiles/AirMouseServer.dir/main.cpp.s

CMakeFiles/AirMouseServer.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/main.cpp.o.requires

CMakeFiles/AirMouseServer.dir/main.cpp.o.provides: CMakeFiles/AirMouseServer.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/main.cpp.o.provides

CMakeFiles/AirMouseServer.dir/main.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/main.cpp.o


CMakeFiles/AirMouseServer.dir/Message.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/Message.cpp.o: ../Message.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AirMouseServer.dir/Message.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/Message.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/Message.cpp"

CMakeFiles/AirMouseServer.dir/Message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/Message.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/Message.cpp" > CMakeFiles/AirMouseServer.dir/Message.cpp.i

CMakeFiles/AirMouseServer.dir/Message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/Message.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/Message.cpp" -o CMakeFiles/AirMouseServer.dir/Message.cpp.s

CMakeFiles/AirMouseServer.dir/Message.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/Message.cpp.o.requires

CMakeFiles/AirMouseServer.dir/Message.cpp.o.provides: CMakeFiles/AirMouseServer.dir/Message.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/Message.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/Message.cpp.o.provides

CMakeFiles/AirMouseServer.dir/Message.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/Message.cpp.o


CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o: ../TcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpServer.cpp"

CMakeFiles/AirMouseServer.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/TcpServer.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpServer.cpp" > CMakeFiles/AirMouseServer.dir/TcpServer.cpp.i

CMakeFiles/AirMouseServer.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/TcpServer.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpServer.cpp" -o CMakeFiles/AirMouseServer.dir/TcpServer.cpp.s

CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.requires

CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.provides: CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.provides

CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o


CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o: ../TcpSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpSocket.cpp"

CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpSocket.cpp" > CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.i

CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/TcpSocket.cpp" -o CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.s

CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.requires

CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.provides: CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.provides

CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o


CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o: CMakeFiles/AirMouseServer.dir/flags.make
CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o: ../VirtualInput.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o -c "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/VirtualInput.cpp"

CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/VirtualInput.cpp" > CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.i

CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/VirtualInput.cpp" -o CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.s

CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.requires:

.PHONY : CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.requires

CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.provides: CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.requires
	$(MAKE) -f CMakeFiles/AirMouseServer.dir/build.make CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.provides.build
.PHONY : CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.provides

CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.provides.build: CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o


# Object files for target AirMouseServer
AirMouseServer_OBJECTS = \
"CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o" \
"CMakeFiles/AirMouseServer.dir/main.cpp.o" \
"CMakeFiles/AirMouseServer.dir/Message.cpp.o" \
"CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o" \
"CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o" \
"CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o"

# External object files for target AirMouseServer
AirMouseServer_EXTERNAL_OBJECTS =

AirMouseServer: CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/main.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/Message.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o
AirMouseServer: CMakeFiles/AirMouseServer.dir/build.make
AirMouseServer: CMakeFiles/AirMouseServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable AirMouseServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AirMouseServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AirMouseServer.dir/build: AirMouseServer

.PHONY : CMakeFiles/AirMouseServer.dir/build

CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/DiscoveryServer.cpp.o.requires
CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/main.cpp.o.requires
CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/Message.cpp.o.requires
CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/TcpServer.cpp.o.requires
CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/TcpSocket.cpp.o.requires
CMakeFiles/AirMouseServer.dir/requires: CMakeFiles/AirMouseServer.dir/VirtualInput.cpp.o.requires

.PHONY : CMakeFiles/AirMouseServer.dir/requires

CMakeFiles/AirMouseServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AirMouseServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AirMouseServer.dir/clean

CMakeFiles/AirMouseServer.dir/depend:
	cd "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer" "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer" "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug" "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug" "/home/pacman29/Рабочий стол/OS KURS/AirMouse/AirMouseServer/cmake-build-debug/CMakeFiles/AirMouseServer.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/AirMouseServer.dir/depend
