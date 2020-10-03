return {
  tag = 'callbacks',
  summary = 'Called once at startup.',
  description = [[
    This callback is called once when the app starts.  It should be used to perform initial setup
    work, like loading resources and initializing classes and variables.
  ]],
  arguments = {
    {
      name = 'args',
      type = 'table',
      description = 'The command line arguments provided to the program.'
    }
  },
  returns = {},
  example = [[
    function lovr.load(args)
      model = lovr.graphics.newModel('cena.gltf')
      texture = lovr.graphics.newTexture('cena.png')
      levelGeometry = lovr.graphics.newMesh(1000)
      effects = lovr.graphics.newShader('vert.glsl', 'frag.glsl')
      loadLevel(1)
    end
  ]],
  notes = [[
    If the project was loaded from a restart using `lovr.event.restart`, the return value from the
    previously-run `lovr.restart` callback will be made available to this callback as the `restart`
    key in the `args` table.
  ]],
  related = {
    'lovr.quit'
  }
}
