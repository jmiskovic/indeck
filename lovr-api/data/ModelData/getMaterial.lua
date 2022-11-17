return {
  summary = 'Get the material properties for a material in the model.',
  description = 'Returns a table with all of the properties of a material.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a material.'
    },
    name = {
      type = 'string',
      description = 'The name of a material.'
    }
  },
  returns = {
    properties = {
      type = 'table',
      description = 'The material properties.',
      table = {
        {
          name = 'color',
          type = 'table',
          description = [[
            The color of the material.  The table contains the `r`, `g`, `b`, and `a` components of the color,
            from 0 to 1.
          ]]
        },
        {
          name = 'glow',
          type = 'table',
          description = [[
            The glow color of the material (sometimes called emissive).  The table contains the `r`,
            `g`, and `b` components of the color from 0 to 1, and a fourth number indicating the
            strength of the glow.
          ]]
        },
        {
          name = 'uvShift',
          type = 'table',
          description = 'A table with 2 numbers indicating an offset to apply to UVs.'
        },
        {
          name = 'uvScale',
          type = 'table',
          description = [[
            A table with 2 numbers indicating a scale to apply to UVs.  By default, shaders apply
            the UV scale before the UV offset.
          ]]
        },
        {
          name = 'metalness',
          type = 'number',
          description = [[
            The metalness parameter of the material.  This is typically 0 or 1.  By default, shaders
            multiply this property with the value from the metalness texture (when present) to get
            the final metalness used for shading.
          ]]
        },
        {
          name = 'roughness',
          type = 'number',
          description = [[
            The roughness parameter of the material.  By default, shaders multiply this property
            with the value from the roughness texture (when present) to get the final roughness used
            for shading.
          ]]
        },
        {
          name = 'clearcoat',
          type = 'number',
          description = 'The clearcoat parameter of the material.'
        },
        {
          name = 'clearcoatRoughness',
          type = 'number',
          description = 'The roughness of the clearcoat layer.'
        },
        {
          name = 'occlusionStrength',
          type = 'number',
          description = [[
            A number multiplied by the value from the ambient occlusion texture to control how
            strong the occlusion effect is.
          ]]
        },
        {
          name = 'normalScale',
          type = 'number',
          description = [[
            A number multiplied by the value from the normal texture to control how strong the
            normal mapping effect is.
          ]]
        },
        {
          name = 'alphaCutoff',
          type = 'number',
          description = [[
            If a pixel has an alpha value less than the alpha cutoff, it will be discarded, which
            prevents it from occluding things behind it.  This is sometimes called "holepunch" or
            "cutout" alpha.  It's useful for textures with transparency.
          ]]
        },
        {
          name = 'texture',
          type = 'number',
          description = 'The index of the Image used for the color texture.',
        },
        {
          name = 'glowTexture',
          type = 'number',
          description = 'The index of the Image used for the glow texture.',
        },
        {
          name = 'occlusionTexture',
          type = 'number',
          description = [[
            The index of the Image used for the ambient occlusion texture.  The red channel of the
            texture is used for ambient occlusion, allowing multiple parameters to use the same
            texture.
          ]]
        },
        {
          name = 'metalnessTexture',
          type = 'number',
          description = [[
            The index of the Image used for the metalness texture.  The blue channel of the texture
            is used for metalness, allowing multiple parameters to use the same texture.
          ]]
        },
        {
          name = 'roughnessTexture',
          type = 'number',
          description = [[
            The index of the Image to use for the roughness texture.  The green channel of the
            texture is used for roughness, allowing multiple parameters to use the same texture.
          ]]
        },
        {
          name = 'clearcoatTexture',
          type = 'number',
          description = [[
            The index of the Image to use for the clearcoat texture.  The red channel of the texture
            is used for the clearcoat parameter, allowing multiple parameters to use the same
            texture.
          ]]
        },
        {
          name = 'normalTexture',
          type = 'number',
          description = 'The index of the Image to use for the normal map.'
        }
      }
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'properties' }
    },
    {
      arguments = { 'name' },
      returns = { 'properties' }
    }
  },
  notes = 'All images are optional and may be `nil`.',
  related = {
    'ModelData:getMaterialCount',
    'ModelData:getMeshMaterial',
    'lovr.graphics.newMaterial',
    'Model:getMaterial'
  }
}
