return {
  tag = 'worldCollision',
  summary = 'Get a list of points where a pair of shapes touch.',
  description = [[
    Computes collision information between two shapes and returns a list of contacts where the
    shapes intersect.  Each contact point consists of a position, a normal vector, and a penetration
    depth.
  ]],
  arguments = {
    shapeA = {
      type = 'Shape',
      description = 'The first shape.'
    },
    shapeB = {
      type = 'Shape',
      description = 'The second shape.'
    }
  },
  returns = {
    contacts = {
      type = 'table',
      description = [[
        A list of contacts.  Each contact consists of 7 numbers: the contact position, the normal
        vector, and a depth value indicating how far the shapes intersect each other at the contact
        point (`{ x, y, z, nx, ny, nz, depth }`).
      ]]
    }
  },
  variants = {
    {
      arguments = { 'shapeA', 'shapeB' },
      returns = { 'contacts' }
    }
  },
  notes = [[
    This only detects collision information, it does not cause the shapes to collide with each
    other.  Use `World:collide` for that.

    This function ignores collision tags.
  ]],
  related = {
    'World:collide'
  }
}
