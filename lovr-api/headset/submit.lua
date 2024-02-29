return {
  tag = 'headset-misc',
  summary = 'Submit a frame to the headset display.',
  description = [[
    Submits the current headset texture to the VR display.  This should be called after calling
    `lovr.graphics.submit` with the headset render pass.  Normally this is taken care of by
    `lovr.run`.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  related = {
    'lovr.headset.getPass',
    'lovr.headset.getTexture'
  }
}
