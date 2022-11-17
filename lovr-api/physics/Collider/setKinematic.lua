return {
  summary = 'Set whether the Collider is kinematic.',
  description = 'Sets whether the Collider is kinematic.',
  arguments = {
    kinematic = {
      type = 'boolean',
      description = 'Whether the Collider is kinematic.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'kinematic' },
      returns = {}
    }
  },
  notes = [[
    Kinematic colliders behave as though they have infinite mass, ignoring external forces like
    gravity, joints, or collisions (though non-kinematic colliders will collide with them). They can
    be useful for static objects like floors or walls.
  ]]
}
