return {
  tag = 'pipeline',
  summary = 'Set the sampler.',
  description = [[
    Sets the default `Sampler` to use when sampling textures.  It is also possible to send a custom
    sampler to a shader using `Pass:send` and use that instead, which allows customizing the sampler
    on a per-texture basis.
  ]],
  arguments = {
    sampler = {
      type = 'Sampler',
      description = 'The default sampler shaders will use when reading from textures.'
    },
    filter = {
      type = 'FilterMode',
      default = [['linear']],
      description = [[
        The default filter mode to use when sampling textures (the `repeat` wrap mode will be used).
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'filter' },
      returns = {}
    },
    {
      arguments = { 'sampler' },
      returns = {}
    }
  },
  notes = 'The `getPixel` shader helper function will use this sampler.',
  example = [[
    function lovr.draw(pass)
      pass:setSampler('nearest') -- activate minecraft mode
      pass:setMaterial(rock)
      pass:cube(x, y, z)
    end
  ]]
}
