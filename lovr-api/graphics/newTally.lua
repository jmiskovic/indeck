return {
  tag = 'graphics-objects',
  summary = 'Create a new Tally.',
  description = 'Creates a new Tally.',
  arguments = {
    type = {
      type = 'TallyType',
      description = 'The type of the Tally, which controls what "thing" it measures.'
    },
    count = {
      type = 'number',
      description = 'The number of slots in the Tally.  Each slot holds one measurement.'
    },
    views = {
      type = 'number',
      default = '2',
      description = [[
        Tally objects with the `time` type can only be used in render passes with a certain number
        of views.  This is ignored for other types of tallies.
      ]]
    }
  },
  returns = {
    tally = {
      type = 'Tally',
      description = 'The new Tally.'
    }
  },
  variants = {
    {
      arguments = { 'type', 'count', 'views' },
      returns = { 'tally' }
    }
  },
  related = {
    'Pass:tick',
    'Pass:tock'
  }
}
