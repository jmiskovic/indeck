return {
  tag = 'camera',
  summary = 'Get the scissor rectangle.',
  description = [[
    Returns the scissor rectangle, or `nil` if no scissor is set.  Any pixels outside the scissor
    rectangle will not be drawn.
  ]],
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x coordinate of the upper-left corner of the scissor rectangle.',
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the upper-left corner of the scissor rectangle.',
    },
    w = {
      type = 'number',
      description = 'The width of the scissor rectangle.',
    },
    h = {
      type = 'number',
      description = 'The height of the scissor rectangle.',
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'w', 'h' }
    }
  },
  notes = [[
    The scissor will apply to all draws in a Pass when the pass is submitted.

    The default scissor rectangle covers the entire dimensions of the render pass textures.
  ]],
  related = {
    'Pass:getViewport',
    'Pass:setViewport'
  }
}
