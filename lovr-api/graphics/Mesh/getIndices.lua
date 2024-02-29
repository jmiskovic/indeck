return {
  summary = 'Get the vertex indices in the Mesh.',
  description = 'Returns a table with the Mesh\'s vertex indices.',
  arguments = {},
  returns = {
    t = {
      type = 'table',
      description = 'A table of numbers with the 1-based vertex indices.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 't' }
    }
  },
  notes = [[
    This function will be very very slow if the Mesh's storage is `gpu`, because the data needs to
    be downloaded from the GPU.
  ]],
  related = {
    'Mesh:getIndexBuffer',
    'Mesh:setIndexBuffer'
  }
}
