return {
  tag = 'graphicsState',
  summary = 'Set the projection matrix.',
  description = 'Sets the projection matrix.',
  arguments = {
    {
      name = 'projection',
      type = 'mat4',
      description = 'The projection matrix to use.'
    }
  },
  returns = {},
  notes = [[
    - The projection matrix will be set for both "eyes" of the camera.
    - This state is reset at the beginning and end of `lovr.headset.renderTo`.
  ]]
}
