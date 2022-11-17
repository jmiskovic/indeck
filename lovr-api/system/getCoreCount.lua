return {
  summary = 'Get the number of logical cores.',
  description = 'Returns the number of logical cores on the system.',
  arguments = {},
  returns = {
    cores = {
      type = 'number',
      description = 'The number of logical cores on the system.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'cores' }
    }
  },
  related = {
    'lovr.thread'
  }
}
