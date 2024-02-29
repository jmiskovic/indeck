return {
  tag = 'shapes',
  summary = 'Create a new TerrainShape.',
  description = 'Creates a new TerrainShape.',
  arguments = {
    scale = {
      type = 'number',
      description = 'The width and depth of the terrain, in meters.'
    },
    heightmap = {
      type = 'Image',
      description = [[
        A heightmap image describing the terrain elevation at different points.  The red channel
        brightness of each pixel determines the elevation at corresponding coordinates.
      ]]
    },
    stretch = {
      type = 'number',
      default = '1.0',
      description = [[
        A vertical multiplier for height values to obtain terrain height.  When the image format has
        pixel values only in the 0 to 1 range, this can be used to scale the height to meters.
      ]]
    },
    callback = {
      type = 'function',
      arguments = {
        {
          name = 'x',
          type = 'number'
        },
        {
          name = 'z',
          type = 'number'
        }
      },
      returns = {
        name = 'height',
        type = 'number'
      },
      description = [[
        A function that computes terrain height from x and z coordinates.  The x and z inputs will
        range from `-scale / 2` to `scale / 2`.
      ]]
    },
    samples = {
      type = 'number',
      default = '100',
      description = [[
        The number of samples taken across the x and z dimensions.  More samples will result in
        higher terrain fidelity, but use more CPU and memory.
      ]]
    }
  },
  returns = {
    terrain = {
      type = 'TerrainShape',
      description = 'The new TerrainShape.'
    }
  },
  variants = {
    {
      description = 'Create a flat floor collider.',
      arguments = { 'scale' },
      returns = { 'terrain' }
    },
    {
      description = 'Create terrain from a heightmap image.',
      arguments = { 'scale', 'heightmap', 'stretch' },
      returns = { 'terrain' }
    },
    {
      description = 'Create terrain defined with a callback function.',
      arguments = { 'scale', 'callback', 'samples' },
      returns = { 'terrain' }
    }
  },
  notes = [[
    A Shape can be attached to a Collider using `Collider:addShape`.
    For immobile terrain use the `Collider:setKinematic`.
  ]],
  related = {
    'TerrainShape',
    'lovr.physics.newBoxShape',
    'lovr.physics.newCapsuleShape',
    'lovr.physics.newCylinderShape',
    'lovr.physics.newMeshShape',
    'lovr.physics.newSphereShape',
    'lovr.data.newImage'
  }
}
