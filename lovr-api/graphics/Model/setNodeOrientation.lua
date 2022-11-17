return {
  summary = 'Set or blend the orientation of a node.',
  description = 'Sets or blends the orientation of a node to a new orientation.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
    },
    orientation = {
      type = 'rotation',
      description = 'The target orientation.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the target orientation to blend in.  A value of
        0 will not change the node's orientation at all, whereas 1 will fully blend to the target
        orientation.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'orientation', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'orientation', 'blend' },
      returns = {}
    }
  },
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
