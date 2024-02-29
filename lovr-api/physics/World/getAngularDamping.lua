return {
  tag = 'worldProperties',
  summary = 'Get the angular damping of the World.',
  description = [[
    Returns the angular damping parameters of the World.  Angular damping makes things less
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
    This sets the default damping for newly-created colliders.  Damping can also be set on a
    per-collider basis using `Collider:setAngularDamping`.
  ]],
  related = {
    'Collider:getAngularDamping',
    'Collider:setAngularDamping'
  }
}
