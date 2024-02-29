return {
  summary = 'An asynchronous read of a GPU resource.',
  description = [[
    Readbacks track the progress of an asynchronous read of a `Buffer` or `Texture`.  The Readback
    can be polled for completion or the CPU with `Readback:isComplete`, or you can wait for it to
    finish using `Readback:wait`.
  ]],
  constructors = {
    'Buffer:newReadback',
    'Texture:newReadback'
  }
}
