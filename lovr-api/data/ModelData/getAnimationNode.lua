return {
  summary = 'Get the node targeted by the channel of an animation.',
  description = 'Returns the index of a node targeted by an animation\'s channel.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of an animation.'
    },
    name = {
      type = 'string',
      description = 'The name of an animation.'
    },
    channel = {
      type = 'number',
      description = 'The index of a channel in the animation.'
    }
  },
  returns = {
    node = {
      type = 'number',
      description = 'The index of the node targeted by the channel.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'channel' },
      returns = { 'node' }
    },
    {
      arguments = { 'name', 'channel' },
      returns = { 'node' }
    }
  },
  related = {
    'ModelData:getAnimationProperty',
    'ModelData:getAnimationSmoothMode'
  }
}
