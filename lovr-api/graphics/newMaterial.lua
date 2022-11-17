return {
  tag = 'graphics-objects',
  summary = 'Create a new Material.',
  description = [[
    Creates a new Material from a table of properties and textures.  All fields are optional.  Once
    a Material is created, its properties can not be changed.  Instead, a new Material should be
    created with the updated properties.
  ]],
  arguments = {
    properties = {
      type = 'table',
      description = 'Material properties.',
      table = {
        {
          name = 'color',
          type = 'Vec4',
          default = '{ 1, 1, 1, 1 }',
          description = [[
            The base color of the surface.  Can be a `Vec3`, `Vec4`, table of numbers, or hexcode.
            Can be toggled in shaders using the `materialColor` flag, which defaults to `true`.
          ]]
        },
        {
          name = 'glow',
          type = 'Vec4',
          default = '{ 0, 0, 0, 0 }',
          description = [[
            The glow color of the surface, sometimes called "emissive".  The glow is not affected by
            lighting, so it's a good fit for e.g. headlights on a car or LED lights on a panel.  The
            alpha of the glow color is used as the glow strength.  Can be a `Vec3`, `Vec4`, table of
            numbers, or hexcode.  Can be toggled in shaders using the `glow` flag, which defaults to
            `false`.
          ]]
        },
        {
          name = 'uvShift',
          type = 'Vec2',
          default = '{ 0, 0 }',
          description = [[
            An offset to apply to the UV coordinates used to sample textures.  The offset is not
            affected by `uvScale`.  This can be used to map UV coordinates to a sub-rectangle of a
            texture atlas.  Can be a `Vec2`, table of numbers, or a single number which gets
            assigned to both axes.  Can be toggled in shaders using the `uvTransform` flag, which
            defaults to `true`.
          ]]
        },
        {
          name = 'uvScale',
          type = 'Vec2',
          default = '{ 1, 1 }',
          description = [[
            A scale factor to apply to the UV coordinates used to sample textures.  The scale is not
            affected by `uvOffset`.  This can be used to map UV coordinates to a sub-rectangle of a
            texture atlas, or repeat a texture multiple times across a surface.  Can be a `Vec2`,
            table of numbers, or a single number which gets assigned to both axes. Can be toggled in
            shaders using the `uvTransform` flag, which defaults to `true`.
          ]]
        },
        {
          name = 'metalness',
          type = 'number',
          default = '0',
          description = [[
            The metalness the surface, used for physically-based rendering.  1.0 means the surface
            is metallic (conductor), and 0.0 means the surface is non-metallic (dielectric).  Values
            in between are seldom used and are only used in textures to transition between a
            metallic and non-metallic surface.  Metals reflect light differently than non-metals.
            Used by the lighting helper functions `initSurface` and `getLighting`.
          ]]
        },
        {
          name = 'roughness',
          type = 'number',
          default = '0',
          description = [[
            The roughness of the surface, used for physically-based rendering.  1.0 means the
            surface is rough (blurry reflections), and 0.0 means the surface is smooth (sharp
            reflections).  Used by the lighting helper functions `initSurface` and `getLighting`.
          ]]
        },
        {
          name = 'clearcoat',
          type = 'number',
          default = '0',
          description = 'The clearcoat factor.  Not currently used by LÖVR.'
        },
        {
          name = 'clearcoatRoughness',
          type = 'number',
          default = '0',
          description = 'The roughness of the clearcoat layer.  Not currently used by LÖVR.'
        },
        {
          name = 'occlusionStrength',
          type = 'number',
          default = '1',
          description = [[
            The strength of the ambient occlusion effect.  Ambient occlusion only affects indirect
            lighting.  Used by the lighting helper functions `initSurface` and
            `getIndirectLighting`.  Can be toggled in shaders using the `ambientOcclusion` flag,
            which defaults to `true`.
          ]]
        },
        {
          name = 'normalScale',
          type = 'number',
          default = '1',
          description = [[
            The strength of the normal map.  Used by the `initSurface` function to bend the surface
            normal.  Can be toggled in shaders using the `normalMap` flag, which defaults to
            `false`.
          ]]
        },
        {
          name = 'alphaCutoff',
          type = 'number',
          default = '0',
          description = [[
            The alpha cutoff.  At the end of the fragment shader, if the alpha of the final color is
            below the alpha cutoff, then the pixel will be "discarded" which means that it won't
            write a depth value.  Often used for transparent textures, especially with the "alpha to
            coverage" state set by `Pass:setAlphaToCoverage`.  Can be toggled in shaders using the
            `alphaCutoff` flag, which defaults to `false`.
          ]]
        },
        {
          name = 'texture',
          type = 'Texture',
          description = [[
            The base color texture.  In shaders this gets multiplied with the `color` property to
            get the base color of the pixel.  Can be toggled in shaders using the `colorTexture`
            flag, which defaults to `true`.
          ]]
        },
        {
          name = 'glowTexture',
          type = 'Texture',
          description = [[
            The glow color texture.  In shaders, samples from this texture get multiplied with the
            `glow` property to get the glow color of the pixel.  Can be toggled in shaders using the
            `glowTexture` flag, which defaults to `true` (also requires the `glow` flag to be
            enabled).
          ]]
        },
        {
          name = 'metalnessTexture',
          type = 'Texture',
          description = [[
            The metalness texture.  In shaders, samples from the blue channel of this texture get
            multiplied with the `metalness` property to get the metalness value of the pixel.  Can
            be toggled in shaders using the `metalnessTexture` flag, which defaults to `true`.
          ]]
        },
        {
          name = 'roughnessTexture',
          type = 'Texture',
          description = [[
            The roughness texture.  In shaders, samples from the green channel of this texture get
            multiplied with the `roughness` property to get the roughness value of the pixel.  Can
            be toggled in shaders using the `roughnessTexture` flag, which defaults to `true`.
          ]]
        },
        {
          name = 'clearcoatTexture',
          type = 'Texture',
          description = 'Not currently used by LÖVR.'
        },
        {
          name = 'occlusionTexture',
          type = 'Texture',
          description = [[
            The ambient occlusion texture.  In shaders, samples from the red channel of this texture
            get multiplied with the `occlusionStrength` property to get the ambient occlusion value
            of the pixel. Used by the lighting helper functions `initSurface` and
            `getIndirectLighting`.  Can be toggled in shaders using the `ambientOcclusion` flag,
            which defaults to `true`.
          ]]
        },
        {
          name = 'normalTexture',
          type = 'Texture',
          description = [[
            The normal map, used to apply details to a surface without adding mesh geometry.  The
            `normalScale` property can be used to control how strong the effect is.  Can be toggled
            in shaders using the `normalMap` flag, which defaults to `false`.
          ]]
        }
      }
    }
  },
  returns = {
    material = {
      type = 'Material',
      description = 'The new material.'
    }
  },
  variants = {
    {
      arguments = { 'properties' },
      returns = { 'material' }
    }
  },
  notes = [[
    The non-texture material properties can be accessed in shaders using `Material.<property>`,
    where the property is the same as the Lua table key.  The textures use capitalized names in
    shader code, e.g. `ColorTexture`.
  ]]
}
