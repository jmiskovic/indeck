return {
  summary = 'Get the require path.',
  description = [[
    Returns the require path.  The require path is a semicolon-separated list of patterns that LÖVR
    will use to search for files when they are `require`d.  Any question marks in the pattern will
    be replaced with the module that is being required.  It is similar to Lua\'s `package.path`
    variable, but the main difference is that the patterns are relative to the virtual filesystem.

    For the C require path, double question marks will be replaced by the name of the module with
    the operating system's native extension for shared libraries.  For example, if you do
    `require('lib')` and the C require path is `??`, LÖVR will try to load `lib.dll` if you're on
    Windows or `lib.so` if you're on Linux.
  ]],
  arguments = {},
  returns = {
    {
      name = 'path',
      type = 'string',
      description = 'The semicolon separated list of search patterns.'
    },
    {
      name = 'cpath',
      type = 'string',
      description = 'The semicolon separated list of search patterns for C libraries.'
    }
  },
  notes = [[
    The default reqiure path is '?.lua;?/init.lua;lua_modules/?.lua;lua_modules/?/init.lua'.  The
    default C require path is '??'.
  ]]
}
