return {
  deprecated = true,
  tag = 'buffer-metadata',
  summary = 'Check if the Buffer is temporary.',
  description = 'Returns whether the Buffer is temporary.',
  arguments = {},
  returns = {
    temporary = {
      type = 'boolean',
      description = 'Whether the Buffer is temporary.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'temporary' }
    }
  },
  related = {
    'lovr.graphics.getBuffer'
  }
}
