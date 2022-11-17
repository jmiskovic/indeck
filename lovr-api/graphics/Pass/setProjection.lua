return {
  tag = 'camera',
  summary = 'Set the field of view.',
  description = [[
    Sets the projection for a single view.  4 field of view angles can be used, similar to the field
    of view returned by `lovr.headset.getViewAngles`.  Alternatively, a projection matrix can be
    used for other types of projections like orthographic, oblique, etc.  There is also a shorthand
    string "orthographic" that can be used to configure an orthographic projection.

    Up to 6 views are supported.  When rendering to the headset, both projections are changed to
    match the ones used by the headset.  This is also available by calling
    `lovr.headset.getViewAngles`.
  ]],
  arguments = {
    view = {
      type = 'number',
      description = 'The index of the view to update.'
    },
    left = {
      type = 'number',
      description = 'The left field of view angle, in radians.'
    },
    right = {
      type = 'number',
      description = 'The right field of view angle, in radians.'
    },
    up = {
      type = 'number',
      description = 'The top field of view angle, in radians.'
    },
    down = {
      type = 'number',
      description = 'The bottom field of view angle, in radians.'
    },
    near = {
      type = 'number',
      default = '.01',
      description = 'The near clipping plane distance, in meters.'
    },
    far = {
      type = 'number',
      default = '100.0',
      description = 'The far clipping plane distance, in meters.'
    },
    matrix = {
      type = 'Mat4',
      description = 'The projection matrix for the view.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'view', 'left', 'right', 'up', 'down', 'near', 'far' },
      returns = {}
    },
    {
      arguments = { 'view', 'matrix' },
      returns = {}
    }
  },
  notes = [[
    A far clipping plane of 0.0 can be used for an infinite far plane with reversed Z range.  This
    is the default.
  ]],
  related = {
    'lovr.headset.getViewAngles',
    'lovr.headset.getViewCount',
    'Pass:getViewPose',
    'Pass:setViewPose'
  }
}
