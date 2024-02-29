return {
  tag = 'colliders',
  summary = 'Add a Collider with a SphereShape to the World.',
  description = 'Adds a new Collider to the World with a SphereShape already attached.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the sphere, in meters.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the sphere, in meters.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the sphere, in meters.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the sphere, in meters.'
    },
    position = {
      type = 'Vec3',
      description = 'The position of the center of the sphere, in meters.'
    }
  },
  returns = {
    collider = {
      type = 'Collider',
      description = 'The new Collider.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'radius' },
      returns = { 'collider' }
    },
    {
      arguments = { 'position', 'radius' },
      returns = { 'collider' }
    }
  },
  related = {
    'SphereShape',
    'Collider',
    'World:newCollider',
    'World:newBoxCollider',
    'World:newCapsuleCollider',
    'World:newCylinderCollider',
    'World:newMeshCollider',
    'World:newTerrainCollider'
  }
}
