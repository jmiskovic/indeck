return {
  tag = 'transform',
  summary = 'Push state onto a stack.',
  description = [[
    Saves a copy of the transform or render states.  Further changes can be made to the transform or
    render states, and afterwards `Pass:pop` can be used to restore the original state.  Pushes and
    pops can be nested, but it's an error to pop without a corresponding push.
  ]],
  arguments = {
    stack = {
      type = 'StackType',
      default = [['transform']],
      description = 'The type of stack to push.'
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
    Each stack has a limit of the number of copies it can store.  There can be 16 transforms and 4
    render states saved.

    The `state` stack does not save the camera info or shader variables changed with `Pass:send`.
  ]],
  related = {
    'Pass:pop',
    'StackType'
  }
}
