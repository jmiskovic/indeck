return {
  summary = 'Compute mass properties for the Collider.',
  description = 'Computes mass properties for the Collider.',
  arguments = {},
  returns = {
    cx = {
      type = 'number',
      description = 'The x position of the center of mass.'
    },
    cy = {
      type = 'number',
      description = 'The y position of the center of mass.'
    },
    cz = {
      type = 'number',
      description = 'The z position of the center of mass.'
    },
    mass = {
      type = 'number',
      description = 'The computed mass of the Collider.'
    },
    inertia = {
      type = 'table',
      description = [[
        A table containing 6 values of the rotational inertia tensor matrix.  The table contains the
        3 diagonal elements of the matrix (upper left to bottom right), followed by the 3 elements
        of the upper right portion of the 3x3 matrix.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'cx', 'cy', 'cz', 'mass', 'inertia' }
    }
  },
  related = {
    'Collider:getMass',
    'Collider:setMass',
    'Shape:getMass'
  }
}
