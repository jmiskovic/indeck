return {
  summary = 'Whether a Mesh stores its data on the CPU or GPU.',
  description = 'Whether a Mesh stores its data on the CPU or GPU.',
  values = {
    {
      name = 'cpu',
      description = 'The Mesh will store a copy of the vertices on the CPU.'
    },
    {
      name = 'gpu',
      description = 'The Mesh will not keep a CPU copy, only storing vertices on the GPU.'
    }
  },
  notes = [[
    There are some significant differences and tradeoffs between the two modes:

    - CPU meshes store a second copy of the vertices in RAM, which can be expensive for large
      meshes.
    - When vertices are modified, CPU meshes will update the CPU copy, and only upload to the GPU
      the next time the Mesh is drawn.  GPU meshes, on the other hand, will immediately upload
      modified vertices to the GPU.  This means that calling `Mesh:setVertices` multiple times per
      frame will be faster with a CPU mesh.
    - CPU meshes have an internal vertex buffer that can't be accessed from Lua.
    - CPU meshes can compute their bounding box using `Mesh:computeBoundingBox`.  GPU meshes can't.
  ]],
  related = {
    'lovr.graphics.newMesh'
  }
}
