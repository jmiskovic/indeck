return {
  tag = 'colliders',
  summary = 'Add a Collider with a MeshShape to the World.',
  description = 'Adds a new Collider to the World with a MeshShape already attached.',
  arguments = {
    {
      name = 'vertices',
      type = 'table',
      description = 'The table of vertices in the mesh.  Each vertex is a table with 3 numbers.'
    },
    {
      name = 'indices',
      type = 'table',
      description = [[
        A table of triangle indices representing how the vertices are connected in the Mesh.
      ]]
    }
  },
  returns = {
    {
      name = 'collider',
      type = 'Collider',
      description = 'The new Collider.'
    }
  },
  related = {
    'Collider',
    'World:newCollider',
    'World:newBoxCollider',
    'World:newCapsuleCollider',
    'World:newCylinderCollider',
    'World:newSphereCollider'
  }
}
