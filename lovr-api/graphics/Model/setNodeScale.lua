return {
  summary = 'Set or blend the scale of a node.',
  description = [[
    Sets or blends the scale of a node to a new scale.  This sets the local scale of the node,
    relative to its parent.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
    },
    sx = {
      type = 'number',
      description = 'The x scale.'
    },
    sy = {
      type = 'number',
      description = 'The y scale.'
    },
    sz = {
      type = 'number',
      description = 'The z scale.'
    },
    scale = {
      type = 'Vec3',
      description = 'The new scale.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the new scale to blend in.  A value of 0 will
        not change the node's scale at all, whereas 1 will fully blend to the target scale.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'sx', 'sy', 'sz', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'sx', 'sy', 'sz', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'scale', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'scale', 'blend' },
      returns = {}
    }
  },
  notes = [[
    For best results when animating, it's recommended to keep the 3 scale components the same.
  ]],
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
