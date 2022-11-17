return {
  tag = 'drawing',
  summary = 'Draw a model.',
  description = 'Draws a model.',
  arguments = {
    model = {
      type = 'Model',
      description = 'The model to draw.'
    },
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the model.  Can also be provided as a position, 1-component scale, and
        rotation using a combination of `Vectors` and numbers.
      ]]
    },
    nodeindex = {
      type = 'number',
      default = 'nil',
      description = 'The index of the node to draw.  If nil, the root node is drawn.'
    },
    nodename = {
      type = 'string',
      default = 'nil',
      description = 'The name of the node to draw.  If nil, the root node is drawn.'
    },
    children = {
      type = 'boolean',
      default = 'true',
      description = 'Whether the children of the node should be drawn.'
    },
    instances = {
      type = 'number',
      default = '1',
      description = 'The number of instances to draw.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'model', 'transform', 'nodeindex', 'children', 'instances' },
      returns = {}
    },
    {
      arguments = { 'model', 'transform', 'nodename', 'children', 'instances' },
      returns = {}
    }
  }
}
