return {
  summary = 'Set the view mask of the layer.',
  description = [[
    Sets the view mask of the layer.  This is which eyes the layer will show up in, and is meant to
    be used for stereo images, where 1 layer is rendered in the left eye and another layer is
    rendred in the right eye at the same position.
  ]],
  arguments = {
    views = {
      type = 'ViewMask',
      description = 'The view mask of the layer.'
    }
  },
  returns = {},
  variants = {
    arguments = { 'views' },
    returns = {}
  }
}
