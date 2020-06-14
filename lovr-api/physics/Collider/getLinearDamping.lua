return {
  summary = 'Get the linear damping of the Collider.',
  description = [[
    Returns the Collider's linear damping parameter.  Linear damping is similar to drag or air
    resistance, slowing the Collider down over time.
  ]],
  arguments = {},
  returns = {
    {
      name = 'damping',
      type = 'number',
      description = 'The linear damping.'
    }
  },
  notes = [[
    A linear damping of 0 means the Collider won't slow down over time.

    Linear damping can also be set on the World using `World:setLinearDamping`, which will affect
    all new colliders.
  ]],
  related = {
    'World:getLinearDamping',
    'World:setLinearDamping'
  }
}
