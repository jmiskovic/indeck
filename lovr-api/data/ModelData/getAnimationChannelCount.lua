return {
  summary = 'Get the number of channels in an animation.',
  description = [[
    Returns the number of channels in an animation.

    A channel is a set of keyframes for a single property of a node.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of an animation.'
    },
    name = {
      type = 'string',
      description = 'The name of an animation.'
    }
  },
  returns = {
    count = {
      type = 'number',
      description = 'The number of channels in the animation.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'count' }
    },
    {
      arguments = { 'name' },
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getAnimationNode',
    'ModelData:getAnimationProperty'
  }
}
