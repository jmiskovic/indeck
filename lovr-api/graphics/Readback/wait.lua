return {
  summary = 'Wait for the Readback to finish.',
  description = 'Blocks the CPU until the Readback is finished on the GPU.',
  arguments = {},
  returns = {
    waited = {
      type = 'boolean',
      description = 'Whether the CPU had to be blocked for waiting.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'waited' }
    }
  },
  notes = [[
    If the transfer pass that created the readback has not been submitted yet, no wait will occur
    and this function will return `false`.
  ]]
}
