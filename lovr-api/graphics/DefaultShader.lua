return {
  summary = 'Built-in shaders.',
  description = [[
    The set of shaders built in to LÖVR.  These can be passed to `Pass:setShader` or
    `lovr.graphics.newShader` instead of writing GLSL code.  The shaders can be further customized
    by using the `flags` option to change their behavior.  If the active shader is set to `nil`,
    LÖVR picks one of these shaders to use.
  ]],
  values = {
    {
      name = 'unlit',
      description = 'Basic shader without lighting that uses colors and a texture.'
    },
    {
      name = 'normal',
      description = 'Shades triangles based on their normal, resulting in a cool rainbow effect.'
    },
    {
      name = 'font',
      description = 'Renders font glyphs.'
    },
    {
      name = 'cubemap',
      description = 'Renders cubemaps.'
    },
    {
      name = 'equirect',
      description = 'Renders spherical textures.'
    },
    {
      name = 'fill',
      description = 'Renders a fullscreen triangle.'
    }
  }
}
