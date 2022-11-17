return {
  summary = 'Animate the Model.',
  description = [[
    Animates a Model by setting or blending the transforms of nodes using data stored in the
    keyframes of an animation.

    The animation from the model file is evaluated at the timestamp, resulting in a set of node
    properties.  These properties are then applied to the nodes in the model, using an optional
    blend factor.  If the animation doesn't have keyframes that target a given node, the node will
    remain unchanged.
  ]],
  arguments = {
    name = {
      type = 'string',
      description = 'The name of an animation in the model file.'
    },
    index = {
      type = 'number',
      description = 'The index of an animation in the model file.'
    },
    time = {
      type = 'number',
      description = 'The timestamp to evaluate the keyframes at, in seconds.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = 'How much of the animation\'s pose to blend into the nodes, from 0 to 1.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'name', 'time', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'time', 'blend' },
      returns = {}
    }
  },
  notes = [[
    If the timestamp is larger than the duration of the animation, it will wrap back around to zero,
    so looping an animation doesn't require using the modulo operator.

    To change the speed of the animation, multiply the timestamp by a speed factor.

    For each animated property in the animation, if the timestamp used for the animation is less
    than the timestamp of the first keyframe, the data of the first keyframe will be used.

    This function can be called multiple times to layer and blend animations.  The model joints will
    be drawn in the final resulting pose.

    `Model:resetNodeTransforms` can be used to reset the model nodes to their initial transforms,
    which is helpful to ensure animating starts from a clean slate.
  ]],
  related = {
    'Model:resetNodeTransforms',
    'Model:getAnimationCount',
    'Model:getAnimationName',
    'Model:getAnimationDuration',
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodeTransform',
    'Model:setNodeTransform'
  }
}
