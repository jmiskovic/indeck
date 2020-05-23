# inDECK

inDECK is standalone 3D development environment focused on developing VR from within VR. It is a bootstrapped live coding environment. Tools for constructing and modifying codebase have access to their own source, therefore the development environment can be built in same way as rest of the VR world.

The project is written in Lua and runs on top of [LÖVR framework](https://lovr.org/). LÖVR provides means to draw graphics, simulate physics, play audio, handle controller/hand input and to access filesystem, all from Lua code. LÖVR lets the project target most of VR platforms, the focus platform is Oculus Quest.

At current stage inDECK is rough prototype and not yet polished enough for widespread use. 

# Introduction

The project consists of 'core' part and 'seed' part. The core initializes and boots up the coding environment, and has recovery mode included. The 'seed' codebase gets copied into application save area to become a new user project. 

Main project feature is code editor. Currently it is driven by shortcuts without any convenience GUI features.

When code is modified and saved, it will be reinterpreted with introduced changes being visible instantaneously.

If interpreting project fails due to coding errors, the interpreting environment will fall back to recovery mode. The recovery mode is meant for quickly fixing introduced bug and getting back into main live-coding environment. Recovery mode shows editor (hopefully at position of error) and the stack trace that can be used to jump around code base. The source code for recovery mode cannot be modified from within inDECK, otherwise whole environment could become unusable.

# TODOs

* editor improvements: selection, copy/paste, undo
* editor GUI: open files, save as, spawning/closing/moving editors
* live reloading instead of restarting project
* preserving context when reloading project (editor context, avatar location)
* way to switch projects from inside
* mechanism for fetching project files from Quest to computer (or moving to external storage)
