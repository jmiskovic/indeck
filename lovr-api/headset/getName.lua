return {
  tag = 'headset-misc',
  summary = 'Get the name of the connected headset display.',
  description = [[
    Returns the name of the headset as a string.  The exact string that is returned depends on the
    hardware and VR SDK that is currently in use.
  ]],
  arguments = {},
  returns = {
    name = {
      type = 'string',
      description = 'The name of the headset as a string.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'name' }
    }
  },
  notes = 'The desktop driver name will always be `Simulator`.'
}
