return {
  tag = 'sources',
  summary = 'Create a new Source.',
  description = 'Creates a new Source from an ogg, wav, or mp3 file.',
  arguments = {
    filename = {
      type = 'string',
      description = 'The filename of the sound to load.'
    },
    blob = {
      type = 'Blob',
      description = 'The Blob containing the Source data.'
    },
    sound = {
      type = 'Sound',
      description = 'The Sound containing raw audio samples to play.'
    },
    options = {
      type = 'table',
      description = 'Optional options.',
      table = {
        {
          name = 'decode',
          type = 'boolean',
          default = 'false',
          description = [[
            Whether to immediately decode compressed sounds, instead of progressively decoding as
            the Source plays.  Enabling this will use more memory but reduce CPU overhead during
            playback.  Recommended for short sound effects.
          ]]
        },
        {
          name = 'pitchable',
          type = 'boolean',
          default = 'true',
          description = [[
            Whether the pitch of the Source can be changed with `Source:setPitch`.  Setting this to
            false will improve performance slightly.
          ]]
        },
        {
          name = 'spatial',
          type = 'boolean',
          default = 'true',
          description = [[
            Whether the Source should use spatial effects.  Non-spatial sources will get routed
            directly to the speakers without further processing.  Enabling an effect on a
            non-spatial source will raise an error.
          ]]
        },
        {
          name = 'effects',
          type = 'table',
          default = 'nil',
          description = [[
            A table of `Effect`s to enable on the Source.  This can be a list (numeric keys, effect
            name values) or a map (effect name keys, boolean values) or a mix of the two.  Effects
            can also be enabled later using `Source:setEffectEnabled`.  If nil, all effects will be
            enabled.  Ignored if the `spatial` flag is false.
          ]]
        }
      }
    }
  },
  returns = {
    source = {
      type = 'Source',
      description = 'The new Source.'
    }
  },
  variants = {
    {
      arguments = { 'filename', 'options' },
      returns = { 'source' }
    },
    {
      arguments = { 'blob', 'options' },
      returns = { 'source' }
    },
    {
      arguments = { 'sound', 'options' },
      returns = { 'source' }
    }
  },
  example = [[
    function lovr.load()
      sandstorm = lovr.audio.newSource('darude.ogg', {
        decode = false,
        effects = { 'spatialization', attenuation = false, reverb = true }
      })

      sandstorm:play()
    end
  ]],
  related = {
    'Source:clone'
  }
}
