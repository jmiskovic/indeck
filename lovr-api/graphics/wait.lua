return {
  tag = 'work-submission',
  summary = 'Stall the CPU until all submitted GPU work is finished.',
  description = [[
    Waits for all submitted GPU work to finish.  A normal application that is trying to render
    graphics at a high framerate should never use this function, since waiting like this prevents
    the CPU from doing other useful work.  Otherwise, reasons to use this function might be for
    debugging or to force a `Readback` to finish immediately.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  related = {
    'lovr.graphics.submit'
  }
}
