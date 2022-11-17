return {
  tag = 'pipeline',
  summary = 'Configure the depth offset.',
  description = [[
    Set the depth offset.  This is a constant offset added to the depth value of pixels.  It can be
    used to fix Z fighting when rendering decals or other nearly-overlapping objects.
  ]],
  arguments = {
    offset = {
      type = 'number',
      default = '0.0',
      description = 'The depth offset.'
    },
    sloped = {
      type = 'number',
      default = '0.0',
      description = 'The sloped depth offset.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'offset', 'sloped' },
      returns = {}
    }
  },
  notes = 'The default depth offset is zero for both values.',
  related = {
    'Pass:setDepthTest',
    'Pass:setDepthWrite'
  }
}
