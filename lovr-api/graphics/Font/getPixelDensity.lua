return {
  summary = 'Get the pixel density of the Font.',
  description = [[
    Returns the pixel density of the font.  The density is a "pixels per world unit" factor that
    controls how the pixels in the font's texture are mapped to units in the coordinate space.

    The default pixel density is set to the height of the font.  This means that lines of text
    rendered with a scale of 1.0 come out to 1 unit (meter) tall.  However, if this font was drawn
    to a 2D texture where the units are in pixels, the font would still be drawn 1 unit (pixel)
    tall!  Scaling the coordinate space or the size of the text by the height of the font would fix
    this.  However, a more convenient option is to set the pixel density of the font to 1.0 when
    doing 2D rendering to make the font's size match up with the pixels of the canvas.
  ]],
  arguments = {},
  returns = {
    density = {
      type = 'number',
      description = 'The pixel density of the font.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'density' }
    }
  }
}
