return {
  tag = 'microphones',
  summary = 'Get the names of all connected microphones.',
  description = 'Returns a table with the names of all microphones connected to the system.',
  arguments = {
    t = {
      type = 'table',
      description = 'A table to fill with the microphone names.'
    }
  },
  returns = {
    names = {
      type = 'table',
      description = 'The list of microphone names as strings.'
    },
    t = {
      type = 'table',
      description = 'The original table that was passed in.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'names' }
    },
    {
      arguments = { 't' },
      returns = { 't' }
    }
  },
  related = {
    'lovr.audio.newMicrophone',
    'Microphone'
  }
}
