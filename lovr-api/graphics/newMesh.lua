return {
  tag = 'graphics-objects',
  summary = 'Create a new Mesh.',
  description = [[
    Creates a Mesh.  The capacity of the Mesh must be provided upfront, using either a vertex count
    or the vertex data itself.  A custom vertex format can be given to specify the set of attributes
    in each vertex, which get sent to the vertex shader.  If the format isn't given, the default
    vertex format will be used:

        {
          { 'VertexPosition', 'vec3' },
          { 'VertexNormal', 'vec3' },
          { 'VertexUV', 'vec2' }
        }
  ]],
  arguments = {
    format = {
      type = 'table',
      description = [[
        A table of attributes describing the format of each vertex.  Each attribute is a table that
        must have `name` and `type` keys, where the name is a string and the type is a `DataType`.
        Attributes can also have an `offset` key, which is a byte offset relative to the start of
        the vertex.  As a shorthand, the name and type can be given as a pair without keys.
        Additionally, the format can have a `stride` key to set the number of bytes between
        subsequent vertices.
      ]]
    },
    count = {
      type = 'number',
      description = 'The number of vertices in the Mesh.'
    },
    vertices = {
      type = 'table',
      description = [[
        A table of vertices, formatted according to the vertex format.  The length of the table will
        be used to set the vertex count of the Mesh.
      ]]
    },
    blob = {
      type = 'Blob',
      description = [[
        A Blob containing vertex data, formatted according to the vertex format.  The size of the
        Blob will be used to set the vertex count of the Mesh, and must be a multiple of the vertex
        size.
      ]]
    },
    buffer = {
      type = 'Buffer',
      description = [[
        A Buffer containing vertex data.  Its length will be used as the vertex count, and its
        format will be used as the vertex format.
      ]]
    },
    storage = {
      type = 'MeshStorage',
      default = [['cpu']],
      description = 'The storage mode of the Mesh.'
    }
  },
  returns = {
    mesh = {
      type = 'Mesh',
      description = 'The new Mesh.'
    }
  },
  variants = {
    {
      arguments = { 'count', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'vertices', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'blob', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'format', 'count', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'format', 'vertices', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'format', 'blob', 'storage' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'buffer' },
      returns = { 'mesh' }
    }
  },
  notes = 'The Mesh will always use the `gpu` storage mode if it\'s created from a vertex buffer.',
  example = [[
    function lovr.load()
      mesh = lovr.graphics.newMesh({
        { 'VertexPosition', 'vec3' },
        { 'VertexColor', 'vec4' }
      }, {
        {   0,  .4, 0 , 1, 0, 0, 1 },
        { -.5, -.4, 0 , 0, 1, 0, 1 },
        {  .5, -.4, 0 , 0, 0, 1, 1 }
      })
    end

    function lovr.draw(pass)
      pass:draw(mesh, 0, 1.7, -1)
    end
  ]],
  related = {
    'lovr.graphics.newBuffer',
    'lovr.graphics.newModel'
  }
}
