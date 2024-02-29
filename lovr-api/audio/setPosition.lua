return {
  tag = 'listener',
  summary = 'Set the position of the listener.',
  description = [[
    Sets the position of the virtual audio listener.  The position doesn't have any specific units,
    but usually they can be thought of as meters, to match the headset module.
  ]],
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the listener.'
    },
    y = {
      type = 'number',
      description = 'The y position of the listener.'
    },
    z = {
      type = 'number',
      description = 'The z position of the listener.'
    },
    position = {
      type = 'Vec3',
      description = 'The listener position.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the listener position using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Set the listener position using a vector.',
      arguments = { 'position' },
      returns = {}
    }
  },
  related = {
    'lovr.audio.setOrientation',
    'lovr.audio.setPose',
    'Source:setPosition'
  }
}
