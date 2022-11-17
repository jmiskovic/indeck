return {
  summary = 'Convert a point from local space to world space.',
  description = 'Convert a point relative to the collider to a point in world coordinates.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the point.'
    },
    y = {
      type = 'number',
      description = 'The y position of the point.'
    },
    z = {
      type = 'number',
      description = 'The z position of the point.'
    }
  },
  returns = {
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
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'wx', 'wy', 'wz' }
    }
  },
  related = {
    'Collider:getLocalPoint',
    'Collider:getLocalVector',
    'Collider:getWorldVector'
  }
}
