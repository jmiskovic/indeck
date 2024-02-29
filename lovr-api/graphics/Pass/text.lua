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
        A table of strings with colors to render, in the form
        `{ color1, string1, color2, string2 }`, where color is a `Vec3`, `Vec4`, hexcode, or table
        of numbers.
      ]]
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the text origin.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the text origin.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the text origin.'
    },
    scale = {
      type = 'number',
      default = '1',
      description = 'The scale of the text (with the default pixel density, units are meters).'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the text around its rotation axis, in radians.'
    },
    ax = {
      type = 'number',
      default = '0',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      default = '1',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      default = '0',
      description = 'The z component of the axis of rotation.'
    },
    position = {
      type = 'Vec3',
      description = 'The position of the text.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the text.'
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
      description = 'The horizontal alignment relative to the text origin.'
    },
    valign = {
      type = 'VerticalAlign',
      default = [['middle']],
      description = 'The vertical alignment relative to the text origin.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'text', 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      arguments = { 'text', 'position', 'scale', 'orientation', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      arguments = { 'text', 'transform', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      description = 'Renders multicolor text.',
      arguments = { 'colortext', 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      description = 'Renders multicolor text.',
      arguments = { 'colortext', 'position', 'scale', 'orientation', 'wrap', 'halign', 'valign' },
      returns = {}
    },
    {
      description = 'Renders multicolor text.',
      arguments = { 'colortext', 'transform', 'wrap', 'halign', 'valign' },
      returns = {}
    }
  },
  notes = [[
    UTF-8 encoded strings are supported.

    Newlines will start a new line of text.  Tabs will be rendered as four spaces.  Carriage returns
    are ignored.

    With the default font pixel density, a scale of 1.0 makes the text height 1 meter.

    The wrap value does not take into account the text's scale.

    Text rendering requires a special shader, which will only be automatically used when the active
    shader is set to `nil`.

    Blending should be enabled when rendering text (it's on by default).

    This function can draw up to 16384 visible characters at a time, and will currently throw an
    error if the string is too long.
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
