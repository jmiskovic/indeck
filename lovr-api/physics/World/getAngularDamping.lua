return {
  tag = 'worldProperties',
  summary = 'Get the angular damping of the World.',
  description = [[
    Returns the angular damping of the World.  Angular damping makes things less "spinny", making
    them slow down their angular velocity over time.
  ]],
  arguments = {},
  returns = {
    {
      name = 'damping',
      type = 'number',
      description = 'The angular damping.'
    }
  },
  notes = 'Angular damping can also be set on individual colliders.',
  related = {
    'Collider:getAngularDamping',
    'Collider:setAngularDamping'
  }
}
