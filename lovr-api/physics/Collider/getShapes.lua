return {
  summary = 'Get a list of Shapes attached to the Collider.',
  description = 'Returns a list of Shapes attached to the Collider.',
  arguments = {},
  returns = {
    shapes = {
      type = 'table',
      description = 'A list of Shapes attached to the Collider.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'shapes' }
    }
  },
  related = {
    'Collider:addShape',
    'Collider:removeShape',
    'Shape'
  }
}
