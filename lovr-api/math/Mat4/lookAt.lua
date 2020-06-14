return {
  summary = 'Create a transform that makes a viewer look at a target.',
  description = [[
    Sets a transform matrix that positions a viewer so that it looks at a target point.
  ]],
  arguments = {
    {
      name = 'from',
      type = 'Vec3',
      description = 'The position of the viewer.'
    },
    {
      name = 'to',
      type = 'Vec3',
      description = 'The position of the target.'
    },
    {
      name = 'up',
      type = 'Vec3',
      default = 'Vec3(0, 1, 0)',
      description = 'The up vector of the viewer.'
    }
  },
  returns = {
    {
      name = 'm',
      type = 'Mat4',
      description = 'The original matrix.'
    }
  },
  related = {
    'Quat:direction'
  }
}
