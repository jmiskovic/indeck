return {
  summary = 'Set the linear damping of the Collider.',
  description = [[
    Sets the Collider's linear damping parameter.  Linear damping is similar to drag or air
    resistance, slowing the Collider down over time.
  ]],
  arguments = {
    {
      name = 'damping',
      type = 'number',
      description = 'The linear damping.'
    }
  },
  returns = {},
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
