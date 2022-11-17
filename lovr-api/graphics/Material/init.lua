return {
  summary = 'A set of properties and textures that define the properties of a surface.',
  description = [[
    Materials are a set of properties and textures that define the properties of a surface, like
    what color it is, how bumpy or shiny it is, etc. `Shader` code can use the data from a material
    to compute lighting.

    Materials are immutable, and can't be changed after they are created.  Instead, a new Material
    should be created with the updated properties.

    `Pass:setMaterial` changes the active material, causing it to affect rendering until the active
    material is changed again.

    Using material objects is optional.  `Pass:setMaterial` can take a `Texture`, and
    `Pass:setColor` can change the color of objects, so basic tinting and texturing of surfaces does
    not require a full material to be created.  Also, a custom material system could be developed by
    sending textures and other data to shaders manually.

    `Model` objects will create materials for all of the materials defined in the model file.

    In shader code, non-texture material properties can be accessed as `Material.<property>`, and
    material textures can be accessed as `<Type>Texture`, e.g. `RoughnessTexture`.
  ]],
  constructors = {
    'lovr.graphics.newMaterial'
  }
}
