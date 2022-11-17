return {
  description = [[
    Different types of textures.  Textures are multidimensional blocks of GPU memory, and the
    texture's type determines how many dimensions there are, and adds some semantics about what the
    3rd dimension means.
  ]],
  values = {
    {
      name = '2d',
      description = 'A single 2D image, the most common type.'
    },
    {
      name = '3d',
      description = [[
        A 3D image, where a sequence of 2D images defines a 3D volume.  Each mipmap level of a 3D
        texture gets smaller in the x, y, and z axes, unlike cubemap and array textures.
      ]]
    },
    {
      name = 'cube',
      description = [[
        Six square 2D images with the same dimensions that define the faces of a cubemap, used for
        skyboxes or other "directional" images.
      ]]
    },
    {
      name = 'array',
      description = [[
        Array textures are sequences of distinct 2D images that all have the same dimensions.
      ]]
    }
  }
}
