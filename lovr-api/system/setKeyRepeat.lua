return {
  tag = 'system-keyboard',
  summary = 'Enable or disable key repeat.',
  description = [[
    Enables or disables key repeat.  Key repeat affects whether `lovr.keypressed` will be fired
    multiple times while a key is held down.  The `repeat` parameter of the callback can be used to
    detect whether a key press comes from a "repeat" or not.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether key repeat should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  notes = 'Key repeat is disabled by default.  `lovr.textinput` is not affected by key repeat.',
  related = {
    'lovr.keypressed'
  }
}
