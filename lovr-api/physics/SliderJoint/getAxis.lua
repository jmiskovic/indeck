return {
  summary = 'Get the SliderJoint\'s axis.',
  description = 'Returns the axis of the slider.',
  arguments = {},
  returns = {
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
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  }
}
