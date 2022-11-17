return {
  summary = 'Get the inverse bind matrix for a joint in the skin.',
  description = 'Returns the inverse bind matrix for a joint in the skin.',
  arguments = {
    skin = {
      type = 'number',
      description = 'The index of a skin.'
    },
    joint = {
      type = 'number',
      description = 'The index of a joint in the skin.'
    }
  },
  returns = {
    ['...'] = {
      type = 'number',
      description = 'The 16 components of the 4x4 inverse bind matrix, in column-major order.'
    }
  },
  variants = {
    {
      arguments = { 'skin', 'joint' },
      returns = { '...' }
    }
  }
}
