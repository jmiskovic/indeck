return {
  tag = 'headset-misc',
  summary = 'Get the Texture for the headset display.',
  description = [[
    Returns a Texture that will be submitted to the headset display.  This will be the render target
    used in the headset's render pass.  The texture is not guaranteed to be the same every frame,
    and must be called every frame to get the current texture.
  ]],
  arguments = {},
  returns = {
    texture = {
      type = 'Texture',
      description = 'The headset texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'texture' }
    }
  },
  notes = [[
    This function may return `nil` if the headset is not being rendered to this frame.
  ]],
  related = {
    'lovr.headset.getPass',
    'lovr.mirror'
  }
}
