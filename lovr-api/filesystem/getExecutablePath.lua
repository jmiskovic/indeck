return {
  summary = 'Get the path of the LÖVR executable.',
  description = 'Returns the absolute path of the LÖVR executable.',
  arguments = {},
  returns = {
    path = {
      type = 'string',
      description = 'The absolute path of the LÖVR executable, or `nil` if it is unknown.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'path' }
    }
  }
}
