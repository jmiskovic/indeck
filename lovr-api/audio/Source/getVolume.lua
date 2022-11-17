return {
  tag = 'sourcePlayback',
  summary = 'Get the volume of the Source.',
  description = 'Returns the current volume factor for the Source.',
  arguments = {
    units = {
      type = 'VolumeUnit',
      default = [['linear']],
      description = 'The units to return (linear or db).'
    }
  },
  returns = {
    volume = {
      type = 'number',
      description = 'The volume of the Source.'
    }
  },
  variants = {
    {
      arguments = { 'units' },
      returns = { 'volume' }
    }
  }
}
