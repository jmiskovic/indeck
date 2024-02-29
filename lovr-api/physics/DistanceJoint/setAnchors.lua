return {
  summary = 'Set the anchor points of the DistanceJoint.',
  description = 'Sets the anchor points of the DistanceJoint.',
  arguments = {
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
    },
    first = {
      type = 'Vec3',
      description = 'The first anchor point, in world coordinates.'
    },
    second = {
      type = 'Vec3',
      description = 'The second anchor point, in world coordinates.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Sets the anchor points using numbers.',
      arguments = { 'x1', 'y1', 'z1', 'x2', 'y2', 'z2' },
      returns = {}
    },
    {
      description = 'Sets the anchor points using vectors.',
      arguments = { 'first', 'second' },
      returns = {}
    }
  }
}
