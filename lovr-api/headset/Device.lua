return {
  description = 'Different types of input devices supported by the `lovr.headset` module.',
  values = {
    {
      name = 'head',
      description = 'The headset.'
    },
    {
      name = 'floor',
      description = [[
        A device representing the floor, at the center of the play area.  The pose of this device in
        physical space will remain constant, even after recentering.
      ]]
    },
    {
      name = 'left',
      description = 'A shorthand for hand/left.'
    },
    {
      name = 'right',
      description = 'A shorthand for hand/right.'
    },
    {
      name = 'hand/left',
      description = 'The left hand.'
    },
    {
      name = 'hand/right',
      description = 'The right hand.'
    },
    {
      name = 'hand/left/grip',
      description = 'The left hand grip pose, used for held objects.'
    },
    {
      name = 'hand/right/grip',
      description = 'The right hand grip pose, used for held objects.'
    },
    {
      name = 'hand/left/point',
      description = 'The left hand pointer pose, used for pointing or aiming.'
    },
    {
      name = 'hand/right/point',
      description = 'The right hand pointer pose, used for pointing or aiming.'
    },
    {
      name = 'hand/left/pinch',
      description = [[
        The left hand pinch pose between the thumb and index fingers, used for precise, close-range
        interactions.
      ]]
    },
    {
      name = 'hand/right/pinch',
      description = [[
        The right hand pinch pose between the thumb and index fingers, used for precise, close-range
        interactions.
      ]]
    },
    {
      name = 'hand/left/poke',
      description = [[
        The left hand poke pose, on the tip of the index finger or in front of a controller.
      ]]
    },
    {
      name = 'hand/right/poke',
      description = [[
        The right hand poke pose, on the tip of the index finger or in front of a controller.
      ]]
    },
    {
      name = 'elbow/left',
      description = 'A device tracking the left elbow.'
    },
    {
      name = 'elbow/right',
      description = 'A device tracking the right elbow.'
    },
    {
      name = 'shoulder/left',
      description = 'A device tracking the left shoulder.'
    },
    {
      name = 'shoulder/right',
      description = 'A device tracking the right shoulder.'
    },
    {
      name = 'chest',
      description = 'A device tracking the chest.'
    },
    {
      name = 'waist',
      description = 'A device tracking the waist.'
    },
    {
      name = 'knee/left',
      description = 'A device tracking the left knee.'
    },
    {
      name = 'knee/right',
      description = 'A device tracking the right knee.'
    },
    {
      name = 'foot/left',
      description = 'A device tracking the left foot or ankle.'
    },
    {
      name = 'foot/right',
      description = 'A device tracking the right foot or ankle.'
    },
    {
      name = 'camera',
      description = 'A camera device, often used for recording "mixed reality" footage.'
    },
    {
      name = 'keyboard',
      description = 'A tracked keyboard.'
    },
    {
      name = 'eye/left',
      description = 'The left eye.'
    },
    {
      name = 'eye/right',
      description = 'The right eye.'
    },
    {
      name = 'eye/gaze',
      description = [[
        The combined eye gaze pose.  The position is between the eyes.  The orientation aligns the
        -Z axis in the direction the user is looking and the +Y axis to the head's "up" vector.
        This provides more accurate eye tracking information compared to using the individual eye
        devices.
      ]]
    }
  },
  notes = [[
    The `grip` pose is used to render an object held in the user's hand.  It's positioned at
    the surface of the palm.  The X axis of the grip orientation is perpendicular to the palm,
    pointing away from the left palm or into the right palm.  If you imagine the hand holding a
    stick, the Z axis will be parallel to the stick.

    <img src="/img/grip.svg" width="600" alt="Hand Grip Pose" class="flat"/>

    *Image from the [OpenXR Specification](https://registry.khronos.org/OpenXR/specs/1.0/html/xrspec.html#_grip_pose)*

    ---

    The `point` pose is used to aim or point at objects.  It's usually positioned slightly in front
    of the hand or controller, and is oriented so the -Z axis points in a natural forward direction.

    <img src="/img/aim.svg" width="600" alt="Hand Point Pose" class="flat"/>

    *Image from the [OpenXR Specification](https://registry.khronos.org/OpenXR/specs/1.0/html/xrspec.html#_aim_pose)*

    ---

    The `pinch` pose is a stable point between the thumb and index finger on a hand, or a point
    slightly in front of a controller.  The -Z axis will point forward, away from the hand.  It's
    good for precise, close-range interaction.

    <img src="/img/pinch.svg" width="600" alt="Hand Pinch Pose" class="flat"/>

    *Image from the [OpenXR Specification](https://registry.khronos.org/OpenXR/specs/1.0/html/xrspec.html#_pinch_pose)*

    ---

    The `poke` pose is a position located at the tip of the index finger, or a point slightly in
    front of a controller.  The -Z axis will point forward out of the tip of the finger, the +Y axis
    will be perpendicular to the fingernail.

    <img src="/img/poke.svg" width="600" alt="Hand Poke Pose" class="flat"/>

    *Image from the [OpenXR Specification](https://registry.khronos.org/OpenXR/specs/1.0/html/xrspec.html#_poke_pose)*

    ---

    These "hand pose devices" do not report any button input with e.g. `lovr.headset.isDown`.  The
    main `hand/left` and `hand/right` devices should be used for buttons and haptics.
  ]],
  related = {
    'DeviceAxis',
    'DeviceButton',
    'lovr.headset.getPose',
    'lovr.headset.getPosition',
    'lovr.headset.getOrientation',
    'lovr.headset.getVelocity',
    'lovr.headset.getAngularVelocity',
    'lovr.headset.getSkeleton',
    'lovr.headset.isTracked',
    'lovr.headset.isDown',
    'lovr.headset.isTouched',
    'lovr.headset.wasPressed',
    'lovr.headset.wasReleased',
    'lovr.headset.getAxis',
    'lovr.headset.vibrate',
    'lovr.headset.animate'
  }
}
