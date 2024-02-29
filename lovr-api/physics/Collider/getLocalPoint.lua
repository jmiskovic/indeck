return {
  summary = 'Convert a point from world space to collider space.',
  description = [[
    Converts a point from world coordinates into local coordinates relative to the Collider.
  ]],
  arguments = {
    wx = {
      type = 'number',
      description = 'The x coordinate of the world point.'
    },
    wy = {
      type = 'number',
      description = 'The y coordinate of the world point.'
    },
    wz = {
      type = 'number',
      description = 'The z coordinate of the world point.'
    },
    point = {
      type = 'Vec3',
      description = 'The world point.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the local-space point.'
    },
    y = {
      type = 'number',
      description = 'The y position of the local-space point.'
    },
    z = {
      type = 'number',
      description = 'The z position of the local-space point.'
    }
  },
  variants = {
    {
      arguments = { 'wx', 'wy', 'wz' },
      returns = { 'x', 'y', 'z' }
    },
    {
      arguments = { 'point' },
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Collider:getWorldPoint',
    'Collider:getLocalVector',
    'Collider:getWorldVector'
  }
}
