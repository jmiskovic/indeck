return {
  tag = 'shapes',
  summary = 'Create a new CapsuleShape.',
  description = 'Creates a new CapsuleShape.  Capsules are cylinders with hemispheres on each end.',
  arguments = {
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the capsule, in meters.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the capsule, not including the caps, in meters.'
    }
  },
  returns = {
    capsule = {
      type = 'CapsuleShape',
      description = 'The new CapsuleShape.'
    }
  },
  variants = {
    {
      arguments = { 'radius', 'length' },
      returns = { 'capsule' }
    }
  },
  notes = 'A Shape can be attached to a Collider using `Collider:addShape`.',
  related = {
    'CapsuleShape',
    'lovr.physics.newBoxShape',
    'lovr.physics.newCylinderShape',
    'lovr.physics.newMeshShape',
    'lovr.physics.newSphereShape',
    'lovr.physics.newTerrainShape'
  }
}
