return {
  tag = 'graphics-objects',
  summary = 'Create a new Model.',
  description = [[
    Loads a 3D model from a file.  Currently, OBJ, glTF, and binary STL files are supported.
  ]],
  arguments = {
    filename = {
      type = 'string',
      description = 'The path to model file.'
    },
    blob = {
      type = 'Blob',
      description = 'A Blob containing 3D model data.'
    },
    modelData = {
      type = 'ModelData',
      description = 'An existing ModelData object to use for the Model.'
    },
    options = {
      type = 'table',
      description = 'Model options.',
      table = {
        {
          name = 'mipmaps',
          type = 'boolean',
          default = 'true',
          description = 'Whether the textures created for the Model should have mipmaps generated.'
        }
      }
    }
  },
  returns = {
    model = {
      type = 'Model',
      description = 'The new Model.'
    }
  },
  variants = {
    {
      arguments = { 'filename', 'options' },
      returns = { 'model' }
    },
    {
      arguments = { 'blob', 'options' },
      returns = { 'model' }
    },
    {
      arguments = { 'modelData', 'options' },
      returns = { 'model' }
    }
  },
  notes = [[
    Currently, the following features are not supported by the model importer:

    - glTF: Morph targets are not supported.
    - glTF: Only the default scene is loaded.
    - glTF: Currently, each skin in a Model can have up to 256 joints.
    - glTF: Meshes can't appear multiple times in the node hierarchy with different skins, they need
      to use 1 skin consistently.
    - glTF: `KHR_texture_transform` is supported, but all textures in a material will use the same
      transform.
    - STL: ASCII STL files are not supported.

    Diffuse and emissive textures will be loaded using sRGB encoding, all other textures will be
    loaded as linear.
  ]],
  related = {
    'lovr.data.newModelData',
    'Pass:draw'
  }
}
