return {
  summary = 'Set the linear damping of the Collider.',
  description = [[
    Sets the Collider's linear damping parameter.  Linear damping is similar to drag or air
    resistance, slowing the Collider down over time. Damping is only applied when linear
    velocity is over the threshold value.
  ]],
  arguments = {
    damping = {
      type = 'number',
      description = 'The linear damping.'
    },
    threshold = {
      type = 'number',
      default = '0',
      description = 'Velocity limit below which the damping is not applied.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'damping', 'threshold' },
      returns = {}
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
