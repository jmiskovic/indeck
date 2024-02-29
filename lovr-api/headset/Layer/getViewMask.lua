return {
  summary = 'Get the view mask of the layer.',
  description = [[
    Returns the view mask of the layer.  This is which eyes the layer will show up in, and is meant
    to be used for stereo images, where 1 layer is rendered in the left eye and another layer is
    rendred in the right eye at the same position.
  ]],
  arguments = {},
  returns = {
    views = {
      type = 'ViewMask',
      description = 'The view mask of the layer.'
    }
  },
  variants = {
    arguments = {},
    returns = { 'views' }
  }
}
