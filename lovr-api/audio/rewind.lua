return {
  tag = 'sources',
  summary = 'Rewind all Sources.',
  description = 'Rewind all playing audio.',
  arguments = {},
  returns = {},
  notes = [[
    Sources that are paused will remain paused. Sources that are currently playing will restart from
    the beginning.
  ]],
  related = {
    'Source:rewind',
    'lovr.audio.pause',
    'lovr.audio.resume',
    'lovr.audio.stop'
  }
}
