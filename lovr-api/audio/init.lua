return {
  tag = 'modules',
  summary = 'Plays sound.',
  description = [[
    The `lovr.audio` module is responsible for playing sound effects and music.  Currently, the only
    supported audio format is .ogg (Vorbis).  Playing a sound involves creating a `Source` object
    for the sound and calling `Source:play` on it.
  ]],
  sections = {
    {
      name = 'Sources',
      tag = 'sources',
      description = 'Sources are objects that represent a single sound instance.'
    },
    {
      name = 'Listener',
      tag = 'listener',
      description = [[
        The listener is a virtual object in 3D space that "hears" all the sounds that are playing.
        The listener can be positioned and oriented in 3D space, which controls how Sources in the
        world are heard.  For example, sounds further away from the listener will be more quiet, and
        sounds to the left of the listener will be heard from the left speaker.  By default, the
        listener will be synchronized with any connected headset so audio is positioned properly as
        the headset is moved around and rotated.
      ]]
    },
    {
      name = 'Microphones',
      tag = 'microphones',
      description = 'Microphones can be used to receive audio input.'
    }
  }
}
