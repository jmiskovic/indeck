return {
  tag = 'colliders',
  summary = 'Add a Collider with a CylinderShape to the World.',
  description = 'Adds a new Collider to the World with a CylinderShape already attached.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the cylinder.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the cylinder.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the cylinder.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the cylinder, in meters.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the cylinder, in meters.'
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
      arguments = { 'x', 'y', 'z', 'radius', 'length' },
      returns = { 'collider' }
    }
  },
  related = {
    'CylinderShape',
    'Collider',
    'World:newCollider',
    'World:newBoxCollider',
    'World:newCapsuleCollider',
    'World:newMeshCollider',
    'World:newSphereCollider',
    'World:newTerrainCollider'
  }
}
