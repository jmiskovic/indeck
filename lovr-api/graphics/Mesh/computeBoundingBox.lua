return {
  summary = 'Compute the bounding box of the Mesh.',
  description = [[
    Computes the axis-aligned bounding box of the Mesh from its vertices.

    If the Mesh was created with the `gpu` storage mode, this function will do nothing and return
    `false`.

    If the Mesh does not have an attribute named `VertexPosition` with the `f32x3` (aka `vec3`)
    type, this function will do nothing and return `false`.

    Otherwise, the bounding box will be set and the return value will be `true`.

    The bounding box can also be assigned manually using `Mesh:setBoundingBox`, which can be used to
    set the bounding box on a `gpu` mesh or for cases where the bounding box is already known.

    Passes will use the bounding box of a Mesh to cull it against the cameras when
    `Pass:setViewCull` is enabled, which avoids rendering it when it's out of view.
  ]],
  arguments = {},
  returns = {
    updated = {
      type = 'boolean',
      description = 'Whether the bounding box was updated.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'updated' }
    }
  },
  related = {
    'Mesh:getBoundingBox',
    'Mesh:setBoundingBox',
    'Pass:setViewCull',
    'Collider:getAABB',
    'Shape:getAABB',
    'Model:getBoundingBox',
    'ModelData:getBoundingBox'
  }
}
