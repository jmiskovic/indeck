return {
  tag = 'system-keyboard',
  summary = 'Check if a key was released this frame.',
  description = 'Returns whether a key on the keyboard was released this frame.',
  arguments = {
    ['...'] = {
      type = 'KeyCode',
      description = 'The set of keys to check.'
    }
  },
  returns = {
    released = {
      type = 'boolean',
      description = 'Whether any of the specified keys were released this frame.'
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'released' }
    }
  },
  notes = [[
    Technically this returns whether the key was released between the last 2 calls to
    `lovr.system.pollEvents`, but that function is called automatically at the beginning of
    each frame in `lovr.run`, so it all works out!
  ]],
  related = {
    'lovr.system.isKeyDown',
    'lovr.system.wasKeyPressed',
    'lovr.keypressed',
    'lovr.keyreleased'
  }
}
