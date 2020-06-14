return {
  tag = 'worldProperties',
  summary = 'Set the angular damping of the World.',
  description = [[
    Sets the angular damping of the World.  Angular damping makes things less "spinny", making them
    slow down their angular velocity over time.
  ]],
  arguments = {
    {
      name = 'damping',
      type = 'number',
      description = 'The angular damping.'
    }
  },
  returns = {},
  notes = 'Angular damping can also be set on individual colliders.',
  related = {
    'Collider:getAngularDamping',
    'Collider:setAngularDamping'
  }
}
