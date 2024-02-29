return {
  tag = 'listener',
  summary = 'Set the orientation of the listener.',
  description = 'Sets the orientation of the virtual audio listener in angle/axis representation.',
  arguments = {
    angle = {
      type = 'number',
      description = 'The number of radians the listener should be rotated around its rotation axis.'
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
      description = 'The orientation of the listener.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the listener orientation using numbers.',
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the listener orientation using a vector.',
      arguments = { 'orientation' },
      returns = {}
    }
  },
  related = {
    'lovr.audio.setPosition',
    'lovr.audio.setPose',
    'Source:setOrientation'
  }
}
