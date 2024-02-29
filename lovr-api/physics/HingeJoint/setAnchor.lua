return {
  summary = 'Set the anchor point of the HingeJoint.',
  description = 'Sets a new anchor point for the HingeJoint.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the anchor point, in world coordinates.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the anchor point, in world coordinates.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the anchor point, in world coordinates.'
    },
    anchor = {
      type = 'Vec3',
      description = 'The anchor point, in world coordinates.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Sets the anchor point using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Sets the anchor point using a vector.',
      arguments = { 'anchor' },
      returns = {}
    }
  }
}
