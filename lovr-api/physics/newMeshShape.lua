return {
  tag = 'shapes',
  summary = 'Create a new MeshShape.',
  description = 'Creates a new MeshShape.',
  arguments = {
    vertices = {
      type = 'table',
      description = 'The table of vertices in the mesh.  Each vertex is a table with 3 numbers.'
    },
    indices = {
      type = 'table',
      description = [[
        A table of triangle indices representing how the vertices are connected in the Mesh.
      ]]
    },
    model = {
      type = 'Model',
      description = [[
        A Model to use for the mesh data.  Similar to calling `Model:getTriangles` and passing it to
        this function, but has better performance.
      ]]
    }
  },
  returns = {
    mesh = {
      type = 'MeshShape',
      description = 'The new MeshShape.'
    }
  },
  variants = {
    {
      arguments = { 'vertices', 'indices' },
      returns = { 'mesh' }
    },
    {
      arguments = { 'model' },
      returns = { 'mesh' }
    }
  },
  notes = 'A Shape can be attached to a Collider using `Collider:addShape`.',
  related = {
    'MeshShape',
    'lovr.physics.newBoxShape',
    'lovr.physics.newCapsuleShape',
    'lovr.physics.newCylinderShape',
    'lovr.physics.newSphereShape',
    'lovr.physics.newTerrainShape',
    'Model:getTriangles'
  }
}
