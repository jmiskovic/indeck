return {
  summary = 'Get the name of an animation.',
  description = 'Returns the name of an animation.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the animation.'
    }
  },
  returns = {
    name = {
      type = 'string',
      description = 'The name of the animation.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'name' }
    }
  },
  notes = 'If the animation does not have a name, this function returns `nil`.',
  related = {
    'Model:getAnimationName'
  }
}
