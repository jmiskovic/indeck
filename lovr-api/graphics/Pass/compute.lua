return {
  tag = 'compute',
  summary = 'Run a compute shader.',
  description = [[
    Runs a compute shader.  There must be an active compute shader set using `Pass:setShader`.

    All of the compute shader dispatches in a Pass will run **before** all of the draws in the Pass
    (if any).  They will also run at the same time in parallel, unless `Pass:barrier` is used to
    control the order.
  ]],
  arguments = {
     x = {
       type = 'number',
       default = '1',
       description = 'The number of workgroups to dispatch in the x dimension.'
     },
     y = {
       type = 'number',
       default = '1',
       description = 'The number of workgroups to dispatch in the y dimension.'
     },
     z = {
       type = 'number',
       default = '1',
       description = 'The number of workgroups to dispatch in the z dimension.'
     },
     buffer = {
       type = 'Buffer',
       description = [[
         A Buffer object containing the x, y, and z workgroup counts, stored as 4 byte unsigned
         integers.
       ]]
     },
     offset = {
       type = 'number',
       default = '0',
       description = 'The byte offset to read the workgroup counts from in the Buffer.'
     }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = [[
        Perform an "indirect" dispatch.  Instead of passing in the workgroup counts directly from
        Lua, the workgroup counts are read from a `Buffer` object at a particular byte offset.
        Each count should be a 4-byte integer, so in total 12 bytes will be read from the buffer.
      ]],
      arguments = { 'buffer', 'offset' },
      returns = {}
    }
  },
  notes = [[
    Compute shaders are usually run once for each pixel in an image, once per particle, once per
    object, etc.  The 3 arguments represent how many times to run, or "dispatch", the compute
    shader, in up to 3 dimensions.  Each element of this grid is called a **workgroup**.

    To make things even more complicated, each workgroup itself is made up of a set of "mini GPU
    threads", which are called **local workgroups**.  Like workgroups, the local workgroup size can
    also be 3D.  It's declared in the shader code, like this:

        layout(local_size_x = w, local_size_y = h, local_size_z = d) in;

    All these 3D grids can get confusing, but the basic idea is to make the local workgroup size a
    small block of e.g. 32 particles or 8x8 pixels or 4x4x4 voxels, and then dispatch however many
    workgroups are needed to cover a list of particles, image, voxel field, etc.

    The reason to do it this way is that the GPU runs its threads in little fixed-size bundles
    called subgroups.  Subgroups are usually 32 or 64 threads (the exact size is given by the
    `subgroupSize` property of `lovr.graphics.getDevice`) and all run together.  If the local
    workgroup size was `1x1x1`, then the GPU would only run 1 thread per subgroup and waste the
    other 31 or 63.  So for the best performance, be sure to set a local workgroup size bigger than
    1!

    Inside the compute shader, a few builtin variables can be used to figure out which workgroup is
    running:

    - `uvec3 WorkgroupCount` is the workgroup count per axis (the `Pass:compute` arguments).
    - `uvec3 WorkgroupSize` is the local workgroup size (declared in the shader).
    - `uvec3 WorkgroupID` is the index of the current (global) workgroup.
    - `uvec3 LocalThreadID` is the index of the local workgroup inside its workgroup.
    - `uint LocalThreadIndex` is a 1D version of `LocalThreadID`.
    - `uvec3 GlobalThreadID` is the unique identifier for a thread within all workgroups in a
      dispatch. It's equivalent to `WorkgroupID * WorkgroupSize + LocalThreadID` (usually what you
      want!)

    Indirect compute dispatches are useful to "chain" compute shaders together, while keeping all of
    the data on the GPU.  The first dispatch can do some computation and write some results to
    buffers, then the second indirect dispatch can use the data in those buffers to know how many
    times it should run.  An example would be a compute shader that does some sort of object
    culling, writing the number of visible objects to a buffer along with the IDs of each one.
    Subsequent compute shaders can be indirectly dispatched to perform extra processing on the
    visible objects.  Finally, an indirect draw can be used to render them.
  ]],
  example = {
    description = 'A compute shader that makes a texture grayscale.',
    code = [=[
      function lovr.load()
        shader = lovr.graphics.newShader([[
          layout(local_size_x = 8, local_size_y = 8) in;
          layout(set = 0, binding = 0, rgba8) uniform image2D image;

          void lovrmain() {
            ivec2 size = imageSize(image);
            ivec2 pixel = ivec2(GlobalThreadID.xy);

            if (pixel.x >= size.x || pixel.y >= size.y) {
              return;
            }

            vec4 color = imageLoad(image, pixel);
            color.rgb = vec3(color.r * .2126 + color.g * .7512 + color.b * .0722);
            imageStore(image, pixel, color);
          }
        ]])

        texture = lovr.graphics.newTexture('image.png', {
          usage = { 'storage', 'sample', 'transfer' },
          linear = true -- srgb textures don't always support storage usage
        })

        local tw, th = texture:getDimensions()
        local sx, sy = shader:getWorkgroupSize()
        local gx, gy = math.ceil(tw / sx), math.ceil(th / sy)

        local computer = lovr.graphics.newPass()

        computer:setShader(shader)
        computer:send('image', texture)
        computer:compute(gx, gy)
        lovr.graphics.submit(computer)

        texture:generateMipmaps()
      end

      function lovr.draw(pass)
        pass:draw(texture, 0, 1.7, -1)
      end
    ]=]
  },
  related = {
    'Pass:barrier',
    'Pass:setShader',
    'Pass:send'
  }
}
