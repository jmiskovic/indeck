return {
  summary = 'Set the angular damping of the Collider.',
  description = [[
    Sets the angular damping of the Collider.  Angular damping makes things less "spinny", causing
    them to slow down their angular velocity over time. Damping is only applied when angular
    velocity is over the threshold value.
  ]],
  arguments = {
    damping = {
      type = 'number',
      description = 'The angular damping.'
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
    When the Collider is created, it will use the world's angular damping value, which is set using
    `World:setAngularDamping`.
  ]],
  related = {
    'World:getAngularDamping',
    'World:setAngularDamping'
  }
}
