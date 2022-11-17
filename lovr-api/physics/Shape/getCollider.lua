return {
  summary = 'Get the Collider the Shape is attached to.',
  description = 'Returns the Collider the Shape is attached to.',
  arguments = {},
  returns = {
    collider = {
      type = 'Collider',
      description = 'The Collider the Shape is attached to.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'collider' }
    }
  },
  notes = 'A Shape can only be attached to one Collider at a time.',
  related = {
    'Collider',
    'Collider:addShape',
    'Collider:removeShape'
  }
}
