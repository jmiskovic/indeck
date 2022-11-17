return {
  summary = 'Different coordinate spaces for nodes in a Model.',
  description = 'Different coordinate spaces for nodes in a `Model`.',
  values = {
    {
      name = 'root',
      description = 'Transforms are relative to the origin (root) of the Model.'
    },
    {
      name = 'parent',
      description = 'Transforms are relative to the parent of the node.'
    }
  },
  related = {
    'Model:getNodePosition',
    'Model:getNodeOrientation',
    'Model:getNodeScale',
    'Model:getNodePose',
    'Model:getNodeTransform',
    'Model:getRootNode',
    'Model:getNodeParent'
  }
}
