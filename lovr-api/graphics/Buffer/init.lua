return {
  summary = 'A block of memory on the GPU.',
  description = [[
    A Buffer is a block of memory on the GPU.  It's like a GPU version of a `Blob`.  Lua code can
    write data to the buffer which uploads to VRAM, and shaders read buffer data during rendering.
    Compute shaders can also write to buffers.

    The **size** of a Buffer is the number of bytes of VRAM it occupies.  It's set when the Buffer
    is created and can't be changed afterwards.

    Buffers can optionally have a **format**, which defines the type of data stored in the buffer.
    The format determines how Lua values are converted into binary.  Like the size, it can't change
    after the buffer is created.  `Shader:getBufferFormat` returns the format of a variable in a
    `Shader`.

    When a Buffer has a format, it also has a **length**, which is the number of items it holds, and
    a **stride**, which is the number of bytes between each item.

    `Buffer:setData` is used to upload data to the Buffer.  `Buffer:clear` can also be used to
    efficiently zero out a Buffer.

    `Buffer:getData` can be used to download data from the Buffer, but be aware that it stalls the
    GPU until the download is complete, which is very slow!  `Buffer:newReadback` will instead
    download the data in the background, which avoids costly stalls.

    Buffers are often used for mesh data.  Vertices stored in buffers can be drawn using
    `Pass:mesh`.  `Mesh` objects can also be used, which wrap Buffers along with some extra
    metadata.

    Buffers can be "bound" to a variable in a Shader using `Pass:send`.  That means that the next
    time the shader runs, the data from the Buffer will be used for the stuff in the variable.

    It's important to understand that data from a Buffer will only be used at the point when
    graphics commands are actually submitted.  This example records 2 draws, changing the buffer
    data between each one:

        buffer:setData(data1)
        pass:mesh(buffer)
        buffer:setData(data2)
        pass:mesh(buffer)
        lovr.graphics.submit(pass)

    **Both** draws will use `data2` here!  That's because `lovr.graphics.submit` is where the draws
    actually get processed, so they both see the "final" state of the buffer.  The data in a Buffer
    can't be 2 things at once!  If you need multiple versions of data, it's best to use a bigger
    buffer with offsets (or multiple buffers).
  ]],
  constructors = {
    'lovr.graphics.newBuffer',
    'lovr.graphics.getBuffer'
  },
  sections = {
    {
      name = 'Metadata',
      tag = 'buffer-metadata'
    },
    {
      name = 'Transfers',
      tag = 'buffer-transfer'
    }
  }
}
