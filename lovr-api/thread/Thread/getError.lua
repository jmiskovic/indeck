return {
  summary = 'Get the Thread\'s error message.',
  description = [[
    Returns the message for the error that occurred on the Thread, or nil if no error has occurred.
  ]],
  arguments = {},
  returns = {
    error = {
      type = 'string',
      description = 'The error message, or `nil` if no error has occurred on the Thread.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'error' }
    }
  },
  related = {
    'lovr.threaderror'
  }
}
