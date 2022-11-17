return {
  tag = 'random',
  summary = 'Get the random seed.',
  description = 'Get the seed used to initialize the random generator.',
  arguments = {},
  returns = {
    seed = {
      type = 'number',
      description = 'The new seed.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'seed' }
    }
  }
}
