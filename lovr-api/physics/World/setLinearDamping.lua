return {
  tag = 'worldProperties',
  summary = 'Set the linear damping of the World.',
  description = [[
    Sets the linear damping of the World.  Linear damping is similar to drag or air resistance,
    slowing down colliders over time as they move.
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
    A linear damping of 0 means colliders won't slow down over time.

    Linear damping can also be set on individual colliders.
  ]],
  related = {
    'Collider:getLinearDamping',
    'Collider:setLinearDamping'
  }
}
