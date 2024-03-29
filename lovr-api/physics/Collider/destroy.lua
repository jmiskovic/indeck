return {
  summary = 'Destroy the Collider.',
  description = 'Destroy the Collider, removing it from the World.',
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    Calling functions on the collider after destroying it is a bad idea.
  ]],
  related = {
    'Collider:isDestroyed',
    'World:destroy',
    'Shape:destroy',
    'Joint:destroy'
  }
}
