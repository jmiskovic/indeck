return {
  tag = 'work-submission',
  summary = 'Submit recorded graphics work to the GPU.',
  description = 'Submits work to the GPU.',
  arguments = {
    ['...'] = {
      type = 'Pass',
      description = 'The pass objects to submit.  Falsy values will be skipped.'
    },
    t = {
      type = 'table',
      description = 'A table of passes to submit.  Falsy values will be skipped.'
    }
  },
  returns = {
    ['true'] = {
      type = 'boolean',
      description = 'Always returns true, for convenience when returning from `lovr.draw`.'
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'true' }
    },
    {
      arguments = { 't' },
      returns = { 'true' }
    }
  },
  notes = [[
    The submitted `Pass` objects will run in the order specified.  Commands within a single Pass do
    not have any ordering guarantees.

    Submitting work to the GPU is not thread safe.  No other `lovr.graphics` or `Pass` functions may
    run at the same time as `lovr.graphics.submit`.

    Calling this function will invalidate any temporary buffers or passes that were created during
    the frame.

    Submitting work to the GPU is a relatively expensive operation.  It's a good idea to batch all
    `Pass` objects into 1 submission if possible, unless there's a good reason not to.  One such
    reason would be that the frame has so much work that some of it needs to be submitted early to
    prevent the GPU from running out of things to do.  Another would be for `Readback` objects.

    By default, this function is called with the default pass at the end of `lovr.draw` and
    `lovr.mirror`.

    It is valid to submit zero passes.  This will send an empty batch of work to the GPU.
  ]],
  related = {
    'lovr.graphics.wait'
  }
}
