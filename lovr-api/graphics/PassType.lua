return {
  deprecated = true,
  summary = 'Different types of Passes.',
  description = [[
    The three different types of `Pass` objects.  Each Pass has a single type, which determines the
    type of work it does and which functions can be called on it.
  ]],
  values = {
    {
      name = 'render',
      description = [[
        A render pass renders graphics to a set of up to four color textures and an optional depth
        texture.  The textures all need to have the same dimensions and sample counts.  The textures
        can have multiple layers, and all rendering work will be broadcast to each layer.  Each
        layer can use a different camera pose, which is used for stereo rendering.
      ]]
    },
    {
      name = 'compute',
      description = [[
        A compute pass runs compute shaders.  Compute passes usually only call `Pass:setShader`,
        `Pass:send`, and `Pass:compute`.  All of the compute work in a single compute pass is run
        in parallel, so multiple compute passes should be used if one compute pass needs to happen
        after a different one.
      ]]
    },
    {
      name = 'transfer',
      description = [[
        A transfer pass copies data to and from GPU memory in `Buffer` and `Texture` objects.
        Transfer passes use `Pass:copy`, `Pass:clear`, `Pass:blit`, `Pass:mipmap`, and `Pass:read`.
        Similar to compute passes, all the work in a transfer pass happens in parallel, so multiple
        passes should be used if the transfers need to be ordered.
      ]]
    }
  },
  related = {
    'lovr.graphics.getPass',
    'lovr.graphics.submit',
    'Pass:getType'
  }
}
