return {
  summary = 'Convert a vector from local space to world space.',
  description = [[
    Converts a direction vector from local space to world space.
  ]],
  arguments = {
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
  returns = {
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
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'wx', 'wy', 'wz' }
    }
  },
  related = {
    'Collider:getLocalVector',
    'Collider:getLocalPoint',
    'Collider:getWorldPoint'
  }
}
