return {
  summary = 'Get the Collider\'s tag.',
  description = 'Returns the Collider\'s tag.',
  arguments = {},
  returns = {
    tag = {
      type = 'string',
      description = 'The Collider\'s collision tag, or `nil` if the Collider doesn\'t have a tag.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'tag' }
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
