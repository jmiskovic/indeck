return {
  description = [[
    The different ways to pack Buffer fields into memory.

    The default is `packed`, which is suitable for vertex buffers and index buffers.  It doesn't add
    any padding between elements, and so it doesn't waste any space.  However, this layout won't
    necessarily work for uniform buffers and storage buffers.

    The `std140` layout corresponds to the std140 layout used for uniform buffers in GLSL.  It adds
    the most padding between fields, and requires the stride to be a multiple of 16.  Example:

        layout(std140) uniform ObjectScales { float scales[64]; };

    The `std430` layout corresponds to the std430 layout used for storage buffers in GLSL.  It adds
    some padding between certain types, and may round up the stride.  Example:

        layout(std430) buffer TileSizes { vec2 sizes[]; }
  ]],
  values = {
    {
      name = 'packed',
      description = 'The packed layout, without any padding.'
    },
    {
      name = 'std140',
      description = 'The std140 layout.'
    },
    {
      name = 'std430',
      description = 'The std430 layout.'
    }
  },
  related = {
    'lovr.graphics.newBuffer',
    'lovr.graphics.getBuffer',
    'Buffer:getFormat',
    'Buffer:getStride',
    'FieldType'
  }
}
