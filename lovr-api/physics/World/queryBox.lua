return {
  tag = 'worldBasics',
  summary = 'Find all shapes that intersect a box.',
  description = 'Finds all the shapes that intersect a box and calls a function for each one.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the center of the box.',
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the center of the box.',
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the center of the box.',
    },
    w = {
      type = 'number',
      description = 'The width of the box.',
    },
    h = {
      type = 'number',
      description = 'The height of the box.',
    },
    d = {
      type = 'number',
      description = 'The depth of the box.',
    },
    position = {
      type = 'Vec3',
      description = 'The position of the center of the box.'
    },
    size = {
      type = 'Vec3',
      description = 'The size of the box.'
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
      arguments = { 'x', 'y', 'z', 'w', 'h', 'd', 'callback' },
      returns = { 'any' }
    },
    {
      arguments = { 'position', 'size', 'callback' },
      returns = { 'any' }
    }
  },
  notes = 'Currently there is no way to specify a rotated box.',
  related = {
    'World:querySphere',
    'World:raycast',
    'World:getContacts',
    'Shape:setSensor'
  }
}
