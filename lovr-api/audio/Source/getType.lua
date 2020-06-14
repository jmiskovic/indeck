return {
  summary = 'Get the SourceType of the Source.',
  description = [[
    Returns the SourceType of the Source that controls how the Source decodes audio.  See
    `SourceType` for more info.
  ]],
  arguments = {},
  returns = {
    {
      name = 'type',
      type = 'SourceType',
      description = 'The SourceType of the Source.'
    }
  },
  related = {
    'SourceType',
    'lovr.audio.newSource'
  }
}
