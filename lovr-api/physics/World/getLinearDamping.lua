return {
  tag = 'worldProperties',
  summary = 'Get the linear damping of the World.',
  description = [[
    Returns the linear damping of the World.  Linear damping is similar to drag or air resistance,
    slowing down colliders over time as they move.
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
    A linear damping of 0 means colliders won't slow down over time.

    Linear damping can also be set on individual colliders.
  ]],
  related = {
    'Collider:getLinearDamping',
    'Collider:setLinearDamping'
  }
}
