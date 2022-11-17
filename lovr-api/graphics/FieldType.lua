return {
  description = [[
    Different types for `Buffer` fields.  These are scalar, vector, or matrix types, usually packed
    into small amounts of space to reduce the amount of memory they occupy.

    The names are encoded as follows:

    - The data type:
      - `i` for signed integer
      - `u` for unsigned integer
      - `sn` for signed normalized (-1 to 1)
      - `un` for unsigned normalized (0 to 1)
      - `f` for floating point
    - The bit depth of each component
    - The letter `x` followed by the component count (for vectors)
  ]],
  values = {
    {
      name = 'i8x4',
      description = 'Four 8-bit signed integers.'
    },
    {
      name = 'u8x4',
      description = 'Four 8-bit unsigned integers.'
    },
    {
      name = 'sn8x4',
      description = 'Four 8-bit signed normalized values.'
    },
    {
      name = 'un8x4',
      description = 'Four 8-bit unsigned normalized values (aka `color`).'
    },
    {
      name = 'un10x3',
      description = 'Three 10-bit unsigned normalized values, and 2 padding bits (aka `normal`).'
    },
    {
      name = 'i16',
      description = 'One 16-bit signed integer.'
    },
    {
      name = 'i16x2',
      description = 'Two 16-bit signed integers.'
    },
    {
      name = 'i16x4',
      description = 'Four 16-bit signed integers.'
    },
    {
      name = 'u16',
      description = 'One 16-bit unsigned integer.'
    },
    {
      name = 'u16x2',
      description = 'Two 16-bit unsigned integers.'
    },
    {
      name = 'u16x4',
      description = 'Four 16-bit unsigned integers.'
    },
    {
      name = 'sn16x2',
      description = 'Two 16-bit signed normalized values.'
    },
    {
      name = 'sn16x4',
      description = 'Four 16-bit signed normalized values.'
    },
    {
      name = 'un16x2',
      description = 'Two 16-bit unsigned normalized values.'
    },
    {
      name = 'un16x4',
      description = 'Four 16-bit unsigned normalized values.'
    },
    {
      name = 'i32',
      description = 'One 32-bit signed integer (aka `int`).'
    },
    {
      name = 'i32x2',
      description = 'Two 32-bit signed integers.'
    },
    {
      name = 'i32x2',
      description = 'Two 32-bit signed integers.'
    },
    {
      name = 'i32x3',
      description = 'Three 32-bit signed integers.'
    },
    {
      name = 'i32x4',
      description = 'Four 32-bit signed integers.'
    },
    {
      name = 'u32',
      description = 'One 32-bit unsigned integer (aka `uint`).'
    },
    {
      name = 'u32x2',
      description = 'Two 32-bit unsigned integers.'
    },
    {
      name = 'u32x3',
      description = 'Three 32-bit unsigned integers.'
    },
    {
      name = 'u32x4',
      description = 'Four 32-bit unsigned integers.'
    },
    {
      name = 'f16x2',
      description = 'Two 16-bit floating point numbers.'
    },
    {
      name = 'f16x4',
      description = 'Four 16-bit floating point numbers.'
    },
    {
      name = 'f32',
      description = 'One 32-bit floating point number (aka `float`).'
    },
    {
      name = 'f32x2',
      description = 'Two 32-bit floating point numbers (aka `vec2`).'
    },
    {
      name = 'f32x3',
      description = 'Three 32-bit floating point numbers (aka `vec3`).'
    },
    {
      name = 'f32x4',
      description = 'Four 32-bit floating point numbers (aka `vec4`).'
    },
    {
      name = 'mat2',
      description = 'A 2x2 matrix containing four 32-bit floats.'
    },
    {
      name = 'mat3',
      description = 'A 3x3 matrix containing nine 32-bit floats.'
    },
    {
      name = 'mat4',
      description = 'A 4x4 matrix containing sixteen 32-bit floats.'
    },
  },
  notes = [[
    In addition to these values, the following aliases can be used:

    <table>
      <thead>
        <tr>
          <td>Alias</td>
          <td>Maps to</td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>vec2</code></td>
          <td><code>f32x2</code></td>
        </tr>
        <tr>
          <td><code>vec3</code></td>
          <td><code>f32x3</code></td>
        </tr>
        <tr>
          <td><code>vec4</code></td>
          <td><code>f32x4</code></td>
        </tr>
        <tr>
          <td><code>int</code></td>
          <td><code>i32</code></td>
        </tr>
        <tr>
          <td><code>uint</code></td>
          <td><code>u32</code></td>
        </tr>
        <tr>
          <td><code>float</code></td>
          <td><code>f32</code></td>
        </tr>
        <tr>
          <td><code>color</code></td>
          <td><code>un8x4</code></td>
        </tr>
      </tbody>
    </table>

    Additionally, the following convenience rules apply:

    - Field types can end in an `s`, which will be stripped off.
    - Field types can end in `x1`, which will be stripped off.

    So you can write, e.g. `lovr.graphics.newBuffer(4, 'floats')`, which is cute!
  ]],
  related = {
    'lovr.graphics.newBuffer',
    'lovr.graphics.getBuffer',
    'Buffer:getFormat'
  }
}
