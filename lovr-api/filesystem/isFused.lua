return {
  tag = 'filesystem-virtual',
  summary = 'Check if the project is fused.',
  description = 'Returns whether the current project source is fused to the executable.',
  arguments = {},
  returns = {
    fused = {
      type = 'boolean',
      description = 'Whether or not the project is fused.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'fused' }
    }
  }
}
