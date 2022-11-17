return {
  summary = 'Set a projection using raw FoV angles.',
  description = [[
    Sets a projection matrix using raw projection angles and clipping planes.

    This can be used for asymmetric or oblique projections.
  ]],
  arguments = {
    left = {
      type = 'number',
      description = 'The left half-angle of the projection, in radians.'
    },
    right = {
      type = 'number',
      description = 'The right half-angle of the projection, in radians.'
    },
    up = {
      type = 'number',
      description = 'The top half-angle of the projection, in radians.'
    },
    down = {
      type = 'number',
      description = 'The bottom half-angle of the projection, in radians.'
    },
    near = {
      type = 'number',
      description = 'The near plane of the projection.'
    },
    far = {
      type = 'number',
      description = 'The far plane of the projection.'
    }
  },
  returns = {
    m = {
      type = 'Mat4',
      description = 'The original matrix.'
    }
  },
  variants = {
    {
      arguments = { 'left', 'right', 'up', 'down', 'near', 'far' },
      returns = { 'm' }
    }
  },
  related = {
    'Mat4:orthographic',
    'Mat4:perspective',
    'Pass:setProjection'
  }
}
