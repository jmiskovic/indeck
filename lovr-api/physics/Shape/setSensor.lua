return {
  summary = 'Set the sensor status for the Shape.',
  description = [[
    Sets whether this Shape is a sensor.  When a Shape is a sensor, it will not generate any
    collision response when it collides with things, but collisions can still be detected with
    `World:collide` and `World:getContacts`.
  ]],
  arguments = {
    sensor = {
      type = 'boolean',
      description = 'Whether the Shape should be a sensor.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'sensor' },
      returns = {}
    }
  }
}
