return {
  tag = 'shapes',
  summary = 'Create a new BoxShape.',
  description = 'Creates a new BoxShape.',
  arguments = {
    width = {
      type = 'number',
      default = '1',
      description = 'The width of the box, in meters.'
    },
    height = {
      type = 'number',
      default = 'width',
      description = 'The height of the box, in meters.'
    },
    depth = {
      type = 'number',
      default = 'width',
      description = 'The depth of the box, in meters.'
    }
  },
  returns = {
    box = {
      type = 'BoxShape',
      description = 'The new BoxShape.'
    }
  },
  variants = {
    {
      arguments = { 'width', 'height', 'depth' },
      returns = { 'box' }
    }
  },
  notes = 'A Shape can be attached to a Collider using `Collider:addShape`.',
  related = {
    'BoxShape',
    'lovr.physics.newCapsuleShape',
    'lovr.physics.newCylinderShape',
    'lovr.physics.newSphereShape'
  }
}
