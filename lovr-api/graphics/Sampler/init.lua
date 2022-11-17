return {
  summary = 'An object that controls how texture pixels are read.',
  description = [[
    Samplers are objects that control how pixels are read from a texture.  They can control whether
    the pixels are smoothed, whether the texture wraps at the edge of its UVs, and more.

    Each `Pass` has a default sampler that will be used by default, which can be changed using
    `Pass:setSampler`.  Also, samplers can be declared in shaders using the following syntax:

        layout(set = 2, binding = X) uniform sampler mySampler;

    A Sampler can be sent to the variable using `Pass:send('mySampler', sampler)`.

    The properties of a Sampler are immutable, and can't be changed after it's created.
  ]],
  constructors = {
    'lovr.graphics.newSampler'
  }
}
