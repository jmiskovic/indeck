# inDECK

inDECK is standalone 3D development environment focused on developing VR from within VR. It is a bootstrapped live coding environment. Tools for constructing and modifying code have access to their own source, therefore the development environment can be expanded in same way as rest of the VR world.

The main benefit of this environment is tight iteration loop. When the code is instantaneously synchronized to executing environment, the developing becomes more engaging, productive and fun. Not having to constantly take off and put on the VR headset is also nice. Additionally the environment works in all body positions and might be suitable to people with physical disabilities or back issues.

The focus platform is Oculus Quest with additional BlueTooth keyboard. Although Quest is considered a consumer platform and target for desktop development, inDECK turns it into a standalone development unit. The application runs even if hand controllers are not found.

The project is written in Lua and runs on top of [LÖVR framework](https://lovr.org/). LÖVR provides means to draw graphics, simulate physics, play audio, handle controller/hand input and access filesystem, all from interpreted Lua code. LÖVR lets the project target most of VR platforms. On Quest the project runs in custom [lovr-oculus-mobile](https://github.com/jmiskovic/lovr-oculus-mobile) fork with support added for keyboard and microphone capture.

At current stage inDECK is useful but somewhat rough. I use it regularly for VR prototyping. The project is to be a minimalistic self-hosted and self-editable environment, and not a feature-full library hidden behind stable API.


# Description

The project consists of 'hosting' part and 'project seed' part. The hosting code initializes and boots up the coding environment, and has recovery mode included. The project seed codebase is a blueprint for user projects. When app is started for first time, all seed source files are copied into user project directory.

Within the inDECK development environment both hosting and project seed parts are not accessible. If they were, it would be easy to make whole environment unusable or unstable with no easy way to recover. Instead users can modify project files that are copied from seed part.

The editor can access and modify all user project files. This includes editor itself, so it is possible to improve editor within the live development environment.


## Editor

The code editor is pretty standard and minimalistic implementation that's mostly modeled after Sublime Text, without the advanced features. The editor is driven by shortcuts without any convenience GUI features.

Note: *editor never asks to save changes - all unsaved progress is lost*.

Editor has ability to execute a single line of code where cursor is located, triggered with Ctrl+Shift+Enter. The code is executed in context of current editor. The result of execution appears in status line on top of editor. This serves as replacement for REPL, as well as a replacement for GUI layer, as more direct way for developer to interact with environment.

The Ctrl+O shortcut is used to list source files, and each line will contain Lua command that opens that file in current editor. Directories are listed before file, and first directory will be the link to parent directory like the .. directory in standard file browsers.

* `Ctrl+Space` centers the editor to be in front of camera
* `Ctrl+P` spawns a new editor
* `Ctrl+Tab` selects next editor
* `Ctrl+W` closes current editor
* `Ctrl+S` stores current editors into a session file
* `Ctrl+L` opens editors loaded from a session file

There are more keyboard shortcuts to be found (and modified as needed) at beginning of editor's source code.


## Code reloading

There are two methods of updating running environment with modified code. First is complete restart of application. All code changes across all files will be applied. Main drawback is that editor context is lost. The restart can also be slow if there's lot of initialization code (loading assets).

The other reload method is the partial hotswap. Editor context is preserved which allows for fast iteration cycles. The hotswap method forces reloading of single specified source code file and it has limitations on what parts of running environment will be affected.

Any stored reference to old functions won't be magically replaced with new variants after hotswap. This is especially problematic for callbacks and changes in initialization parts. The hotswap method works best when used for rapidly iterating on rendering or updating code. These are basic Lua mechanisms without any 'magic', more information on effective usage and limitations can be found [here](https://defold.com/manuals/modules/#hot-reloading-modules) and [here](https://defold.com/manuals/hot-reload/#reloading-scripts).

* `Ctrl+Shift+R` restart the application
* `Ctrl+R` hotswap the user module
* `Esc` exit the app into OS


## Recovery mode

If interpreting project fails due to coding errors, the interpreting environment will fall back to recovery mode. The recovery mode is meant for quickly fixing introduced bug and getting back into main live-coding environment. Recovery mode shows code editor and the stack trace that can be used to jump around code base. When the error is fixed, save the file (Ctrl+S) and reboot the environment (F5).

Unfortunately the project and development environment can still get into unusable state. It could be due to an infinite loop, or too much geometry, or physics engine crashing. These issues are not Lua syntax errors, so recovery mode will not be triggered. In such situations it is possible to manually enter the recovery mode by holding the grip button on right controller while application is starting.

If changes to development environment are not desireable, there are instructions at end of `init.lua` on how to factory reset the environment. It will force the repeated seeding of initial code, which will overwrite all changes to environment files.


# Additional notes

A working knowledge of LÖVR framework is needed to develop useful applications without taking the headset off constantly to look up documentation. While it's not really easy or fast, the environment does include LÖVR API files that list all functions and explanations of parameters. The API docs are accessible by pressing F1 key.

All user files can be found in app's save directory. On Oculus Quest it will be in `/sdcard/Android/data/org.indeck.app/files/`, on desktop you can execute `return lovr.filesystem.getSaveDirectory()` to fetch the path.

To run the inDECK app from ADB, use `adb shell am start org.indeck.app/org.indeck.app.Activity`. Same line can be adjusted for running within Termux shell on Quest.

# TODOs

* editor improvements: search, undo
* preserving information when reloading project (editor context, avatar location)
* scripts to sync the project from Quest to computer (or Termux scripts for Git sync?)
* integrated color picker
* error-catching implemented in user project (without fallback to recovery mode)
