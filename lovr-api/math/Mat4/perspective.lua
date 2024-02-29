return {
  summary = 'Turn the matrix into a perspective projection.',
  description = [[
    Sets this matrix to represent a perspective projection.

    This can be used with `Pass:setProjection`, or it can be sent to a `Shader` for use in
    GLSL.
  ]],
  arguments = {
    fov = {
      type = 'number',
      description = 'The vertical field of view (in radians).'
    },
    aspect = {
      type = 'number',
      description = 'The horizontal aspect ratio of the projection (width / height).'
    },
    near = {
      type = 'number',
      description = 'The near plane.'
    },
    far = {
      type = 'number',
      default = '0',
      description = [[
        The far plane.  Zero is a special value that will set an infinite far plane with a reversed
        Z range, which improves depth buffer precision and is the default.
      ]]
    },
  },
  returns = {
    self = {
      type = 'Mat4',
      description = 'The modified matrix.'
    }
  },
  variants = {
    {
      arguments = { 'fov', 'aspect', 'near', 'far' },
      returns = { 'self' }
    }
  },
  related = {
    'Mat4:orthographic',
    'Mat4:fov',
    'Pass:setProjection'
  }
}
