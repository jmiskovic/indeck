return {
  summary = 'Get the vertex format of the Mesh.',
  description = [[
    Returns the vertex format of the Mesh, which is a list of "attributes" that make up the data for
    each vertex (position, color, UV, etc.).
  ]],
  arguments = {},
  returns = {
    format = {
      type = 'table',
      description = 'The vertex format.',
      table = {
        {
          name = '[][1]',
          type = 'string',
          description = 'The name of the attribute.'
        },
        {
          name = '[][2]',
          type = 'DataType',
          description = 'The type of the attribute.'
        },
        {
          name = '[][3]',
          type = 'number',
          description = 'The byte offset of the attribute.'
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'format' }
    }
  },
  notes = [[
    If no vertex format is given when the Mesh is created, it will use a default format:

        {
          { 'VertexPosition', 'vec3', 0 },
          { 'VertexNormal', 'vec3', 12 },
          { 'VertexUV', 'vec2', 24 }
        }

    The name of the vertex attribute corresponds to an `in` input variable in a vertex shader.

    There are a few built-in attributes that all shaders will understand and use by default:

    <table>
      <thead>
        <tr>
          <td>Name</td>
          <td>Description</td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>VertexPosition</code></td>
          <td>The position of the vertex.</td>
        </tr>
        <tr>
          <td><code>VertexNormal</code></td>
          <td>The normal vector of the vertex.</td>
        </tr>
        <tr>
          <td><code>VertexUV</code></td>
          <td>The texture coordinate of the vertex.</td>
        </tr>
        <tr>
          <td><code>VertexColor</code></td>
          <td>The color of the vertex (linear color space).</td>
        </tr>
        <tr>
          <td><code>VertexTangent</code></td>
          <td>The tangent vector of the vertex.</td>
        </tr>
      </tbody>
    </table>

    See the `Shaders` and `Meshes` guides for more info.
  ]],
  related = {
    'Mesh:getVertexCount',
    'Mesh:getVertexStride',
    'lovr.graphics.newMesh'
  }
}
