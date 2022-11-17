return {
  summary = 'Get the number of animations in the Model.',
  description = 'Returns the number of animations in the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of animations in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Model:getAnimationName',
    'Model:getAnimationDuration',
    'Model:animate'
  }
}
