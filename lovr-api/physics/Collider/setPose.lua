return {
  summary = 'Set the pose of the Collider.',
  description = 'Sets the position and orientation of the Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the Collider, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the Collider, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the Collider, in meters.'
    },
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
    position = {
      type = 'Vec3',
      description = 'The position of the Collider, in meters.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the Collider.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the pose of the Collider using numbers.',
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the pose of the Collider using vector types.',
      arguments = { 'position', 'orientation' },
      returns = {}
    }
  },
  related = {
    'Collider:setPosition',
    'Collider:setOrientation'
  }
}
