return {
  summary = 'Set the dimensions of the BoxShape.',
  description = 'Sets the width, height, and depth of the BoxShape.',
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'width', 'height', 'depth' },
      returns = {}
    }
  }
}
