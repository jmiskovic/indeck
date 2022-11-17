return {
  tag = 'world',
  summary = 'Create a new World.',
  description = [[
    Creates a new physics World, which tracks the overall physics simulation, holds collider
    objects, and resolves collisions between them.
  ]],
  arguments = {
    xg = {
      type = 'number',
      default = '0',
      description = 'The x component of the gravity force.'
    },
    yg = {
      type = 'number',
      default = '-9.81',
      description = 'The y component of the gravity force.'
    },
    zg = {
      type = 'number',
      default = '0',
      description = 'The z component of the gravity force.'
    },
    allowSleep = {
      type = 'boolean',
      default = 'true',
      description = 'Whether or not colliders will automatically be put to sleep.'
    },
    tags = {
      type = 'table',
      default = '{}',
      description = 'A list of collision tags colliders can be assigned to.'
    }
  },
  returns = {
    world = {
      type = 'World',
      description = 'A whole new World.'
    }
  },
  variants = {
    {
      arguments = { 'xg', 'yg', 'zg', 'allowSleep', 'tags' },
      returns = { 'world' }
    }
  },
  notes = [[
    A World must be updated with `World:update` in `lovr.update` for the physics simulation to
    advance.
  ]],
  example = {
    description = [[
      Create a new world, add a collider to it, and update it, printing out its position as it
      falls.
    ]],
    code = [[
      function lovr.load()
        world = lovr.physics.newWorld()
        box = world:newBoxCollider()
      end

      function lovr.update(dt)
        world:update(dt)
        print(box:getPosition())
      end
    ]]
  }
}
