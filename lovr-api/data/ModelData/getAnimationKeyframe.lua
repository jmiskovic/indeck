return {
  summary = 'Get a keyframe in a channel of an animation.',
  description = 'Returns a single keyframe in a channel of an animation.',
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
    },
    keyframe = {
      type = 'number',
      description = 'The index of a keyframe in the channel.'
    }
  },
  returns = {
    time = {
      type = 'number',
      description = 'The timestamp of the keyframe.'
    },
    ['...'] = {
      type = 'number',
      description = 'The data for the keyframe (either 3 or 4 numbers depending on the property).'
    }
  },
  variants = {
    {
      arguments = { 'index', 'channel', 'keyframe' },
      returns = { 'time', '...' }
    },
    {
      arguments = { 'name', 'channel', 'keyframe' },
      returns = { 'time', '...' }
    }
  },
  related = {
    'ModelData:getAnimationSmoothMode',
    'ModelData:getAnimationKeyframeCount'
  }
}
