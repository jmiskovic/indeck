return {
  tag = 'system-keyboard',
  summary = 'Check if a key was pressed this frame.',
  description = 'Returns whether a key on the keyboard was pressed this frame.',
  arguments = {
    ['...'] = {
      type = 'KeyCode',
      description = 'The set of keys to check.'
    }
  },
  returns = {
    pressed = {
      type = 'boolean',
      description = 'Whether any of the specified keys were pressed this frame.'
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'pressed' }
    }
  },
  notes = [[
    Technically this returns whether the key was pressed between the last 2 calls to
    `lovr.system.pollEvents`, but that function is called automatically at the beginning of
    each frame in `lovr.run`, so it all works out!
  ]],
  related = {
    'lovr.system.isKeyDown',
    'lovr.system.wasKeyReleased',
    'lovr.keypressed',
    'lovr.keyreleased'
  }
}
