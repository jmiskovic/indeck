return {
  tag = 'texture-transfer',
  summary = 'Clear the Texture to a color.',
  description = [[
    Clears layers and mipmaps in a texture to a given color.

    When a Texture is being used as a canvas for a `Pass`, the clear color can be set with
    `Pass:setClear`, which a more efficient way to clear the texture before rendering.
  ]],
  arguments = {
    hex = {
      type = 'number',
      description = 'The hexcode color to clear to.'
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
      description = 'The alpha component of the clear color.'
    },
    t = {
      type = 'table',
      description = 'A table with color components.'
    },
    v3 = {
      type = 'Vec3',
      description = 'A vec3 with the clear color.'
    },
    v4 = {
      type = 'Vec4',
      description = 'A vec4 with the clear color.'
    },
    layer = {
      type = 'number',
      default = '1',
      description = 'The index of the first layer to clear.'
    },
    layerCount = {
      type = 'number',
      default = 'nil',
      description = 'The number of layers to clear.  If nil, clears the rest of the layers.'
    },
    mipmap = {
      type = 'number',
      default = '1',
      description = 'The index of the first mipmap to clear.'
    },
    mipmapCount = {
      type = 'number',
      default = 'nil',
      description = 'The number of mipmaps to clear.  If nil, clears the rest of the mipmaps.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Clear the whole texture to zero (transparent black).',
      arguments = {},
      returns = {}
    },
    {
      arguments = { 'hex', 'layer', 'layerCount', 'mipmap', 'mipmapCount' },
      returns = {}
    },
    {
      arguments = { 'r', 'g', 'b', 'a', 'layer', 'layerCount', 'mipmap', 'mipmapCount' },
      returns = {}
    },
    {
      arguments = { 't', 'layer', 'layerCount', 'mipmap', 'mipmapCount' },
      returns = {}
    },
    {
      arguments = { 'v3', 'layer', 'layerCount', 'mipmap', 'mipmapCount' },
      returns = {}
    },
    {
      arguments = { 'v4', 'layer', 'layerCount', 'mipmap', 'mipmapCount' },
      returns = {}
    }
  },
  notes = [[
    The texture must have been created with the `transfer` usage to clear it.

    The clear color will be interpreted as a linear color for sRGB formats.
  ]],
  related = {
    'Buffer:clear',
    'Texture:setPixels',
    'Pass:setClear'
  }
}
