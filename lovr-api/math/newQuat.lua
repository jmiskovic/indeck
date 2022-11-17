return {
  tag = 'vectors',
  summary = 'Create a new Quat.',
  description = 'Creates a new quaternion.  This function takes the same arguments as `Quat:set`.',
  arguments = {
    angle = {
      type = 'number',
      default = '0',
      description = 'An angle to use for the rotation, in radians.'
    },
    ax = {
      type = 'number',
      default = '0',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      default = '0',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      default = '0',
      description = 'The z component of the axis of rotation.'
    },
    raw = {
      type = 'boolean',
      default = 'false',
      description = 'Whether the components should be interpreted as raw `(x, y, z, w)` components.'
    },
    v = {
      type = 'vec3',
      description = 'A normalized direction vector.'
    },
    u = {
      type = 'vec3',
      description = 'Another normalized direction vector.'
    },
    r = {
      type = 'quat',
      description = 'An existing quaternion to copy the values from.'
    },
    m = {
      type = 'mat4',
      description = 'A matrix to use the rotation from.'
    }
  },
  returns = {
    q = {
      type = 'quat',
      description = 'The new quaternion.'
    }
  },
  variants = {
    {
      arguments = { 'angle', 'ax', 'ay', 'az', 'raw' },
      returns = { 'q' }
    },
    {
      arguments = { 'r' },
      returns = { 'q' }
    },
    {
      description = 'Uses the direction of a vector.',
      arguments = { 'v' },
      returns = { 'q' }
    },
    {
      description = 'Sets the rotation to represent the rotation between two vectors.',
      arguments = { 'v', 'u' },
      returns = { 'q' }
    },
    {
      arguments = { 'm' },
      returns = { 'q' }
    },
    {
      description = 'Set the quaternion to the identity (0, 0, 0, 1).',
      arguments = {},
      returns = { 'q' }
    }
  },
  related = {
    'lovr.math.quat',
    'Quat',
    'Vectors'
  }
}
