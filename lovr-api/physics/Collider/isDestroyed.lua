return {
  summary = 'Check if the Collider has been destroyed.',
  description = 'Returns whether the collider has been destroyed.',
  arguments = {},
  returns = {
    destroyed = {
      type = 'boolean',
      description = 'Whether the collider has been destroyed.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'destroyed' }
    }
  },
  notes = [[
    Calling functions on a collider after destroying it is a bad idea.
  ]],
  related = {
    'Collider:destroy',
    'World:destroy',
    'Shape:destroy',
    'Joint:destroy'
  }
}
