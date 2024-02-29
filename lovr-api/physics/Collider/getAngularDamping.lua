return {
  summary = 'Get the angular damping of the Collider.',
  description = [[
    Returns the angular damping parameters of the Collider.  Angular damping makes things less
    "spinny", making them slow down their angular velocity over time.
  ]],
  arguments = {},
  returns = {
    damping = {
      type = 'number',
      description = 'The angular damping.'
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
    When the Collider is created, it will use the world's angular damping value, which is set using
    `World:setAngularDamping`.
  ]],
  related = {
    'World:getAngularDamping',
    'World:setAngularDamping'
  }
}
