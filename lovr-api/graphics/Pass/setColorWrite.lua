return {
  tag = 'pipeline',
  summary = 'Change the color channels affected by drawing.',
  description = [[
    Sets the color channels affected by drawing, on a per-channel basis.  Disabling color writes is
    often used to render to the depth or stencil buffer without affecting existing pixel colors.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the canvas texture to update.'
    },
    r = {
      type = 'boolean',
      description = 'Whether the red component should be affected by draws.'
    },
    g = {
      type = 'boolean',
      description = 'Whether the green component should be affected by draws.'
    },
    b = {
      type = 'boolean',
      description = 'Whether the blue component should be affected by draws.'
    },
    a = {
      type = 'boolean',
      description = 'Whether the alpha component should be affected by draws.'
    },
    enable = {
      type = 'boolean',
      description = 'Whether all color components should be affected by draws.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    },
    {
      arguments = { 'r', 'g', 'b', 'a' },
      returns = {}
    },
    {
      arguments = { 'index', 'enable' },
      returns = {}
    },
    {
      arguments = { 'index', 'r', 'g', 'b', 'a' },
      returns = {}
    }
  },
  notes = 'By default, color writes are enabled for all channels.',
  related = {
    'Pass:setDepthWrite',
    'Pass:setStencilWrite'
  }
}
