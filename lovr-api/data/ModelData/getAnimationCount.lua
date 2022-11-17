return {
  summary = 'Get the number of animations in the model.',
  description = 'Returns the number of animations in the model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of animations in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Model:getAnimationCount'
  }
}
