return {
  summary = 'Start the Thread.',
  description = 'Starts the Thread.',
  arguments = {
    ['...arguments'] = {
      type = '*',
      description = 'Up to 4 arguments to pass to the Thread\'s function.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { '...arguments' },
      returns = {}
    }
  },
  notes = 'The arguments can be nil, booleans, numbers, strings, or LÖVR objects.',
  example = [=[
    function lovr.load()
      lovr.thread.newThread([[
        print(...)
      ]]):start(lovr.getVersion())
    end
  ]=]
}
