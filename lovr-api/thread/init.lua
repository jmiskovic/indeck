return {
  tag = 'modules',
  summary = 'Allows you to work with background threads.',
  description = [[
    The `lovr.thread` module provides functions for creating threads and communicating between them.

    These are operating system level threads, which are different from Lua coroutines.

    Threads are useful for performing expensive background computation without affecting the
    framerate or performance of the main thread.  Some examples of this include asset loading,
    networking and network requests, and physics simulation.

    Threads come with some limitations though.

    - Threads are completely isolated from other threads.  They do not have access to the variables
      or functions of other threads, and communication between threads must be coordinated through
      `Channel` objects.
    - The graphics module (or any functions that perform rendering) cannot be used in a thread.
      Note that this includes creating graphics objects like Models and Textures.  There are "data"
      equivalent `ModelData` and `TextureData` objects that can be used in threads though.
    - `lovr.event.pump` cannot be called from a thread.
    - Crashes or problems can happen if two threads access the same object at the same time, so
      special care must be taken to coordinate access to objects from multiple threads.
  ]]
}
