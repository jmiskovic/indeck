return {
  tag = 'camera',
  summary = 'Get the field of view.',
  description = 'Returns the projection for a single view.',
  arguments = {
    view = {
      type = 'number',
      description = 'The view index.'
    },
    matrix = {
      type = 'Mat4',
      description = 'The matrix to fill with the projection.'
    }
  },
  returns = {
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
    matrix = {
      type = 'Mat4',
      description = 'The matrix containing the projection.'
    }
  },
  variants = {
    {
      arguments = { 'view' },
      returns = { 'left', 'right', 'up', 'down' }
    },
    {
      arguments = { 'view', 'matrix' },
      returns = { 'matrix' }
    }
  },
  related = {
    'lovr.headset.getViewAngles',
    'lovr.headset.getViewCount',
    'Pass:getViewPose',
    'Pass:setViewPose'
  }
}
