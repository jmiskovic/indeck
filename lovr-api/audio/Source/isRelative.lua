return {
  summary = 'Check if the Source is relative to the listener.',
  description = [[
    Returns whether or not the Source is relative to the listener.  If a Source is relative then its
    position, velocity, cone, and orientation are all treated as relative to the audio listener,
    instead of absolute positions in space.
  ]],
  arguments = {},
  returns = {
    {
      name = 'relative',
      type = 'boolean',
      description = 'Whether or not the Source is relative.'
    }
  }
}
