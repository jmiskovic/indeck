return {
  tag = 'pipeline',
  summary = 'Set the material.',
  description = [[
    Sets the material.  This will apply to most drawing, except for text, skyboxes, and models,
    which use their own materials.
  ]],
  arguments = {
    material = {
      type = 'Material',
      description = 'The material to use for drawing.'
    },
    texture = {
      type = 'Texture',
      description = 'The texture to use as the material.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'material' },
      returns = {}
    },
    {
      arguments = { 'texture' },
      returns = {}
    },
    {
      description = 'Use the default material.',
      arguments = {},
      returns = {}
    }
  }
}
