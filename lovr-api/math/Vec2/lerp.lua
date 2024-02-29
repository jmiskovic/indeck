return {
  summary = 'Moves this vector some amount towards another one.',
  description = [[
    Performs a linear interpolation between this vector and another one, which can be used to
    smoothly animate between two vectors, based on a parameter value.  A parameter value of `0` will
    leave the vector unchanged, a parameter value of `1` will set the vector to be equal to the
    input vector, and a value of `.5` will set the components to be halfway between the two vectors.
  ]],
  arguments = {
    u = {
      type = 'Vec2',
      description = 'The vector to lerp towards.'
    },
    x = {
      type = 'number',
      description = 'A value of x component to lerp towards.'
    },
    y = {
      type = 'number',
      description = 'A value of y component to lerp towards.'
    },
    t = {
      type = 'number',
      description = 'The lerping parameter.'
    }
  },
  returns = {
    self = {
      type = 'Vec2',
      description = 'The interpolated vector.'
    }
  },
  variants = {
    {
      arguments = { 'u', 't' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y', 't' },
      returns = { 'self' }
    }
  },
  related = {
    'Quat:slerp'
  }
}
