return {
  summary = 'A 3D model.',
  description = [[
    Models are 3D model assets loaded from files.  Currently, OBJ, glTF, and binary STL files are
    supported.

    A model can be drawn using `Pass:draw`.

    The raw CPU data for a model is held in a `ModelData` object, which can be loaded on threads or
    reused for multiple Model instances.

    Models have a hierarchy of nodes which can have their transforms modified.  Meshes are attached
    to these nodes.  The same mesh can be attached to multiple nodes, allowing it to be drawn
    multiple times while only storing a single copy of its data.

    Models can have animations.  Animations have keyframes which affect the transforms of nodes.
    Right now each model can only be drawn with a single animated pose per frame.

    Models can have materials, which are collections of properties and textures that define how its
    surface is affected by lighting.  Each mesh in the model can use a single material.
  ]],
  constructors = {
    'lovr.graphics.newModel',
    'lovr.headset.newModel'
  }
}
