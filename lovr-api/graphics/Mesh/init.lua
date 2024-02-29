return {
  summary = 'A drawable triangle mesh.',
  description = [[
    Meshes store arbitrary geometry data, and can be drawn with `Pass:draw`.

    Meshes hold a list of **vertices**.  The number of vertices is declared upfront when the Mesh is
    created, and it can not be resized afterwards.

    The Mesh has a **vertex format**, which is a set of **attributes** comprising each vertex, like
    a `position`, `color`, etc.

    The **vertex indices** in the Mesh describe the order that the vertices are rendered in.  This
    is an optimization that allows vertices to be reused if they are used for multiple triangles,
    without duplicating all of their data.

    The Mesh has a **draw mode**, which controls how the vertices are connected together to create
    pixels.  It can either be `points`, `lines`, or `triangles`.

    The Mesh can have a `Material` applied, which defines colors, textures, and other properties of
    its surface.

    The **draw range** of the Mesh defines a subset of the vertices to render when the Mesh is
    drawn.

    The **bounding box** of the Mesh allows LÖVR to skip rendering it when it's out of view.
  ]],
  constructor = 'lovr.graphics.newMesh'
}
