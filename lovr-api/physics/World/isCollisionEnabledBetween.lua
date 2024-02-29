return {
  tag = 'worldCollision',
  summary = 'Check if two tags can collide.',
  description = 'Returns whether collisions are currently enabled between two tags.',
  arguments = {
    tag1 = {
      type = 'string',
      default = 'nil',
      description = 'The first tag, or `nil` to use a wildcard.'
    },
    tag2 = {
      type = 'string',
      default = 'nil',
      description = 'The second tag, or `nil` to use a wildcard.'
    }
  },
  returns = {
    enabled = {
      type = 'boolean',
      description = 'Whether or not two colliders with the specified tags will collide.'
    }
  },
  variants = {
    {
      arguments = { 'tag1', 'tag2' },
      returns = { 'enabled' }
    }
  },
  notes = [[
    Tags must be set up when creating the World, see `lovr.physics.newWorld`.

    By default, collision is enabled between all tags.
  ]],
  related = {
    'lovr.physics.newWorld',
    'World:disableCollisionBetween',
    'World:enableCollisionBetween'
  }
}
