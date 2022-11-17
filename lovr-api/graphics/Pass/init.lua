return {
  summary = 'A stream of graphics commands.',
  description = [[
    Pass objects are used to record commands for the GPU.  Commands can be recorded by calling
    functions on the Pass.  After recording a set of passes, they can be submitted for the GPU to
    process using `lovr.graphics.submit`.

    Pass objects are **temporary** and only exist for a single frame.  Once `lovr.graphics.submit`
    is called to end the frame, any passes that were created during that frame become **invalid**.
    Each frame, a new set of passes must be created and recorded.  LÖVR tries to detect if you use a
    pass after it's invalid, but this error checking is not 100% accurate at the moment.

    There are 3 types of passes.  Each type can record a specific type of command:

    - `render` passes render graphics to textures.
    - `compute` passes run compute shaders.
    - `transfer` passes can transfer data to/from GPU objects, like `Buffer` and `Texture`.
  ]],
  constructors = {
    'lovr.graphics.getPass',
    'lovr.graphics.getWindowPass',
    'lovr.headset.getPass'
  },
  sections = {
    {
      name = 'Drawing',
      tag = 'drawing',
      description = 'Draw objects and shapes.'
    },
    {
      name = 'Coordinate System',
      tag = 'transform',
      description = 'Manipulate the 3D coordinate system.'
    },
    {
      name = 'Render States',
      tag = 'pipeline',
      description = 'Set render states that change the way drawing happens.'
    },
    {
      name = 'Shader Variables',
      tag = 'shader-inputs',
    },
    {
      name = 'Camera',
      tag = 'camera',
    },
    {
      name = 'Compute',
      tag = 'compute',
    },
    {
      name = 'Transfers',
      tag = 'transfer'
    },
    {
      name = 'Tallies',
      tag = 'tallies'
    },
    {
      name = 'Miscellaneous',
      tag = 'pass-misc'
    }
  }
}
