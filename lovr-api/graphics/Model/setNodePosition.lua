return {
  summary = 'Set or blend the position of a node.',
  description = [[
    Sets or blends the position of a node.  This sets the local position of the node, relative to
    its parent.
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
    x = {
      type = 'number',
      description = 'The x coordinate of the new position.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the new position.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the new position.'
    },
    position = {
      type = 'Vec3',
      description = 'The new position.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the new position to blend in.  A value of 0 will
        not change the node's position at all, whereas 1 will fully blend to the target position.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'x', 'y', 'z', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'x', 'y', 'z', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'position', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'position', 'blend' },
      returns = {}
    }
  },
  related = {
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
