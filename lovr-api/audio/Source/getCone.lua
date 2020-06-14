return {
  summary = 'Get the Source\'s volume cone.',
  description = [[
    Returns the directional volume cone of the Source.  The cone is specified by three values:
    `innerAngle`, `outerAngle`, and `outerVolume`.  If the listener is inside the `innerAngle`, the
    Source won't have its volume reduced.  Otherwise, the volume will start to decrease, reaching a
    minimum volume of `outerVolume` once the listener is `outerAngle` degrees from the direction of
    the Source.
  ]],
  arguments = {},
  returns = {
    {
      name = 'innerAngle',
      type = 'number',
      description = 'The inner cone angle, in radians.'
    },
    {
      name = 'outerAngle',
      type = 'number',
      description = 'The outer cone angle, in radians.'
    },
    {
      name = 'outerVolume',
      type = 'number',
      description = 'The outer cone angle, in radians.'
    }
  },
  notes = [[
    The default `innerAngle` for a Source is `0`.

    The default `outerAngle` for a Source is `2 * math.pi`.

    The default `outerVolume` for a Source is `0`.

    `Source:setOrientation` can be used to change which way the cone points.
  ]]
}
