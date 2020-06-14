return {
  tag = 'input',
  summary = 'Get a Model for a device.',
  description = 'Returns a new Model for the specified device.',
  arguments = {
    {
      name = 'device',
      type = 'Device',
      default = 'head',
      description = 'The device to load a model for.'
    }
  },
  returns = {
    {
      name = 'model',
      type = 'Model',
      description = 'The new Model, or `nil` if a model could not be loaded.'
    }
  },
  notes = 'Generally, this is only supported on the `openvr` driver right now.',
  example = [[
    local models = {}

    function lovr.draw()
      for i, hand in ipairs(lovr.headset.getHands()) do
        models[hand] = models[hand] or lovr.headset.newModel(hand)

        if models[hand] then
          local x, y, z, angle, ax, ay, az = lovr.headset.getPose(hand)
          models[hand]:draw(x, y, z, 1, angle, ax, ay, az)
        end
      end
    end
  ]]
}
