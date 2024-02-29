return {
  tag = 'libraries',
  summary = 'UTF-8 string processing.',
  description = [[
    LÖVR includes Lua 5.3's `utf8` library, even on Lua versions that don't support it.  Lua's
    regular strings aren't utf8-aware, so this library makes it easier to work with multi-byte
    characters that are outside the ASCII range.

    See the [Lua reference manual](https://www.lua.org/manual/5.3/manual.html#6.5) for
    documentation.
  ]],
  external = true,
  example = [[
    local utf8 = require 'utf8'

    local str = 'LÖVR'

    print(string.len(str)) --> prints 5, because Ö takes up 2 bytes
    print(utf8.len(str))   --> prints 4
  ]]
}
