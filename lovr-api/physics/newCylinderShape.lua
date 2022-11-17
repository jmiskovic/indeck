return {
  tag = 'shapes',
  summary = 'Create a new CylinderShape.',
  description = 'Creates a new CylinderShape.',
  arguments = {
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
    cylinder = {
      type = 'CylinderShape',
      description = 'The new CylinderShape.'
    }
  },
  variants = {
    {
      arguments = { 'radius', 'length' },
      returns = { 'cylinder' }
    }
  },
  notes = 'A Shape can be attached to a Collider using `Collider:addShape`.',
  related = {
    'CylinderShape',
    'lovr.physics.newBoxShape',
    'lovr.physics.newCapsuleShape',
    'lovr.physics.newSphereShape'
  }
}
