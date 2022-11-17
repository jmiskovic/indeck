return {
  tag = 'graphics-misc',
  summary = 'Get information about the graphics device and driver.',
  description = 'Returns information about the graphics device and driver.',
  arguments = {},
  returns = {
    device = {
      type = 'table',
      table = {
        {
          name = 'id',
          type = 'number',
          description = 'The vendor-unique number for this GPU.'
        },
        {
          name = 'vendor',
          type = 'number',
          description = 'The identifier of the GPU vendor.'
        },
        {
          name = 'name',
          type = 'string',
          description = 'The name of the GPU.'
        },
        {
          name = 'renderer',
          type = 'string',
          description = 'The renderer in use, currently either "Vulkan" or "WebGPU".'
        },
        {
          name = 'subgroupSize',
          type = 'number',
          description = [[
            The number of threads that run in a single GPU compute unit.  This is usually 32 or 64,
            and is sometimes called the "wave" or "warp" size.  This can be used to optimize compute
            shaders for the current hardware.
          ]]
        },
        {
          name = 'discrete',
          type = 'boolean',
          description = 'Whether the GPU is a discrete graphics card.'
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'device' }
    }
  },
  notes = [[
    The device and vendor ID numbers will usually be PCI IDs, which are standardized numbers
    consisting of 4 hex digits.  Various online databases and system utilities can be used to look
    up these numbers.  Here are some example vendor IDs for a few popular GPU manufacturers:

    <table>
      <thead>
        <tr>
          <td>ID</td>
          <td>Vendor</td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>0x1002</code></td>
          <td>Advanced Micro Devices, Inc.</td>
        </tr>
        <tr>
          <td><code>0x8086</code></td>
          <td>Intel Corporation</td>
        </tr>
        <tr>
          <td><code>0x10de</code></td>
          <td>NVIDIA Corporation</td>
        </tr>
      </tbody>
    </table>

    It is not currently possible to get the version of the driver, although this could be added.

    Regarding multiple GPUs: If OpenXR is enabled, the OpenXR runtime has control over which GPU is
    used, which ensures best compatibility with the VR headset.  Otherwise, the "first" GPU returned
    by the renderer will be used.  There is currently no other way to pick a GPU to use.
  ]],
  related = {
    'lovr.graphics.getFeatures',
    'lovr.graphics.getLimits'
  }
}
