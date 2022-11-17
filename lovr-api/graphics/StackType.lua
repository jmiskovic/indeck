return {
  summary = 'Types of stacks that can be pushed and popped.',
  description = [[
    Different types of stacks that can be pushed and popped with `Pass:push` and `Pass:pop`.
  ]],
  values = {
    {
      name = 'transform',
      description = 'The transform stack (`Pass:transform`, `Pass:translate`, etc.).'
    },
    {
      name = 'state',
      description = [[
        Graphics state, like `Pass:setColor`, `Pass:setFont`, etc.  Notably this does not include
        camera poses/projections or shader variables changed with `Pass:send`.
      ]]
    }
  }
}
