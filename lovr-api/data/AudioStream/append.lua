return {
  summary = 'Append raw PCM audio data to this audio stream for playback.',
  description = [[
    Append audio data that you have constructed yourself (perhaps by generating it in code, or
    streaming it over the network).  Must only be called on a "raw" AudioStream (not one
    constructed with a file or a blob).

    The data must be 16-bit signed integer, and the sample rate and channel count must match the
    values the AudioStream was constructed with.

    If a call to `append` would make the internal buffer of this `AudioStream` to become bigger
    than the `queueLimit` set on this AudioStream when it was constructed, that call to `append`
    will ignore your blob and return false, queueing no data at all from that call.

    After you've created a Source with your raw AudioStream, and appended enough audio data,
    remember to call `Source:play` to make the `Source` start playing your queued data. If the
    `Source` plays all the audio data you've queued and thus runs out of data to play, it will
    automatically stop and you'll have to append more sound data and call `Source:play` again.
    You can use `AudioStream:getDuration` to see how much data has been queued so far.

    Try to have more audio queued than the time it will take before you call append() again to
    avoid stuttery playback. Having more than 0.2s audio queued at all times is a good guideline.
  ]],
  arguments = {
    blob = {
      type = 'Blob',
      description = [[
        A Blob of sound bytes. Since it has no information about the format of the data,
        `append` blindly trusts that you give it valid data.
      ]]
    },
    soundData = {
      type = 'SoundData',
      description = [[
        A SoundData blob of sound bytes.  The format of the `SoundData` must match the format
        of the `AudioStream`.
      ]]
    }
  },
  returns = {
    success = {
      type = 'boolean',
      description = [[
        Whether this `append` did not exceed the queue limit, and data was thus appended to the
        queue.
      ]]
    }
  },
  variants = {
    {
      arguments = { 'blob' },
      returns = { 'success' }
    },
    {
      arguments = { 'soundData' },
      returns = { 'success' }
    }
  },
  related = {
    'lovr.data.newAudioStream',
    'AudioStream:getDuration'
  }
}
