return {
  summary = 'Get a list of Joints attached to the Collider.',
  description = 'Returns a list of Joints attached to the Collider.',
  arguments = {},
  returns = {
    joints = {
      type = 'table',
      description = 'A list of Joints attached to the Collider.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'joints' }
    }
  },
  related = {
    'Joint'
  }
}
