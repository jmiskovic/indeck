return {
  summary = 'Set the pose of the Shape.',
  description = 'Sets the position and orientation of the Shape, relative to its Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the Shape, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the Shape, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the Shape, in meters.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the Shape is rotated around its axis of rotation.'
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
      description = 'The position of the Shape, in meters.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the Shape.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the pose of the Shape using numbers.',
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the pose of the Shape using vector types.',
      arguments = { 'position', 'orientation' },
      returns = {}
    }
  },
  notes = 'If the Shape isn\'t attached to a Collider, this will error.',
  related = {
    'Shape:getPosition',
    'Shape:setPosition',
    'Shape:getOrientation',
    'Shape:setOrientation'
  }
}
