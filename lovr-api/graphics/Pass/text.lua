return {
  tag = 'drawing',
  summary = 'Draw text.',
  description = [[
    Draws text.  The font can be changed using `Pass:setFont`.
  ]],
  arguments = {
    text = {
      type = 'string',
      description = 'The text to render.'
    },
    colortext = {
      type = 'table',
      description = [[
        A table of strings with colors to render, in the form `{ color1, string1, color2, string2
      }`, where color is a `Vec3`, `Vec4`, hexcode, or table of numbers.
      ]]
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the text.'
    },
    wrap = {
      type = 'number',
      default = '0',
      description = [[
        The maximum width of each line in meters (before scale is applied).  When zero, the text
        will not wrap.
      ]]
    },
    halign = {
      type = 'HorizontalAlign',
      default = [['center']],
      description = 'The horizontal alignment.'
    },
    valign = {
      type = 'VerticalAlign',
      default = [['middle']],
      description = 'The vertical alignment.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'text', 'transform', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      description = 'Renders multicolor text with a single draw call.',
      arguments = { 'colortext', 'transform', 'wrap', 'halign', 'valign' },
      returns = {}
    }
  },
  notes = [[
    Strings should be encoded as UTF-8.

    Newlines will start a new line of text.  Tabs will be rendered as four spaces.  Carriage returns
    are ignored.

    With the default font pixel density, a scale of 1.0 makes the text height 1 meter.

    The wrap value does not take into account the text's scale.

    Text rendering requires a special shader, which will only be automatically used when the active
    shader is set to `nil`.

    Blending should be enabled when rendering text (it's on by default).

    This function can draw up to 16384 visible characters at a time.
  ]],
  related = {
    'Pass:setFont',
    'lovr.graphics.getDefaultFont',
    'Pass:setShader',
    'Font:getWidth',
    'Font:getHeight',
    'Font:getLines',
    'Font:getVertices',
    'Font'
  }
}
