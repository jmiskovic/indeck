return {
  tag = 'graphics-objects',
  summary = 'Create a new Texture.',
  description = [[
    Creates a new Texture.  Image filenames or `Image` objects can be used to provide the initial
    pixel data and the dimensions, format, and type.  Alternatively, dimensions can be provided,
    which will create an empty texture.
  ]],
  arguments = {
    filename = {
      type = 'string',
      description = 'The filename of an image to load.'
    },
    image = {
      type = 'string',
      description = 'An Image object holding pixel data to load into the Texture.'
    },
    blob = {
      type = 'Blob',
      description = 'A Blob object holding pixel data to load into the Texture.'
    },
    width = {
      type = 'number',
      description = 'The width of the Texture, in pixels.'
    },
    height = {
      type = 'number',
      description = 'The height of the Texture, in pixels.'
    },
    layers = {
      type = 'number',
      description = 'The number of layers in the Texture.'
    },
    images = {
      type = 'table',
      description = 'A table of filenames or Images to load into the Texture.'
    },
    options = {
      type = 'table',
      description = 'Texture options.',
      table = {
        {
          name = 'type',
          type = 'TextureType',
          description = 'The type of the texture.'
        },
        {
          name = 'format',
          type = 'TextureFormat',
          default = [['rgba8']],
          description = 'The format of the texture (ignored when images are provided).'
        },
        {
          name = 'linear',
          type = 'boolean',
          default = 'false',
          description = [[
            Whether the texture is in linear color space instead of sRGB.  Linear textures should be
            used for non-color data, like normal maps.
          ]]
        },
        {
          name = 'samples',
          type = 'number',
          default = '1',
          description = [[
            The number of samples in the texture, used for multisample antialiasing.  Currently must be 1 or 4.  Ignored when images are provided.
          ]]
        },
        {
          name = 'mipmaps',
          type = '*',
          default = 'true',
          description = [[
            The number of mipmap levels in the texture, or a boolean.  If true, a full mipmap chain
            will be created.  If false, the texture will only have a single mipmap.
          ]]
        },
        {
          name = 'usage',
          type = 'table',
          description = 'A list of `TextureUsage` indicating how the texture will be used.'
        },
        {
          name = 'label',
          type = 'string',
          description = 'A label for the Texture that will show up in debugging tools.'
        }
      }
    }
  },
  returns = {
    texture = {
      type = 'Texture',
      description = 'The new Texture.'
    }
  },
  variants = {
    {
      arguments = { 'filename', 'options' },
      returns = { 'texture' }
    },
    {
      arguments = { 'width', 'height', 'options' },
      returns = { 'texture' }
    },
    {
      arguments = { 'width', 'height', 'layers', 'options' },
      returns = { 'texture' }
    },
    {
      arguments = { 'image', 'options' },
      returns = { 'texture' }
    },
    {
      arguments = { 'images', 'options' },
      returns = { 'texture' }
    },
    {
      arguments = { 'blob', 'options' },
      returns = { 'texture' }
    }
  },
  notes = [[
    If no `type` is provided in the options table, LÖVR will guess the `TextureType` of the Texture
    based on the number of layers:

    - If there's only 1 layer, the type will be `2d`.
    - If there are 6 images provided, the type will be `cube`.
    - Otherwise, the type will be `array`.

    Note that an Image can contain multiple layers and mipmaps.  When a single Image is provided,
    its layer count will be used as the Texture's layer count.

    If multiple Images are used to initialize the Texture, they must all have a single layer, and
    their dimensions, format, and mipmap counts must match.

    When providing cubemap images in a table, they can be in one of the following forms:

        { 'px.png', 'nx.png', 'py.png', 'ny.png', 'pz.png', 'nz.png' }
        { right = 'px.png', left = 'nx.png', top = 'py.png', bottom = 'ny.png', back = 'pz.png', front = 'nz.png' }
        { px = 'px.png', nx = 'nx.png', py = 'py.png', ny = 'ny.png', pz = 'pz.png', nz = 'nz.png' }

    (Where 'p' stands for positive and 'n' stands for negative).

    If no `usage` is provided in the options table, LÖVR will guess the `TextureUsage` of the
    Texture.  The `sample` usage is always included, but if the texture was created without any
    images then the texture will have the `render` usage as well.

    The supported image formats are png, jpg, hdr, dds, ktx1, ktx2, and astc.

    If image data is provided, mipmaps will be generated for any missing mipmap levels.
  ]],
  related = {
    'Texture:newView'
  }
}
