# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build

# Include any dependencies generated for this target.
include CMakeFiles/OpNovice.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpNovice.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpNovice.dir/flags.make

CMakeFiles/OpNovice.dir/OpNovice.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/OpNovice.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/OpNovice.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpNovice.dir/OpNovice.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/OpNovice.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/OpNovice.cc

CMakeFiles/OpNovice.dir/OpNovice.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/OpNovice.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/OpNovice.cc > CMakeFiles/OpNovice.dir/OpNovice.cc.i

CMakeFiles/OpNovice.dir/OpNovice.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/OpNovice.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/OpNovice.cc -o CMakeFiles/OpNovice.dir/OpNovice.cc.s

CMakeFiles/OpNovice.dir/OpNovice.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/OpNovice.cc.o.requires

CMakeFiles/OpNovice.dir/OpNovice.cc.o.provides: CMakeFiles/OpNovice.dir/OpNovice.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/OpNovice.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/OpNovice.cc.o.provides

CMakeFiles/OpNovice.dir/OpNovice.cc.o.provides.build: CMakeFiles/OpNovice.dir/OpNovice.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceRunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceRunAction.cc

CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceRunAction.cc > CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceRunAction.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o


CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsListMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsListMessenger.cc

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsListMessenger.cc > CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.i

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsListMessenger.cc -o CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.s

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceStackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceStackingAction.cc

CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceStackingAction.cc > CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceStackingAction.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingVerbose.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingVerbose.cc

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingVerbose.cc > CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingVerbose.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceActionInitialization.cc

CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceActionInitialization.cc > CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceActionInitialization.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o


CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorMessenger.cc

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorMessenger.cc > CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.i

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorMessenger.cc -o CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.s

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceDetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceDetectorConstruction.cc

CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceDetectorConstruction.cc > CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceDetectorConstruction.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o


CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorAction.cc

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorAction.cc > CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.i

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePrimaryGeneratorAction.cc -o CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.s

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o


CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingAction.cc

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingAction.cc > CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.i

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNoviceSteppingAction.cc -o CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.s

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o


CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o: CMakeFiles/OpNovice.dir/flags.make
CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o: /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o -c /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsList.cc

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsList.cc > CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.i

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice/src/OpNovicePhysicsList.cc -o CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.s

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.requires:

.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.requires

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.provides: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.requires
	$(MAKE) -f CMakeFiles/OpNovice.dir/build.make CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.provides.build
.PHONY : CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.provides

CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.provides.build: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o


# Object files for target OpNovice
OpNovice_OBJECTS = \
"CMakeFiles/OpNovice.dir/OpNovice.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o" \
"CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o"

# External object files for target OpNovice
OpNovice_EXTERNAL_OBJECTS =

OpNovice: CMakeFiles/OpNovice.dir/OpNovice.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o
OpNovice: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o
OpNovice: CMakeFiles/OpNovice.dir/build.make
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4Tree.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4GMocren.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4visHepRep.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4RayTracer.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4VRML.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4OpenGL.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4gl2ps.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4interfaces.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4persistency.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4analysis.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4error_propagation.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4readout.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4physicslists.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4parmodels.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4FR.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4vis_management.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4modeling.so
OpNovice: /usr/lib/x86_64-linux-gnu/libGLU.so
OpNovice: /usr/lib/x86_64-linux-gnu/libGL.so
OpNovice: /usr/lib/x86_64-linux-gnu/libSM.so
OpNovice: /usr/lib/x86_64-linux-gnu/libICE.so
OpNovice: /usr/lib/x86_64-linux-gnu/libX11.so
OpNovice: /usr/lib/x86_64-linux-gnu/libXext.so
OpNovice: /usr/lib/x86_64-linux-gnu/libXmu.so
OpNovice: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.2.1
OpNovice: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.2.1
OpNovice: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.2.1
OpNovice: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.2.1
OpNovice: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.2.1
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4run.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4event.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4tracking.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4processes.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4zlib.so
OpNovice: /usr/lib/x86_64-linux-gnu/libexpat.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4digits_hits.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4track.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4particles.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4geometry.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4materials.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4graphics_reps.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4intercoms.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4global.so
OpNovice: /home/daniel/Documents/geant4.10.2-install/lib/libG4clhep.so
OpNovice: CMakeFiles/OpNovice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable OpNovice"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpNovice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpNovice.dir/build: OpNovice

.PHONY : CMakeFiles/OpNovice.dir/build

CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/OpNovice.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceRunAction.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsListMessenger.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceStackingAction.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingVerbose.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceActionInitialization.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorMessenger.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceDetectorConstruction.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNovicePrimaryGeneratorAction.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNoviceSteppingAction.cc.o.requires
CMakeFiles/OpNovice.dir/requires: CMakeFiles/OpNovice.dir/src/OpNovicePhysicsList.cc.o.requires

.PHONY : CMakeFiles/OpNovice.dir/requires

CMakeFiles/OpNovice.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpNovice.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpNovice.dir/clean

CMakeFiles/OpNovice.dir/depend:
	cd /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build /home/daniel/.ssh/LAGO-UVG/Geant4/opEjemplo/OpNovice-build/CMakeFiles/OpNovice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpNovice.dir/depend
