return {
  tag = 'system-keyboard',
  summary = 'Get the state of a key.',
  description = 'Returns whether a key on the keyboard is pressed.',
  arguments = {
    ['...'] = {
      type = 'KeyCode',
      description = 'The set of keys to check.'
    }
  },
  returns = {
    down = {
      type = 'boolean',
      description = 'Whether any of the keys are currently pressed.'
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'down' }
    }
  },
  related = {
    'lovr.system.wasKeyPressed',
    'lovr.system.wasKeyReleased',
    'lovr.keypressed',
    'lovr.keyreleased'
  }
}
