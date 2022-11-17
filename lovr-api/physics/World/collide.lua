return {
  tag = 'worldCollision',
  summary = 'Attempt to collide two shapes.',
  description = [[
    Attempt to collide two shapes.  Internally this uses joints and forces to ensure the colliders
    attached to the shapes do not pass through each other.  Collisions can be customized using
    friction and restitution (bounciness) parameters, and default to using a mix of the colliders'
    friction and restitution parameters.  Usually this is called automatically by `World:update`.
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
    'World:isCollisionEnabledBetween'
  }
}
