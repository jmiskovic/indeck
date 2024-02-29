return {
  tag = 'texture-view',
  summary = 'Get the parent of a texture view.',
  description = [[
    Returns the parent of a Texture view, which is the Texture that it references.  Returns `nil`
    if the Texture is not a view.
  ]],
  arguments = {},
  returns = {
    parent = {
      type = 'Texture',
      description = 'The parent of the texture, or `nil` if the texture is not a view.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'parent' }
    }
  },
  related = {
    'Texture:isView',
    'Texture:newView'
  }
}
