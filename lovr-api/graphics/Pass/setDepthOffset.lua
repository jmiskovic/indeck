return {
  tag = 'pipeline',
  summary = 'Configure the depth offset.',
  description = [[
    Set the depth offset.  This is a constant offset added to the depth value of pixels, as well as
    a "sloped" depth offset that is scaled based on the "slope" of the depth at the pixel.

    This can be used to fix Z fighting when rendering decals or other nearly-overlapping objects,
    and is also useful for shadow biasing when implementing shadow mapping.
  ]],
  arguments = {
    offset = {
      type = 'number',
      default = '0.0',
      description = 'The depth offset.'
    },
    sloped = {
      type = 'number',
      default = '0.0',
      description = 'The sloped depth offset.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'offset', 'sloped' },
      returns = {}
    }
  },
  notes = [[
    The default depth offset is zero for both values.

    This only applies to triangles, not points or lines.

    The units for these offsets aren't specified very well -- they depend on the format of the depth
    texture, and the GPU can use them slightly differently for its depth calculations.  However, an
    `offset` of 1 will roughly correspond to the smallest-possible depth difference (e.g. 2^-16 for
    a `d16` depth texture).

    The sloped depth scale is multiplied by the slope of the depth of the triangle.  For example,
    if pixels in the triangle all have the same depth (i.e. the triangle is facing the camera), then
    the slope of the depth will be zero and the sloped depth offset won't have any effect.  As the
    triangle starts to face away from the camera, the slope of the depth will increase and the
    sloped depth offset will begin to apply.  This can also be thought of corresponding to the
    normal vector of the triangle relative to the camera.

    Note that the offsets can be negative.  With LÖVR's default projection matrix, depth values of
    zero are far away and one are close up, so positive depth offsets will push depth values
    "closer" to the viewer.  With flipped projection matrices (a depth test of `lequal`), negative
    depth offsets would be used instead.
  ]],
  related = {
    'Pass:setDepthTest',
    'Pass:setDepthWrite'
  }
}
