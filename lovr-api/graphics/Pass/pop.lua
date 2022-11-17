return {
  tag = 'transform',
  summary = 'Pop one of the stacks.',
  description = [[
    Pops the transform or render state stack, restoring it to the state it was in when it was last
    pushed.
  ]],
  arguments = {
    stack = {
      type = 'StackType',
      default = [['transform']],
      description = 'The type of stack to pop.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'stack' },
      returns = {}
    }
  },
  notes = [[
    If a stack is popped without a corresponding push, the stack "underflows" which causes an error.
  ]],
  related = {
    'Pass:push',
    'StackType'
  }
}
