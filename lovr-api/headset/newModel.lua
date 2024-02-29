return {
  tag = 'controller-models',
  summary = 'Get a Model for a device.',
  description = 'Returns a new Model for the specified device.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to load a model for.'
    },
    options = {
      type = 'table',
      default = '{}',
      description = 'Options for loading the model.',
      table = {
        {
          name = 'animated',
          type = 'boolean',
          default = 'false',
          description = [[
            Whether an animatable model should be loaded, for use with `lovr.headset.animate`.
          ]]
        }
      }
    }
  },
  returns = {
    model = {
      type = 'Model',
      description = 'The new Model, or `nil` if a model could not be loaded.'
    }
  },
  variants = {
    {
      arguments = { 'device', 'options' },
      returns = { 'model' }
    }
  },
  notes = 'Currently this is only implemented for hand models on the Oculus Quest.',
  example = [[
    local models = {}

    function lovr.draw(pass)
      for i, hand in ipairs(lovr.headset.getHands()) do
        models[hand] = models[hand] or lovr.headset.newModel(hand)

        if models[hand] then
          local x, y, z, angle, ax, ay, az = lovr.headset.getPose(hand)
          pass:draw(models[hand], x, y, z, 1, angle, ax, ay, az)
        end
      end
    end
  ]],
  related = {
    'lovr.headset.animate'
  }
}
