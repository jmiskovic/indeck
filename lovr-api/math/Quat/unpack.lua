return {
  summary = 'Get the components of the quaternion.',
  description = [[
    Returns the components of the quaternion as numbers, either in an angle/axis representation or
    as raw quaternion values.
  ]],
  arguments = {
    raw = {
      type = 'boolean',
      default = 'false',
      description = 'Whether the values should be returned as raw values instead of angle/axis.'
    }
  },
  returns = {
    a = {
      type = 'number',
      description = 'The angle in radians, or the x value.'
    },
    b = {
      type = 'number',
      description = 'The x component of the rotation axis or the y value.'
    },
    c = {
      type = 'number',
      description = 'The y component of the rotation axis or the z value.'
    },
    d = {
      type = 'number',
      description = 'The z component of the rotation axis or the w value.'
    }
  },
  variants = {
    {
      arguments = { 'raw' },
      returns = { 'a', 'b', 'c', 'd' }
    }
  },
  related = {
    'Quat:set'
  }
}
