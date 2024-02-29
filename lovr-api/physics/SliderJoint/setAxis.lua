return {
  summary = 'Set the SliderJoint\'s axis.',
  description = 'Sets the axis of the slider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x component of the axis.'
    },
    y = {
      type = 'number',
      description = 'The y component of the axis.'
    },
    z = {
      type = 'number',
      description = 'The z component of the axis.'
    },
    axis = {
      type = 'Vec3',
      description = 'The axis.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the axis using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Set the axis using a vector.',
      arguments = { 'axis' },
      returns = {}
    }
  }
}
