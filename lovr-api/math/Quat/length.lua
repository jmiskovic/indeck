return {
  summary = 'Get the length of the quaternion.',
  description = 'Returns the length of the quaternion.',
  arguments = {},
  returns = {
    length = {
      type = 'number',
      description = 'The length of the quaternion.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'length' }
    }
  },
  related = {
    'Quat:normalize'
  }
}
