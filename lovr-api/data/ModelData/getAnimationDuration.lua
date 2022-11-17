return {
  summary = 'Get the duration of an animation.',
  description = 'Returns the duration of an animation.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the animation.'
    },
    name = {
      type = 'string',
      description = 'The name of the animation.'
    }
  },
  returns = {
    duration = {
      type = 'number',
      description = 'The duration of the animation, in seconds.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'duration' }
    },
    {
      arguments = { 'name' },
      returns = { 'duration' }
    }
  },
  notes = [[
    The duration of the animation is calculated as the latest timestamp of all of its channels.
  ]],
  related = {
    'Model:getAnimationDuration'
  }
}
