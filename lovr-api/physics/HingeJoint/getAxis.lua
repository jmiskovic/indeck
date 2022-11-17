return {
  summary = 'Get the HingeJoint\'s axis.',
  description = 'Returns the axis of the hinge.',
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
