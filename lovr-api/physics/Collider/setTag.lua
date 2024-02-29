return {
  summary = 'Set the Collider\'s tag.',
  description = 'Sets the Collider\'s tag.',
  arguments = {
    tag = {
      type = 'string',
      description = 'The Collider\'s collision tag.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'tag' },
      returns = {}
    },
    {
      description = 'Clear the Collider\'s tag.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    Collision between tags can be enabled and disabled using `World:enableCollisionBetween` and
    `World:disableCollisionBetween`.
  ]],
  related = {
    'World:disableCollisionBetween',
    'World:enableCollisionBetween',
    'World:isCollisionEnabledBetween',
    'lovr.physics.newWorld'
  }
}
