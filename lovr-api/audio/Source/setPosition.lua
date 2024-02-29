return {
  tag = 'sourceEffects',
  summary = 'Set the position of the Source.',
  description = [[
    Sets the position of the Source.  Setting the position will cause the Source to be distorted and
    attenuated based on its position relative to the listener.

    Only mono sources can be positioned.  Setting the position of a stereo Source will cause an
    error.
  ]],
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the position.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the position.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the position.'
    },
    position = {
      type = 'Vec3',
      description = 'The position.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the position using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Set the position using a vector.',
      arguments = { 'position' },
      returns = {}
    }
  },
  notes = 'The position doesn\'t have any defined units, but meters are used by convention.',
  related = {
    'Source:setOrientation',
    'Source:setPose'
  }
}
