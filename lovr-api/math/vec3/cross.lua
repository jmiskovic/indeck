return {
  summary = 'Get the cross product with another vector.',
  description = [[
    Sets this vector to be equal to the cross product between this vector and another one.  The
    new `v` will be perpendicular to both the old `v` and `u`.
  ]],
  arguments = {
    {
      name = 'u',
      type = 'Vec3',
      description = 'The vector to compute the cross product with.'
    }
  },
  returns = {
    {
      name = 'v',
      type = 'Vec3',
      description = 'The original vector, with the cross product as its values.'
    }
  },
  notes = 'The vectors are not normalized before or after computing the cross product.',
  related = {
    'Vec3:dot'
  }
}
