return {
  tag = 'camera',
  summary = 'Set the scissor rectangle.',
  description = [[
    Sets the scissor rectangle.  Any pixels outside the scissor rectangle will not be drawn.
  ]],
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'w', 'h' },
      returns = {}
    },
    {
      description = 'Disable the scissor.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    The scissor will apply to all draws in a Pass when the pass is submitted, even if this function
    is called after adding the draws.

    `x` and `y` can not be negative.  `w` and `h` must be positive.

    By default, the scissor is disabled and will cover the entire render area.
  ]],
  related = {
    'Pass:getViewport',
    'Pass:setViewport'
  }
}
