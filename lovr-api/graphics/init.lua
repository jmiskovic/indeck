return {
  tag = 'modules',
  summary = 'Renders graphics using the GPU.',
  description = [[
    The graphics module renders graphics and performs computation using the GPU.

    Most of the graphics functions are on the `Pass` object.
  ]],
  sections = {
    {
      name = 'Objects',
      tag = 'graphics-objects'
    },
    {
      name = 'Global State',
      tag = 'graphics-global'
    },
    {
      name = 'Work Submission',
      tag = 'work-submission',
      description = [[
        The only way to get the GPU to do anything is to submit `Pass` objects to it.  LÖVR submits
        the default pass automatically at the end of `lovr.draw`, but work can also be submitted
        manually.
      ]]
    },
    {
      name = 'System Info',
      tag = 'graphics-misc',
      description = 'Information about the GPU hardware and the features it supports.'
    }
  }
}
