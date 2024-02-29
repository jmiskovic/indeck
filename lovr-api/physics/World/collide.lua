return {
  tag = 'worldCollision',
  summary = 'Attempt to collide two shapes.',
  description = [[
    Attempt to collide two shapes.  Internally this sets up constraint forces to move the shapes'
    colliders apart if they are touching.  The colliders won't actually move until `World:update` is
    called again to advance the physics simulation.

    Collision responses can be customized using friction and restitution (bounciness) parameters,
    and default to using a mix between the parameters of the two colliders.

    Usually this is called internally by `World:update`, or in a custom collision resolver passed to
    `World:update`.

    If you want to detect if objects are touching without colliding them, use `World:getContacts`
    or make one or both of the shapes sensors using `Shape:setSensor`.
  ]],
  arguments = {
    shapeA = {
      type = 'Shape',
      description = 'The first shape.'
    },
    shapeB = {
      type = 'Shape',
      description = 'The second shape.'
    },
    friction = {
      type = 'number',
      default = 'nil',
      description = 'The friction parameter for the collision.'
    },
    restitution = {
      type = 'number',
      default = 'nil',
      description = 'The restitution (bounciness) parameter for the collision.'
    },
  },
  returns = {
    collided = {
      type = 'boolean',
      description = 'Whether the shapes collided.'
    }
  },
  variants = {
    {
      arguments = { 'shapeA', 'shapeB', 'friction', 'restitution' },
      returns = { 'collided' }
    }
  },
  notes = [[
    For friction, numbers in the range of 0-1 are common, but larger numbers can also be used.

    For restitution, numbers in the range 0-1 should be used.

    This function respects collision tags, so using `World:disableCollisionBetween` and
    `World:enableCollisionBetween` will change the behavior of this function.
  ]],
  related = {
    'World:computeOverlaps',
    'World:overlaps',
    'World:disableCollisionBetween',
    'World:enableCollisionBetween',
    'World:isCollisionEnabledBetween',
    'Collider:setFriction',
    'Collider:setRestitution'
  }
}
