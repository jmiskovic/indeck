return {
  tag = 'random',
  summary = 'Get a random number from a normal distribution.',
  description = [[
    Returns a pseudo-random number from a normal distribution (a bell curve).  You can control the
    center of the bell curve (the mean value) and the overall width (sigma, or standard deviation).
  ]],
  arguments = {
    sigma = {
      type = 'number',
      default = '1',
      description = [[
        The standard deviation of the distribution.  This can be thought of how "wide" the range of
        numbers is or how much variability there is.
      ]]
    },
    mu = {
      type = 'number',
      default = '0',
      description = 'The average value returned.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'A normally distributed pseudo-random number.'
    }
  },
  variants = {
    {
      arguments = { 'sigma', 'mu' },
      returns = { 'x' }
    }
  },
  related = {
    'lovr.math.random',
    'RandomGenerator'
  }
}
