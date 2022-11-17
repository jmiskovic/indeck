return {
  summary = 'Get the Collider\'s center of mass.',
  description = 'Returns the Collider\'s center of mass.',
  arguments = {},
  returns = {
    cx = {
      type = 'number',
      description = 'The x position of the center of mass.'
    },
    cy = {
      type = 'number',
      description = 'The y position of the center of mass.'
    },
    cz = {
      type = 'number',
      description = 'The z position of the center of mass.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'cx', 'cy', 'cz' }
    }
  },
  related = {
    'Collider:getLocalPoint',
    'Collider:getMassData',
    'Collider:setMassData'
  }
}
