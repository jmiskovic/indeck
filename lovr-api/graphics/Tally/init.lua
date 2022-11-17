return {
  summary = 'Measures GPU counters.',
  description = [[
    Tally objects are able to measure events on the GPU.  Tallies can measure three types of things:

    - `time` - measures elapsed GPU time.
    - `pixel` - measures how many pixels were rendered, which can be used for occlusion culling.
    - `shader` - measure how many times shaders were run.

    Tally objects can be created with up to 4096 slots.  Each slot can hold a single measurement
    value.  `Pass:tick` is used to begin a measurement, storing the result in one of the slots.  All
    commands recorded on the Pass will be measured until `Pass:tock` is called with the same tally
    and slot.

    The measurement value stored in the slots can be copied to a `Buffer` using `Pass:copy`, or they
    can be read back to Lua using `Pass:read`.
  ]],
  constructors = {
    'lovr.graphics.newTally'
  }
}
