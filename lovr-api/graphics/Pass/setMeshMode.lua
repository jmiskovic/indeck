return {
  tag = 'pipeline',
  summary = 'Change the way vertices are connected together.',
  description = 'Changes the way vertices are connected together when drawing using `Pass:mesh`.',
  arguments = {
    mode = {
      type = 'DrawMode',
      description = 'The mesh mode to use.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'mode' },
      returns = {}
    }
  },
  notes = 'The default mesh mode is `triangles`.'
}
