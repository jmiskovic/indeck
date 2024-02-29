return {
  tag = 'canvas',
  summary = 'Set the clear values of the Pass.',
  description = [[
    Sets the clear values of the pass.  This controls the initial colors of the canvas texture
    pixels at the beginning of the render pass.  For each color texture, it can be one of the
    following:

    - A specific RGBA color value (or number for the depth texture).
    - `true`, to do a "fast clear" to undefined values.  This is useful if the pass is going to end
      up drawing to all of the texture's pixels.
    - `false`, to avoid clearing and load the texture's existing pixels.  This can be slow on mobile
      GPUs.
  ]],
  arguments = {
    hex = {
      type = 'number',
      description = 'A hexcode color to clear all color textures to.'
    },
    r = {
      type = 'number',
      description = 'The red component of the clear color.'
    },
    g = {
      type = 'number',
      description = 'The green component of the clear color.'
    },
    b = {
      type = 'number',
      description = 'The blue component of the clear color.'
    },
    a = {
      type = 'number',
      default = '1.0',
      description = 'The alpha component of the clear color.'
    },
    clear = {
      type = 'boolean',
      description = 'Whether color textures should be cleared.'
    },
    t = {
      type = 'table',
      description = [[
        A table of clear values.  This can be a table of 4 numbers to use for all color textures, or
        it can be a list of boolean and/or RGBA tables to use for each individual color texture.  It
        can also have a `depth` key with a boolean/number for the depth texture's clear.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the clear color for all color textures, using a hexcode.',
      arguments = { 'hex' },
      returns = {}
    },
    {
      description = 'Set the clear color for all color textures, using numbers.',
      arguments = { 'r', 'g', 'b', 'a' },
      returns = {}
    },
    {
      description = 'Set the clear color for all color textures, using a boolean.',
      arguments = { 'clear' },
      returns = {}
    },
    {
      description = [[
        Set the clear color for all color textures using a table, or set clear values for individual
        textures.
      ]],
      arguments = { 't' },
      returns = {}
    }
  },
  notes = [[
    If the depth clear is not given, it will be set to 0.

    All clear colors will default to transparent black (all zeros) when the Pass is created.
  ]],
  related = {
    'Pass:setCanvas',
    'Texture:clear'
  }
}
