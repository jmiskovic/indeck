return {
  summary = 'Get the bounciness of the Collider.',
  description = [[
    Returns the restitution (bounciness) of the Collider.  By default, the restitution of two
    Colliders is combined (the max is used) when they collide to cause them to bounce away from each
    other.  The initial restitution is 0.
  ]],
  arguments = {},
  returns = {
    restitution = {
      type = 'number',
      description = 'The restitution of the Collider.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'restitution' }
    }
  },
  related = {
    'Collider:getFriction',
    'Collider:setFriction',
    'World:collide'
  }
}
