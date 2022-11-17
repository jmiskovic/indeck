return {
  tag = 'camera',
  summary = 'Set the camera pose.',
  description = [[
    Sets the pose for a single view.  Objects rendered in this view will appear as though the camera
    is positioned using the given pose.

    Up to 6 views are supported.  When rendering to the headset, views are changed to match the eye
    positions.  These view poses are also available using `lovr.headset.getViewPose`.
  ]],
  arguments = {
    view = {
      type = 'number',
      description = 'The index of the view to update.'
    },
    x = {
      type = 'number',
      description = 'The x position of the viewer, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the viewer, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the viewer, in meters.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the viewer is rotated around its axis of rotation.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis of rotation.'
    },
    matrix = {
      type = 'Mat4',
      description = 'A matrix containing the viewer pose.'
    },
    inverted = {
      type = 'boolean',
      description = 'Whether the matrix is an inverted pose (a view matrix).'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'view', 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      arguments = { 'view', 'matrix', 'inverted' },
      returns = {}
    }
  },
  related = {
    'lovr.headset.getViewPose',
    'lovr.headset.getViewCount',
    'Pass:getProjection',
    'Pass:setProjection'
  }
}

