return {
  tag = 'playArea',
  summary = 'Get a list of points that make up the play area boundary.',
  description = [[
    Returns a list of points representing the boundaries of the play area, or `nil` if the current
    headset driver does not expose this information.
  ]],
  arguments = {
    t = {
      type = 'table',
      default = 'nil',
      description = 'A table to fill with the points.  If `nil`, a new table will be created.'
    }
  },
  returns = {
    points = {
      type = 'table',
      description = 'A flat table of 3D points representing the play area boundaries.'
    }
  },
  variants = {
    {
      arguments = { 't' },
      returns = { 'points' }
    }
  },
  related = {
    'lovr.headset.getBoundsDimensions'
  }
}
