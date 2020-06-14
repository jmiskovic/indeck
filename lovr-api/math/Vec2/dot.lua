return {
  summary = 'Get the dot product with another vector.',
  description = 'Returns the dot product between this vector and another one.',
  arguments = {
    {
      name = 'u',
      type = 'Vec2',
      description = 'The vector to compute the dot product with.'
    }
  },
  returns = {
    {
      name = 'dot',
      type = 'number',
      description = 'The dot product between `v` and `u`.'
    }
  },
  notes = [[
    This is computed as:

        dot = v.x * u.x + v.y * u.y + v.z * u.z

    The vectors are not normalized before computing the dot product.
  ]]
}
