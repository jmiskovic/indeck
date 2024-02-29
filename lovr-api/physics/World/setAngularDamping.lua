return {
  tag = 'worldProperties',
  summary = 'Set the angular damping of the World.',
  description = [[
    Sets the angular damping of the World.  Angular damping makes things less "spinny", making them
    slow down their angular velocity over time. Damping is only applied when angular velocity
    is over the threshold value.
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
    This sets the default damping for newly-created colliders.  Damping can also be set on a
    per-collider basis using `Collider:setAngularDamping`.
  ]],
  related = {
    'Collider:getAngularDamping',
    'Collider:setAngularDamping'
  }
}
