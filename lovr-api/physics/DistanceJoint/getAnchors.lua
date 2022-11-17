return {
  summary = 'Get the anchor points of the DistanceJoint.',
  description = 'Returns the anchor points of the DistanceJoint.',
  arguments = {},
  returns = {
    x1 = {
      type = 'number',
      description = 'The x coordinate of the first anchor point, in world coordinates.'
    },
    y1 = {
      type = 'number',
      description = 'The y coordinate of the first anchor point, in world coordinates.'
    },
    z1 = {
      type = 'number',
      description = 'The z coordinate of the first anchor point, in world coordinates.'
    },
    x2 = {
      type = 'number',
      description = 'The x coordinate of the second anchor point, in world coordinates.'
    },
    y2 = {
      type = 'number',
      description = 'The y coordinate of the second anchor point, in world coordinates.'
    },
    z2 = {
      type = 'number',
      description = 'The z coordinate of the second anchor point, in world coordinates.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x1', 'y1', 'z1', 'x2', 'y2', 'z2' }
    }
  }
}
