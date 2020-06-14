return {
  summary = 'Moves this vector some amount towards another one.',
  description = [[
    Performs a linear interpolation between this vector and another one, which can be used to
    smoothly animate between two vectors, based on a parameter value.  A parameter value of `0` will
    leave the vector unchanged, a parameter value of `1` will set the vector to be equal to the
    input vector, and a value of `.5` will set the components to be halfway between the two vectors.
  ]],
  arguments = {
    {
      name = 'u',
      type = 'Vec4',
      description = 'The vector to lerp towards.'
    },
    {
      name = 't',
      type = 'number',
      description = 'The lerping parameter.'
    }
  },
  returns = {
    {
      name = 'v',
      type = 'Vec4',
      description = 'The original vector, containing the new lerped values.'
    }
  },
  related = {
    'Quat:slerp'
  }
}
