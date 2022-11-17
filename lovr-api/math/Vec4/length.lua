return {
  summary = 'Get the length of the vector.',
  description = 'Returns the length of the vector.',
  arguments = {},
  returns = {
    length = {
      type = 'number',
      description = 'The length of the vector.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'length' }
    }
  },
  notes = [[
    The length is equivalent to this:

        math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z + v.w * v.w)
  ]],
  related = {
    'Vec4:normalize',
    'Vec4:distance'
  }
}
