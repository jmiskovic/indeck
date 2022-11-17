return {
  summary = 'Get the window pixel density.',
  description = [[
    Returns the window pixel density.  High DPI windows will usually return 2.0 to indicate that
    there are 2 pixels for every window coordinate in each axis.  On a normal display, 1.0 is
    returned, indicating that window coordinates match up with pixels 1:1.
  ]],
  arguments = {},
  returns = {
    density = {
      type = 'number',
      description = 'The pixel density of the window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'density' }
    }
  }
}
