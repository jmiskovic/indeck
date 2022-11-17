return {
  tag = 'pipeline',
  summary = 'Enable or disable alpha to coverage.',
  description = [[
    Sets whether alpha to coverage is enabled.  Alpha to coverage factors the alpha of a pixel into
    antialiasing calculations.  It can be used to get antialiased edges on textures with
    transparency.  It's often used for foliage.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether alpha to coverage should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  notes = 'By default, alpha to coverage is disabled.'
}
