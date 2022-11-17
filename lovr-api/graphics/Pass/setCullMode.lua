return {
  tag = 'pipeline',
  summary = 'Control triangle face culling.',
  description = 'Sets whether the front or back faces of triangles are culled.',
  arguments = {
    mode = {
      type = 'CullMode',
      default = [['none']],
      description = 'Whether `front` faces, `back` faces, or `none` of the faces should be culled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'mode' },
      returns = {}
    }
  },
  notes = 'The default cull mode is `none`.',
  related = {
    'Pass:setWinding'
  }
}
