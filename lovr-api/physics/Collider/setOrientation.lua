return {
  summary = 'Set the orientation of the Collider.',
  description = 'Sets the orientation of the Collider in angle/axis representation.',
  arguments = {
    angle = {
      type = 'number',
      description = 'The number of radians the Collider is rotated around its axis of rotation.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis of rotation.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the Collider.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the orientation of the Collider using numbers.',
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the orientation of the Collider using a quaternion.',
      arguments = { 'orientation' },
      returns = {}
    }
  },
  related = {
    'Collider:applyTorque',
    'Collider:getAngularVelocity',
    'Collider:setAngularVelocity',
    'Collider:getPosition',
    'Collider:setPosition',
    'Collider:getPose',
    'Collider:setPose'
  }
}
