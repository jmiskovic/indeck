return {
  tag = 'drawing',
  summary = 'Draw a plane.',
  description = 'Draws a plane.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the plane.  Can also be provided as a position, 2-component scale, and
        rotation using a combination of `Vectors`, and numbers.
      ]]
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the plane should be drawn filled or outlined.'
    },
    columns = {
      type = 'number',
      default = '1',
      description = 'The number of horizontal segments in the plane.'
    },
    rows = {
      type = 'number',
      default = 'columns',
      description = 'The number of vertical segments in the plane.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'style', 'columns', 'rows' },
      returns = {}
    }
  }
}
