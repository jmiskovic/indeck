return {
  summary = 'Set the pose of the layer.',
  description = 'Sets the position and orientation of the layer.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position.'
    },
    y = {
      type = 'number',
      description = 'The y position.'
    },
    z = {
      type = 'number',
      description = 'The z position.'
    },
    angle = {
      type = 'number',
      description = 'The amount of rotation around the axis of rotation, in radians.'
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
      description = 'The position of the layer.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the layer.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      arguments = { 'position', 'orientation' },
      returns = {}
    }
  },
  notes = 'Units are in meters.',
  related = {
    'Layer:getPosition',
    'Layer:setPosition',
    'Layer:getOrientation',
    'Layer:setOrientation'
  }
}
