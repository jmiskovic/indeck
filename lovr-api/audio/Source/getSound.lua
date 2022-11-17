return {
  tag = 'sourceUtility',
  summary = 'Get the Sound object backing the Source.',
  description = [[
    Returns the `Sound` object backing the Source.  Multiple Sources can share one Sound, allowing
    its data to only be loaded once.  An easy way to do this sharing is by using `Source:clone`.
  ]],
  arguments = {},
  returns = {
    sound = {
      type = 'Sound',
      description = 'The Sound object.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'sound' }
    }
  },
  related = {
    'Source:clone',
    'lovr.audio.newSource'
  }
}
