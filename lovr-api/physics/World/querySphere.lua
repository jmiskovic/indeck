return {
  tag = 'worldBasics',
  summary = 'Find all shapes that intersect a sphere.',
  description = 'Finds all the shapes that intersect a sphere and calls a function for each one.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the center of the sphere.',
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the center of the sphere.',
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the center of the sphere.',
    },
    radius = {
      type = 'number',
      description = 'The radius of the sphere.',
    },
    position = {
      type = 'Vec3',
      description = 'The position of the center of the sphere.'
    },
    callback = {
      type = 'function',
      default = 'nil',
      description = [[
        An optional function to call when an intersection is detected.  The function will be called
        with a single `Shape` argument, and it may return `false` to cancel the query.
      ]]
    }
  },
  returns = {
    any = {
      type = 'boolean',
      description = 'Whether there were any intersections.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'radius', 'callback' },
      returns = { 'any' }
    },
    {
      arguments = { 'position', 'radius', 'callback' },
      returns = { 'any' }
    }
  },
  related = {
    'World:queryBox',
    'World:raycast',
    'World:getContacts',
    'Shape:setSensor'
  }
}
