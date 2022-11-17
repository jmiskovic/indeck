return {
  tag = 'compute',
  summary = 'Run a compute shader.',
  description = [[
    Runs a compute shader.  Compute shaders are run in 3D grids of workgroups.  Each local workgroup
    is itself a 3D grid of invocations, declared using `local_size_x`, `local_size_y`, and
    `local_size_z` in the shader code.
  ]],
  arguments = {
     x = {
       type = 'number',
       default = '1',
       description = 'How many workgroups to dispatch in the x dimension.'
     },
     y = {
       type = 'number',
       default = '1',
       description = 'How many workgroups to dispatch in the y dimension.'
     },
     z = {
       type = 'number',
       default = '1',
       description = 'How many workgroups to dispatch in the z dimension.'
     },
     buffer = {
       type = 'Buffer',
       description = [[
         A Buffer object containing the x, y, and z workgroup counts, stored as 4 byte unsigned
         integers.
       ]]
     },
     offset = {
       type = 'number',
       default = '0',
       description = 'The byte offset to read the workgroup counts from in the Buffer.'
     }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Perform an "indirect" dispatch, sourcing workgroup counts from a Buffer.',
      arguments = { 'buffer', 'offset' },
      returns = {}
    }
  },
  notes = [[
    All these 3D grids can get confusing, but the basic idea is to make the local workgroup size a
    small block of e.g. 8x8 pixels or 4x4x4 voxels, and then dispatch however many global workgroups
    are needed to cover an image or voxel field.  The reason to do it this way is that the GPU runs
    invocations in bundles called subgroups.  Subgroups are usually 32 or 64 invocations (the exact
    size is given by the `subgroupSize` property of `lovr.graphics.getDevice`).  If the local
    workgroup size was `1x1x1`, then the GPU would only run 1 invocation per subgroup and waste the
    other 31 or 63.
  ]]
}
