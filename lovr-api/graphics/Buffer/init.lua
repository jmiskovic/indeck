return {
  summary = 'A block of memory on the GPU.',
  description = [[
    A Buffer is a block of GPU memory.  Buffers are similar to Lua tables or arrays: they have a
    length and store a list of values.  The length of a Buffer and its format (the type of each
    value) are declared upfront and can't be changed.  Each value of a Buffer consists of one or
    more fields, and each field has a type.  For example, if a Buffer is used to store vertices,
    each value might store 3 fields for the position, normal vector, and UV coordinates of a vertex.

    Buffers are commonly used for:

    - Mesh data: Buffers hold the data that define the vertices in a mesh. Buffers also store the
      vertex indices of a mesh, which define the order the vertices are connected together into
      triangles. These are often called vertex buffers and index buffers.
    - Shader data: Buffers can be bound to a Shader, letting the Shader read arbitrary data. For
      example, Lua code could create a Buffer with the positions and colors of all the lights in a
      scene, which a Shader can use to do lighting calculations.
    - Compute: Compute shaders can write data to Buffers.  This GPU-generated data can be used in
      later rendering work or sent back to Lua.
    - Indirect: Indirect rendering is an advanced technique where instructions for rendering work
      are recorded to a Buffer (potentially by a compute shader) and later drawn.

    There are two types of Buffers:

    - **Temporary** buffers are very inexpensive to create, and writing to them from Lua is fast.
      However, they become invalid at the end of `lovr.draw` (i.e. when `lovr.graphics.submit` is
      called).  The GPU is slightly slower at accessing data from temporary buffers, and compute
      shaders can not write to them.  They are designed for storing data that changes every frame.
    - **Permanent** buffers are more expensive to create, and updating their contents requires a
      transfer from CPU memory to VRAM.  They act like normal LÖVR objects and don't need to be
      recreated every frame.  They often have faster performance when used by the GPU, and compute
      shaders can write to them.  They are great for large pieces of data that are initialized once
      at load time, or data that is updated infrequently.
  ]],
  constructors = {
    'lovr.graphics.getBuffer',
    'lovr.graphics.newBuffer'
  }
}
