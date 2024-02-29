return {
  summary = 'Apply a force to the Collider.',
  description = 'Applies a force to the Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x component of the force to apply.'
    },
    y = {
      type = 'number',
      description = 'The y component of the force to apply.'
    },
    z = {
      type = 'number',
      description = 'The z component of the force to apply.'
    },
    px = {
      type = 'number',
      description = 'The x position to apply the force at, in world coordinates.'
    },
    py = {
      type = 'number',
      description = 'The y position to apply the force at, in world coordinates.'
    },
    pz = {
      type = 'number',
      description = 'The z position to apply the force at, in world coordinates.'
    },
    force = {
      type = 'Vec3',
      description = 'The force vector to apply.'
    },
    position = {
      type = 'Vec3',
      description = 'The position to apply the force at, in world coordinates.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      arguments = { 'x', 'y', 'z', 'px', 'py', 'pz' },
      returns = {}
    },
    {
      arguments = { 'force' },
      returns = {}
    },
    {
      arguments = { 'force', 'position' },
      returns = {}
    }
  },
  notes = 'If the Collider is asleep, calling this function will wake it up.',
  related = {
    'Collider:applyTorque'
  }
}
