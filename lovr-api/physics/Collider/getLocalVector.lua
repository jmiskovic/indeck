return {
  summary = 'Convert a vector from world space to local space.',
  description = [[
    Converts a direction vector from world space to local space.
  ]],
  arguments = {
    wx = {
      type = 'number',
      description = 'The x component of the world vector.'
    },
    wy = {
      type = 'number',
      description = 'The y component of the world vector.'
    },
    wz = {
      type = 'number',
      description = 'The z component of the world vector.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x coordinate of the local vector.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the local vector.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the local vector.'
    }
  },
  variants = {
    {
      arguments = { 'wx', 'wy', 'wz' },
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Collider:getWorldVector',
    'Collider:getLocalPoint',
    'Collider:getWorldPoint'
  }
}
