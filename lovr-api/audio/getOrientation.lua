return {
  tag = 'listener',
  summary = 'Get the orientation of the listener.',
  description = [[
    Returns the orientation of the virtual audio listener in angle/axis representation.
  ]],
  arguments = {},
  returns = {
    angle = {
      type = 'number',
      description = 'The number of radians the listener is rotated around its axis of rotation.'
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
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'lovr.audio.getPosition',
    'lovr.audio.getPose',
    'Source:getOrientation'
  }
}
