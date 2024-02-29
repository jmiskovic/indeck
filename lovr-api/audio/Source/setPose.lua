return {
  tag = 'sourceEffects',
  summary = 'Set the pose of the Source.',
  description = 'Sets the position and orientation of the Source.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the Source.'
    },
    y = {
      type = 'number',
      description = 'The y position of the Source.'
    },
    z = {
      type = 'number',
      description = 'The z position of the Source.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the Source is rotated around its axis of rotation.'
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
      description = 'The position.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the pose using numbers.',
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the pose using vector types.',
      arguments = { 'position', 'orientation' },
      returns = {}
    }
  },
  notes = 'The position doesn\'t have any defined units, but meters are used by convention.',
  related = {
    'Source:setPosition',
    'Source:setOrientation',
    'lovr.audio.setPose'
  }
}
