return {
  tag = 'pipeline',
  summary = 'Set the color.',
  description = 'Sets the color used for drawing.  Color components are from 0 to 1.',
  arguments = {
    r = {
      type = 'number',
      description = 'The red component of the color.'
    },
    g = {
      type = 'number',
      description = 'The green component of the color.'
    },
    b = {
      type = 'number',
      description = 'The blue component of the color.'
    },
    a = {
      type = 'number',
      default = '1.0',
      description = 'The alpha component of the color.'
    },
    t = {
      type = 'table',
      descriptioin = 'A table of 3 or 4 color components.'
    },
    hex = {
      type = 'number',
      description = 'A hexcode.'
    }
  },
  returns = {},
  notes = 'The default color is `(1, 1, 1, 1)`.',
  variants = {
    {
      arguments = { 'r', 'g', 'b', 'a' },
      returns = {}
    },
    {
      arguments = { 't' },
      returns = {}
    },
    {
      arguments = { 'hex', 'a' },
      returns = {}
    }
  }
}
