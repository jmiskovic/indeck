return {
  description = [[
    Different data layouts for pixels in `Image` and `Texture` objects.

    Formats starting with `d` are depth formats, used for depth/stencil render targets.

    Formats starting with `bc` and `astc` are compressed formats.  Compressed formats have better
    performance since they stay compressed on the CPU and GPU, reducing the amount of memory
    bandwidth required to look up all the pixels needed for shading.

    Formats without the `f` suffix are unsigned normalized formats, which store values in the range
    `[0,1]`.  The `f` suffix indicates a floating point format which can store values outside this
    range, and is used for HDR rendering or storing data in a texture.
  ]],
  values = {
    {
      name = 'r8',
      description = 'One 8-bit channel.  1 byte per pixel.'
    },
    {
      name = 'rg8',
      description = 'Two 8-bit channels.  2 bytes per pixel.'
    },
    {
      name = 'rgba8',
      description = 'Four 8-bit channels.  4 bytes per pixel.'
    },
    {
      name = 'r16',
      description = 'One 16-bit channel.  2 bytes per pixel.'
    },
    {
      name = 'rg16',
      description = 'Two 16-bit channels.  4 bytes per pixel.'
    },
    {
      name = 'rgba16',
      description = 'Four 16-bit channels.  8 bytes per pixel.'
    },
    {
      name = 'r16f',
      description = 'One 16-bit floating point channel.  2 bytes per pixel.'
    },
    {
      name = 'rg16f',
      description = 'Two 16-bit floating point channels.  4 bytes per pixel.'
    },
    {
      name = 'rgba16f',
      description = 'Four 16-bit floating point channels.  8 bytes per pixel.'
    },
    {
      name = 'r32f',
      description = 'One 32-bit floating point channel.  4 bytes per pixel.'
    },
    {
      name = 'rg32f',
      description = 'Two 32-bit floating point channels.  8 bytes per pixel.'
    },
    {
      name = 'rgba32f',
      description = 'Four 32-bit floating point channels.  16 bytes per pixel.'
    },
    {
      name = 'rgb565',
      description = 'Packs three channels into 16 bits.  2 bytes per pixel.'
    },
    {
      name = 'rgb5a1',
      description = 'Packs four channels into 16 bits, with "cutout" alpha.  2 bytes per pixel.'
    },
    {
      name = 'rgb10a2',
      description = 'Packs four channels into 32 bits.  4 bytes per pixel.'
    },
    {
      name = 'rg11b10f',
      description = 'Packs three unsigned floating point channels into 32 bits.  4 bytes per pixel.'
    },
    {
      name = 'd16',
      description = 'One 16-bit depth channel.  2 bytes per pixel.'
    },
    {
      name = 'd24s8',
      description = 'One 24-bit depth channel and one 8-bit stencil channel.  4 bytes per pixel.'
    },
    {
      name = 'd32f',
      description = 'One 32-bit floating point depth channel.  4 bytes per pixel.'
    },
    {
      name = 'd32fs8',
      description = [[
        One 32-bit floating point depth channel and one 8-bit stencil channel.  5 bytes per pixel.
      ]]
    },
    {
      name = 'bc1',
      description = [[
        3 channels.  8 bytes per 4x4 block, or 0.5 bytes per pixel.  Good for opaque images.
      ]]
    },
    {
      name = 'bc2',
      description = [[
        Four channels.  16 bytes per 4x4 block or 1 byte per pixel.  Not good for anything, because
        it only has 16 distinct levels of alpha.
      ]]
    },
    {
      name = 'bc3',
      description = [[
        Four channels.  16 bytes per 4x4 block or 1 byte per pixel.  Good for color images with
        transparency.
      ]]
    },
    {
      name = 'bc4u',
      description = [[
        One unsigned normalized channel.  8 bytes per 4x4 block or 0.5 bytes per pixel.  Good for
        grayscale images, like heightmaps.
      ]]
    },
    {
      name = 'bc4s',
      description = [[
        One signed normalized channel.  8 bytes per 4x4 block or 0.5 bytes per pixel.  Similar to
        bc4u but has a range of -1 to 1.
      ]]
    },
    {
      name = 'bc5u',
      description = [[
        Two unsigned normalized channels.  16 bytes per 4x4 block, or 1 byte per pixel.  Good for
        normal maps.
      ]]
    },
    {
      name = 'bc5s',
      description = [[
        Two signed normalized channels.  16 bytes per 4x4 block or 1 byte per pixel.  Good for
        normal maps.
      ]]
    },
    {
      name = 'bc6uf',
      description = [[
        Three unsigned floating point channels.  16 bytes per 4x4 block or 1 byte per pixel.  Good
        for HDR images.
      ]]
    },
    {
      name = 'bc6sf',
      description = [[
        Three floating point channels.  16 bytes per 4x4 block or 1 byte per pixel.  Good for HDR
        images.
      ]]
    },
    {
      name = 'bc7',
      description = [[
        Four channels.  16 bytes per 4x4 block or 1 byte per pixel.  High quality.  Good for most
        color images, including transparency.
      ]]
    },
    {
      name = 'astc4x4',
      description = 'Four channels, 16 bytes per 4x4 block or 1 byte per pixel.'
    },
    {
      name = 'astc5x4',
      description = 'Four channels, 16 bytes per 5x4 block or 0.80 bytes per pixel.'
    },
    {
      name = 'astc5x5',
      description = 'Four channels, 16 bytes per 5x5 block or 0.64 bytes per pixel.'
    },
    {
      name = 'astc6x5',
      description = 'Four channels, 16 bytes per 6x5 block or 0.53 bytes per pixel.'
    },
    {
      name = 'astc6x6',
      description = 'Four channels, 16 bytes per 6x6 block or 0.44 bytes per pixel.'
    },
    {
      name = 'astc8x5',
      description = 'Four channels, 16 bytes per 8x5 block or 0.40 bytes per pixel.'
    },
    {
      name = 'astc8x6',
      description = 'Four channels, 16 bytes per 8x6 block or 0.33 bytes per pixel.'
    },
    {
      name = 'astc8x8',
      description = 'Four channels, 16 bytes per 8x8 block or 0.25 bytes per pixel.'
    },
    {
      name = 'astc10x5',
      description = 'Four channels, 16 bytes per 10x5 block or 0.32 bytes per pixel.'
    },
    {
      name = 'astc10x6',
      description = 'Four channels, 16 bytes per 10x6 block or 0.27 bytes per pixel.'
    },
    {
      name = 'astc10x8',
      description = 'Four channels, 16 bytes per 10x8 block or 0.20 bytes per pixel.'
    },
    {
      name = 'astc10x10',
      description = 'Four channels, 16 bytes per 10x10 block or 0.16 bytes per pixel.'
    },
    {
      name = 'astc12x10',
      description = 'Four channels, 16 bytes per 12x10 block or 0.13 bytes per pixel.'
    },
    {
      name = 'astc12x12',
      description = 'Four channels, 16 bytes per 12x12 block or 0.11 bytes per pixel.'
    }
  }
}
