return {
  summary = 'Get the response time of the joint.',
  description = [[
    Returns the response time of the joint.  See `World:setResponseTime` for more info.
  ]],
  arguments = {},
  returns = {
    responseTime = {
      type = 'number',
      description = 'The response time setting for the joint.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'responseTime' }
    }
  },
  related = {
    'BallJoint:getResponseTime',
    'BallJoint:setResponseTime',
    'World:getResponseTime',
    'World:setResponseTime'
  }
}
