return {
  summary = 'Get the dimensions of the BoxShape.',
  description = 'Returns the width, height, and depth of the BoxShape.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the box, in meters.'
    },
    height = {
      type = 'number',
      description = 'The height of the box, in meters.'
    },
    depth = {
      type = 'number',
      description = 'The depth of the box, in meters.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height', 'depth' }
    }
  }
}
