return {
  summary = 'Remove a Shape from the Collider.',
  description = 'Removes a Shape from the Collider.',
  arguments = {
    shape = {
      type = 'Shape',
      description = 'The Shape to remove.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'shape' },
      returns = {}
    }
  },
  notes = 'Colliders without any shapes won\'t collide with anything.',
  related = {
    'Collider:addShape',
    'Collider:getShapes',
    'Shape'
  }
}
