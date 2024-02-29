return {
  tag = 'buffer-transfer',
  summary = 'Get the data in the Buffer.',
  description = [[
    Downloads the Buffer's data from VRAM and returns it as a table.  This function is very very
    slow because it stalls the CPU until the data is finished downloading, so it should only be used
    for debugging or non-interactive scripts.  `Buffer:newReadback` is an alternative that returns a
    `Readback` object, which will not block the CPU.
  ]],
  arguments = {
    index = {
      type = 'number',
      default = '1',
      description = 'The index of the first item to read.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = 'The number of items to read.  If nil, reads the remainder of the buffer.'
    }
  },
  returns = {
    t = {
      type = 'table',
      description = 'The table with the Buffer\'s data.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'count' },
      returns = { 't' }
    }
  },
  notes = [[
    The length of the table will equal the number of items read.  Here are some examples of how the
    table is formatted:

        buffer = lovr.graphics.newBuffer('int', { 7 })
        buffer:getData() --> returns { 7 }

        buffer = lovr.graphics.newBuffer('vec3', { 7, 8, 9 })
        buffer:getData() --> returns {{ 7, 8, 9 }}

        buffer = lovr.graphics.newBuffer('int', { 1, 2, 3 })
        buffer:getData() --> returns { 1, 2, 3 }

        buffer = lovr.graphics.newBuffer({ 'vec2', 'vec2' }, {
          vec2(1,2), vec2(3,4),
          vec2(5,6), vec2(7,8)
        })
        buffer:getData() --> returns { { 1, 2, 3, 4 }, { 5, 6, 7, 8 } }

        buffer = lovr.graphics.newBuffer({
          { 'a', 'float' },
          { 'b', 'float' }
        }, { a = 1, b = 2 })
        buffer:getData() --> returns { { 1, 2 } }

        buffer = lovr.graphics.newBuffer({
          { 'x', 'int', 3 }
        }, { x = { 1, 2, 3 } })
        buffer:getData() --> returns { { x = { 1, 2, 3 } } }

        buffer = lovr.graphics.newBuffer({
          { 'lights', {
            { 'pos', 'vec3' },
            { 'size', 'float' },
          }, 10}
        }, data)
        buffer:getData() --> returns { { lights = { { pos = ..., size = ... }, ... } } }

    In summary, each individual item is wrapped in a table, except if the format is a single number.
    If the format has nested types or arrays then the tables will be key-value, otherwise they will
    use numeric keys.
  ]],
  related = {
    'Buffer:newReadback',
    'Buffer:mapData',
    'Readback:getData'
  }
}
