return {
  summary = 'Get the angular damping of the Collider.',
  description = [[
    Returns the angular damping of the Collider.  Angular damping makes things less "spinny",
    causing them them slow down their angular velocity over time.
  ]],
  arguments = {},
  returns = {
    {
      name = 'damping',
      type = 'number',
      description = 'The angular damping.'
    }
  },
  notes = 'Angular damping can also be set on the World.',
  related = {
    'World:getAngularDamping',
    'World:setAngularDamping'
  }
}
