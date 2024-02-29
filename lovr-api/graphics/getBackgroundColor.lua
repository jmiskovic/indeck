return {
  tag = 'graphics-global',
  summary = 'Get the background color.',
  description = [[
    Returns the global background color.  The textures in a render pass will be cleared to this
    color at the beginning of the pass if no other clear option is specified.  Additionally, the
    headset and window will be cleared to this color before rendering.
  ]],
  arguments = {},
  returns = {
    r = {
      type = 'number',
      description = 'The red component of the background color.',
    },
    g = {
      type = 'number',
      description = 'The green component of the background color.',
    },
    b = {
      type = 'number',
      description = 'The blue component of the background color.',
    },
    a = {
      type = 'number',
      description = 'The alpha component of the background color.',
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'r', 'g', 'b', 'a' }
    }
  },
  notes = [[
    Setting the background color in `lovr.draw` will apply on the following frame, since the default
    pass is cleared before `lovr.draw` is called.

    Internally, this color is applied to the default pass objects when retrieving one of them using
    `lovr.headset.getPass` or `lovr.graphics.getWindowPass`.  Both are called automatically by the
    default `lovr.run` implementation.

    Using the background color to clear the display is expected to be more efficient than manually
    clearing after a render pass begins, especially on mobile GPUs.
  ]],
  related = {
    'lovr.graphics.newPass',
    'Pass:setClear',
    'Texture:clear',
    'Pass:fill'
  }
}
