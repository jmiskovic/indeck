return {
  summary = 'A multidimensional block of memory on the GPU.',
  description = [[
    Textures are multidimensional blocks of memory on the GPU, contrasted with `Buffer` objects
    which are one-dimensional.  Textures are used as the destination for rendering operations, and
    textures loaded from images provide surface data to `Material` objects.
  ]],
  constructors = {
    'lovr.graphics.newTexture',
    'Texture:newView'
  }
}
