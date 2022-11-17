return {
  summary = 'Set the total mass of the Collider.',
  description = 'Sets the total mass of the Collider.',
  arguments = {
    mass = {
      type = 'number',
      description = 'The new mass for the Collider, in kilograms.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'mass' },
      returns = {}
    }
  },
  related = {
    'Collider:getMassData',
    'Collider:setMassData',
    'Shape:getMass'
  }
}
