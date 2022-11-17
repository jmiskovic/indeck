return {
  summary = 'Load a file as Lua code.',
  description = 'Load a file containing Lua code, returning a Lua chunk that can be run.',
  arguments = {
    filename = {
      type = 'string',
      description = 'The file to load.'
    }
  },
  returns = {
    chunk = {
      type = 'function',
      arguments = {
        {
          name = '...',
          type = '*'
        }
      },
      returns = {
        {
          name = '...',
          type = '*'
        }
      },
      description = 'The runnable chunk.'
    }
  },
  variants = {
    {
      arguments = { 'filename' },
      returns = { 'chunk' }
    }
  },
  notes = 'An error is thrown if the file contains syntax errors.',
  example = {
    description = 'Safely loading code:',
    code = [[
      local success, chunk = pcall(lovr.filesystem.load, filename)
      if not success then
        print('Oh no! There was an error: ' .. tostring(chunk))
      else
        local success, result = pcall(chunk)
        print(success, result)
      end
    ]]
  }
}
