return {
  summary = 'Get the distance to another vector.',
  description = 'Returns the distance to another vector.',
  arguments = {
    {
      name = 'u',
      type = 'Vec3',
      description = 'The vector to measure the distance to.'
    }
  },
  returns = {
    {
      name = 'distance',
      type = 'number',
      description = 'The distance to `u`.'
    }
  },
  related = {
    'Vec3:length'
  }
}
