return {
  summary = 'Get the property targeted by the channel of an animation.',
  description = 'Returns the property targeted by an animation\'s channel.',
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
    property = {
      type = 'AnimationProperty',
      description = 'The property (translation, rotation, scale) affected by the keyframes.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'channel' },
      returns = { 'property' }
    },
    {
      arguments = { 'name', 'channel' },
      returns = { 'property' }
    }
  },
  related = {
    'ModelData:getAnimationNode',
    'ModelData:getAnimationSmoothMode'
  }
}
