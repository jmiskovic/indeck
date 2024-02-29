return {
  tag = 'worldProperties',
  summary = 'Get the linear damping of the World.',
  description = [[
    Returns the linear damping parameters of the World.  Linear damping is similar to drag or air
    resistance, slowing down colliders over time as they move.
  ]],
  arguments = {},
  returns = {
    damping = {
      type = 'number',
      description = 'The linear damping.'
    },
    threshold = {
      type = 'number',
      description = 'Velocity limit below which the damping is not applied.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'damping', 'threshold' }
    }
  },
  notes = [[
    A linear damping of 0 means colliders won't slow down over time.  This is the default.

    This sets the default damping for newly-created colliders.  Damping can also be set on a
    per-collider basis using `Collider:setLinearDamping`.
  ]],
  related = {
    'Collider:getLinearDamping',
    'Collider:setLinearDamping'
  }
}
