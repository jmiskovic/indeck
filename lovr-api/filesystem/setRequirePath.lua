return {
  tag = 'filesystem-lua',
  summary = 'Set the require path.',
  description = [[
    Sets the require path.  The require path is a semicolon-separated list of patterns that LÖVR
    will use to search for files when they are `require`d.  Any question marks in the pattern will
    be replaced with the module that is being required.  It is similar to Lua\'s `package.path`
    variable, except the patterns will be checked using `lovr.filesystem` APIs. This allows
    `require` to work even when the project is packaged into a zip archive, or when the project is
    launched from a different directory.
  ]],
  arguments = {
    path = {
      type = 'string',
      default = 'nil',
      description = 'An optional semicolon separated list of search patterns.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'path' },
      returns = {}
    }
  },
  notes = 'The default reqiure path is \'?.lua;?/init.lua\'.'
}
