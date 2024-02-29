return {
  summary = 'Get the linear damping of the Collider.',
  description = [[
    Returns the Collider's linear damping parameters.  Linear damping is similar to drag or air
    resistance, slowing the Collider down over time.
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
    When the Collider is created, it will use the world's linear damping value, which is set using
    `World:setLinearDamping`.

    A linear damping of 0 means the Collider won't slow down over time.
  ]],
  related = {
    'World:getLinearDamping',
    'World:setLinearDamping'
  }
}
