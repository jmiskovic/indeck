return {
  summary = 'Turn the matrix into an orthographic projection.',
  description = [[
    Sets this matrix to represent an orthographic projection, useful for 2D/isometric rendering.

    This can be used with `Pass:setProjection`, or it can be sent to a `Shader` for use in
    GLSL.
  ]],
  arguments = {
    left = {
      type = 'number',
      description = 'The left edge of the projection.'
    },
    right = {
      type = 'number',
      description = 'The right edge of the projection.'
    },
    bottom = {
      type = 'number',
      description = 'The bottom edge of the projection.'
    },
    top = {
      type = 'number',
      description = 'The top edge of the projection.'
    },
    width = {
      type = 'number',
      description = 'The width of the projection.'
    },
    height = {
      type = 'number',
      description = 'The height of the projection.'
    },
    near = {
      type = 'number',
      description = 'The position of the near clipping plane.'
    },
    far = {
      type = 'number',
      description = 'The position of the far clipping plane.'
    }
  },
  returns = {
    self = {
      type = 'Mat4',
      description = 'The modified matrix.'
    }
  },
  variants = {
    {
      arguments = { 'left', 'right', 'bottom', 'top', 'near', 'far' },
      returns = { 'self' }
    },
    {
      arguments = { 'width', 'height', 'near', 'far' },
      returns = { 'self' }
    }
  },
  related = {
    'Mat4:perspective',
    'Mat4:fov',
    'Pass:setProjection'
  }
}
