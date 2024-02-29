return {
  tag = 'canvas',
  summary = 'Get the Pass\'s canvas.',
  description = [[
    Returns the Pass's canvas, or `nil` if the Pass doesn't have a canvas.  The canvas is a set of
    textures that the Pass will draw to when it's submitted.
  ]],
  arguments = {},
  returns = {
    canvas = {
      type = 'table',
      description = [[
        The canvas.  Numeric keys will contain the color Textures, along with the following keys:
      ]],
      table = {
        {
          name = 'depth',
          type = '*',
          description = 'A `Texture` or `TextureFormat` with the depth buffer.'
        },
        {
          name = 'samples',
          type = 'number',
          description = 'The number of multisamples used for antialiasing (either 1 or 4).'
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'canvas' }
    },
    {
      description = 'This function returns nil when a canvas hasn\'t been set.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    If the Pass has multiple color textures, a fragment shader should be used to write a different
    color to each texture.  Here's an example that writes red to the first texture and blue to the
    second texture:

        // Declare an output variable for the second texture
        layout(location = 1) out vec4 secondColor;

        vec4 lovrmain() {
          secondColor = vec4(0, 0, 1, 1);
          return vec4(1, 0, 0, 1);
        }
  ]],
  related = {
    'Pass:getClear',
    'Pass:setClear',
    'Pass:getWidth',
    'Pass:getHeight',
    'Pass:getDimensions'
  }
}
