return {
  tag = 'worldCollision',
  summary = 'Get the list of tags the World was created with.',
  description = 'Returns the list of collision tags used when creating the World.',
  arguments = {},
  returns = {
    tags = {
      type = 'table',
      description = 'A table of collision tags (strings).'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'tags' }
    }
  },
  related = {
    'lovr.physics.newWorld',
    'World:enableCollisionBetween',
    'World:disableCollisionBetween',
    'World:isCollisionEnabledBetween'
  }
}
