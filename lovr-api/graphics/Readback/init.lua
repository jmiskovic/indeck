return {
  summary = 'An asynchronous read of a GPU resource.',
  description = [[
    Readbacks track the progress of an asynchronous read of a `Buffer`, `Texture`, or `Tally`.  Once
    a Readback is created in a transfer pass, and the transfer pass is submitted, the Readback can
    be polled for completion or the CPU can wait for it to finish using `Readback:wait`.
  ]],
  constructor = 'Pass:read'
}
