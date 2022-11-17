return {
  summary = 'Get the number of MSAA samples in the Texture.',
  description = [[
    Returns the number of samples in the texture.  Multiple samples are used for multisample
    antialiasing when rendering to the texture.  Currently, the sample count is either 1 (not
    antialiased) or 4 (antialiased).
  ]],
  arguments = {},
  returns = {
    samples = {
      type = 'number',
      description = 'The number of samples in the Texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'samples' }
    }
  },
  related = {
    'lovr.graphics.newTexture',
    'Pass:getSampleCount'
  }
}
