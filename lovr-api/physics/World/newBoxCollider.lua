return {
  tag = 'colliders',
  summary = 'Add a Collider with a BoxShape to the World.',
  description = 'Adds a new Collider to the World with a BoxShape already attached.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the box.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the box.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the box.'
    },
    width = {
      type = 'number',
      default = '1',
      description = 'The total width of the box, in meters.'
    },
    height = {
      type = 'number',
      default = 'width',
      description = 'The total height of the box, in meters.'
    },
    depth = {
      type = 'number',
      default = 'width',
      description = 'The total depth of the box, in meters.'
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
      arguments = { 'x', 'y', 'z', 'width', 'height', 'depth' },
      returns = { 'collider' }
    }
  },
  related = {
    'BoxShape',
    'Collider',
    'World:newCollider',
    'World:newCapsuleCollider',
    'World:newCylinderCollider',
    'World:newMeshCollider',
    'World:newSphereCollider',
    'World:newTerrainCollider'
  }
}
