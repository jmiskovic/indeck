return {
  summary = 'Get the number of keyframes in a channel of an animation.',
  description = 'Returns the number of keyframes in a channel of an animation.',
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
    count = {
      type = 'number',
      description = 'The number of keyframes in the channel.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'channel' },
      returns = { 'count' }
    },
    {
      arguments = { 'name', 'channel' },
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getAnimationSmoothMode',
    'ModelData:getAnimationKeyframe'
  }
}
