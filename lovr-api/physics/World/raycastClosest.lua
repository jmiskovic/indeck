return {
  tag = 'worldBasics',
  summary = 'Cast a ray through the World, returning the closest hit.',
  description = 'Casts a ray through the World, returning the closest Shape that was hit.',
  arguments = {
    x1 = {
      type = 'number',
      description = 'The x coordinate of the starting position of the ray.',
    },
    y1 = {
      type = 'number',
      description = 'The y coordinate of the starting position of the ray.',
    },
    z1 = {
      type = 'number',
      description = 'The z coordinate of the starting position of the ray.',
    },
    x2 = {
      type = 'number',
      description = 'The x coordinate of the ending position of the ray.',
    },
    y2 = {
      type = 'number',
      description = 'The y coordinate of the ending position of the ray.',
    },
    z2 = {
      type = 'number',
      description = 'The z coordinate of the ending position of the ray.',
    },
    start = {
      type = 'Vec3',
      description = 'The starting position of the ray.'
    },
    ['end'] = {
      type = 'Vec3',
      description = 'The end position of the ray.'
    },
    tag = {
      type = 'string',
      default = 'nil',
      description = 'A tag filter.  Shapes will only be returned if their Collider has this tag.'
    }
  },
  returns = {
    shape = {
      type = 'Shape',
      description = 'The Shape that was hit, or nil if there wasn\'t a hit.'
    },
    x = {
      type = 'number',
      description = 'The x position of the intersection point.'
    },
    y = {
      type = 'number',
      description = 'The y position of the intersection point.'
    },
    z = {
      type = 'number',
      description = 'The z position of the intersection point.'
    },
    nx = {
      type = 'number',
      description = 'The x component of the normal vector at the intersection point.'
    },
    ny = {
      type = 'number',
      description = 'The y component of the normal vector at the intersection point.'
    },
    nz = {
      type = 'number',
      description = 'The z component of the normal vector at the intersection point.'
    }
  },
  variants = {
    {
      arguments = { 'x1', 'y1', 'z1', 'x2', 'y2', 'z2', 'tag' },
      returns = { 'shape', 'x', 'y', 'z', 'nx', 'ny', 'nz' }
    },
    {
      arguments = { 'start', 'end', 'tag' },
      returns = { 'shape', 'x', 'y', 'z', 'nx', 'ny', 'nz' }
    }
  },
  notes = [[
    Compared to `World:raycast`, this avoids creating a closure and might be more convenient.  It
    might be slightly slower than `World:raycastAny` though.
  ]],
  related = {
    'World:raycast',
    'World:raycastAny',
    'World:queryBox',
    'World:querySphere'
  }
}
