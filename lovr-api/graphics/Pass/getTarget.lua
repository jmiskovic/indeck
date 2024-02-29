return {
  deprecated = true,
  tag = 'canvas',
  summary = 'Get the textures a render pass is rendering to.',
  description = 'Returns the textures a render pass is rendering to.',
  arguments = {},
  returns = {
    target = {
      type = 'table',
      description = [[
        A table of the color textures targeted by the pass, with an additional `depth` key if the
        pass has a depth texture.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'target' }
    }
  },
  related = {
    'Pass:getClear'
  }
}
