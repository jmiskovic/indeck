return {
  tag = 'pipeline',
  summary = 'Enable or disable view frustum culling.',
  description = [[
    Enables or disables view frustum culling.  When enabled, if an object is drawn outside of the
    camera view, the draw will be skipped.  This can improve performance.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether frustum culling should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  notes = [[
    View frustum culling is disabled by default.

    Objects will be culled against all views in the Pass.  The pose and projection for these views
    is controlled using `Pass:setViewPose` and `Pass:setProjection`.

    View frustum culling will increase CPU usage, but will reduce GPU usage depending on how many
    objects get culled and how many vertices they have.

    For most scenes that draw objects all around the camera, frustum culling will usually result in
    large speedups.  However, it's always good to measure to be sure.  For example, if every object
    drawn is in view, then frustum culling will only make things slower, because LÖVR will spend
    time checking if objects are in view without actually culling any of them.

    `Pass:getStats` will return `draws` and `drawsCulled` fields.  The `submitTime` and `gpuTime`
    fields (with `lovr.graphics.setTimingEnabled`) are a good way to measure the impact of culling.

    To cull an object against a view frustum, LÖVR needs to know the object's bounding box.  The
    following types of draws have bounding boxes:

    - `Pass:plane`
    - `Pass:roundrect`
    - `Pass:cube`
    - `Pass:box`
    - `Pass:circle`
    - `Pass:sphere`
    - `Pass:cylinder`
    - `Pass:cone`
    - `Pass:capsule`
    - `Pass:torus`
    - `Pass:draw` (see notes below for `Model` and `Mesh` objects)

    The following draws do **not** currently have bounding boxes, and will not be culled:

    - `Pass:points`
    - `Pass:line`
    - `Pass:text`
    - `Pass:skybox`
    - `Pass:fill`
    - `Pass:mesh`

    `Model` objects only compute their bounding box when they're loaded, using the initial node
    transforms. If a node's transform changes, either manually with `Model:setNodeTransform` or from
    an animation, then the bounding box will become out of sync and culling will not work properly.
    View culling should be disabled when rendering these models.

    `Mesh` objects will not have a bounding box by default.  Meshes with a storage type of `cpu` can
    compute their bounding boxes using `Mesh:computeBoundingBox`, which should be called after
    creating the Mesh or whenever its vertices change.  Any type of Mesh can have its bounding box
    set manually using `Mesh:setBoundingBox`.  This can be faster than `Mesh:computeBoundingBox` if
    the bounding box is already known, and is the only way to give a `gpu` Mesh a bounding box.
  ]],
  related = {
    'Pass:setCullMode',
    'Mesh:computeBoundingBox',
    'Mesh:setBoundingBox',
    'Pass:setViewPose',
    'Pass:setProjection'
  }
}
