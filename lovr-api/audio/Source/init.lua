return {
  summary = 'A playable sound object.',
  description = [[
    A Source is an object representing a single sound.  Currently, only ogg sounds are supported.
    Sources can be in three different states:

    <table>
      <tr>
        <td>Playing</td>
        <td>The source is currently playing. It can be stopped, paused, or rewound.</td>
      </tr>
      <tr>
        <td>Paused</td>
        <td>The source is paused. It can be stopped, played/resumed, or rewound.</td>
      </tr>
      <tr>
        <td>Stopped</td>
        <td>The source has been stopped. It can be played.</td>
      </tr>
    </table>
  ]],
  constructor = 'lovr.audio.newSource'
}
