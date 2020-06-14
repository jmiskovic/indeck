return {
  summary = 'Set the Source\'s volume cone.',
  description = [[
    Sets the directional volume cone of the Source.  The cone is specified by three values:
    `innerAngle`, `outerAngle`, and `outerVolume`.  If the listener is inside the `innerAngle`, the
    Source won't have its volume changed.  Otherwise, the volume will start to decrease, reaching a
    minimum volume of `outerVolume` once the listener is `outerAngle` degrees from the direction of
    the Source.
  ]],
  arguments = {
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
  returns = {},
  notes = [[
    The default `innerAngle` for a Source is `0`.

    The default `outerAngle` for a Source is `2 * math.pi`.

    The default `outerVolume` for a Source is `0`.

    The direction of the cone can be changed using `Source:setOrientation`.
  ]]
}
