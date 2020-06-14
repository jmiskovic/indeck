return {
  tag = 'library',
  summary = 'Encodes and decodes JSON.',
  description = [[
    The json module exposes functions for encoding and decoding JSON. You can use it by requiring
    the `cjson` module.
  ]],
  external = true,
  example = [[
    local json = require 'cjson'
    local data = { health = 10, position = { 1, 2, 3 } }
    local encoded = json.encode(data)
    print(encoded)
    local decoded = json.decode(encoded)
    print(decoded.health, unpack(decoded.position))
  ]]
}
