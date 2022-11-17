return {
  summary = 'Get the smooth mode of a channel in an animation.',
  description = 'Returns the smooth mode of a channel in an animation.',
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
    smooth = {
      type = 'SmoothMode',
      description = 'The smooth mode of the keyframes.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'channel' },
      returns = { 'smooth' }
    },
    {
      arguments = { 'name', 'channel' },
      returns = { 'smooth' }
    }
  },
  related = {
    'ModelData:getAnimationNode',
    'ModelData:getAnimationProperty'
  }
}
