return {
  summary = 'Get the current frames per second.',
  description = [[
    Returns the current frames per second, averaged over the last 90 frames.
  ]],
  arguments = {},
  returns = {
    fps = {
      type = 'number',
      description = 'The current FPS.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'fps' }
    }
  }
}
