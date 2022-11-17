return {
  tag = 'listener',
  summary = 'Set the master volume.',
  description = [[
    Sets the master volume.  All audio sent to the playback device has its volume multiplied by this
    factor.
  ]],
  arguments = {
    volume = {
      type = 'number',
      description = 'The master volume.'
    },
    units = {
      type = 'VolumeUnit',
      default = [['linear']],
      description = 'The units of the value.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'volume', 'units' },
      returns = {}
    }
  },
  notes = 'The volume will be clamped to a 0-1 range (0 dB).'
}
