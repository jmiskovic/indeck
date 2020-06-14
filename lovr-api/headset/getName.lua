return {
  tag = 'headset',
  summary = 'Get the name of the connected headset display.',
  description = [[
    Returns the name of the headset as a string.  The exact string that is returned depends on the
    hardware and VR SDK that is currently in use.
  ]],
  arguments = {},
  returns = {
    {
      name = 'name',
      type = 'string',
      description = 'The name of the headset as a string.'
    }
  },
  notes = [[
    - The keyboard and mouse VR simulator is named `VR Simulator`.
    - Oculus headsets will usually contain the string `Oculus`.
  ]]
}
