return {
  tag = 'callbacks',
  summary = 'Called to read configuration settings at startup.',
  description = [[
    The `lovr.conf` callback lets you configure default settings for LÖVR.  It is called once right
    before the game starts.  Make sure you put `lovr.conf` in a file called `conf.lua`, a special
    file that's loaded before the rest of the framework initializes.
  ]],
  arguments = {
    {
      name = 't',
      type = 'table',
      description = 'The table to edit the configuration settings on.',
      table = {
        {
          name = 'version',
          type = 'string',
          description = 'The version of LÖVR this project targets (not used yet).'
        },
        {
          name = 'identity',
          type = 'string',
          description = 'A unique label for this project.'
        },
        {
          name = 'saveprecedence',
          type = 'boolean',
          description = [[
            Whether the files in the save directory should have precedence over files in the source
            archive.
          ]]
        },
        {
          name = 'modules',
          type = 'table',
          description = 'The set of enabled modules to use.',
          table = {
            {
              name = 'audio',
              type = 'boolean',
              description = 'Whether the audio module should be enabled.'
            },
            {
              name = 'data',
              type = 'boolean',
              description = 'Whether the data module should be enabled.'
            },
            {
              name = 'event',
              type = 'boolean',
              description = 'Whether the event module should be enabled.'
            },
            {
              name = 'graphics',
              type = 'boolean',
              description = 'Whether the graphics module should be enabled.'
            },
            {
              name = 'headset',
              type = 'boolean',
              description = 'Whether the headset module should be enabled.'
            },
            {
              name = 'math',
              type = 'boolean',
              description = 'Whether the math module should be enabled.'
            },
            {
              name = 'physics',
              type = 'boolean',
              description = 'Whether the physics module should be enabled.'
            },
            {
              name = 'system',
              type = 'boolean',
              description = 'Whether the system module should be enabled.'
            },
            {
              name = 'thread',
              type = 'boolean',
              description = 'Whether the thread module should be enabled.'
            },
            {
              name = 'timer',
              type = 'boolean',
              description = 'Whether the timer module should be enabled.'
            }
          }
        },
        {
          name = 'audio',
          type = 'table',
          description = 'Configuration for the audio module.',
          table = {
            {
              name = 'spatializer',
              type = 'string',
              description = [[
                An audio spatializer to use (`simple`, `oculus`, or `phonon`).  If `nil`, all of
                them are attempted.
              ]]
            },
            {
              name = 'samplerate',
              type = 'number',
              description = 'The sample rate to use for audio playback.'
            },
            {
              name = 'start',
              type = 'boolean',
              description = 'Whether the playback device should be automatically started.'
            }
          }
        },
        {
          name = 'graphics',
          type = 'table',
          description = 'Configuration for the graphics module.',
          table = {
            {
              name = 'debug',
              type = 'boolean',
              description = 'Whether debug messages from the GPU should get sent to lovr.log.'
            },
            {
              name = 'vsync',
              type = 'boolean',
              description = 'Whether vsync is enabled (forced off when VR is active).'
            },
            {
              name = 'stencil',
              type = 'boolean',
              description = 'Whether the desktop window should have a stencil buffer.'
            },
            {
              name = 'antialias',
              type = 'boolean',
              description = 'Whether the desktop window rendering should be antialiased.'
            },
            {
              name = 'shadercache',
              type = 'boolean',
              description = 'Whether the shader cache should be loaded and saved to disk.'
            }
          }
        },
        {
          name = 'headset',
          type = 'table',
          description = 'Configuration for the headset.',
          table = {
            {
              name = 'drivers',
              type = 'table',
              description = 'An ordered list of preferred headset drivers.'
            },
            {
              name = 'supersample',
              type = 'number',
              description = [[
                A scaling factor to apply to the headset texture.  Improves visual quality but
                reduces performance.  Can also be a boolean.
              ]]
            },
            {
              name = 'offset',
              type = 'number',
              description = 'The vertical offset for seated experiences.'
            },
            {
              name = 'antialias',
              type = 'boolean',
              description = 'Whether headset rendering should be antialiased.'
            },
            {
              name = 'stencil',
              type = 'boolean',
              description = 'Whether headset rendering should have a stencil buffer.'
            },
            {
              name = 'submitdepth',
              type = 'boolean',
              description = [[
                Whether the depth buffer should be sent to the VR runtime (improves reprojection).
              ]]
            },
            {
              name = 'overlay',
              type = 'boolean',
              description = 'Whether the project should run as an overlay.'
            }
          }
        },
        {
          name = 'math',
          type = 'table',
          description = 'Configuration for the math module.',
          table = {
            {
              name = 'globals',
              type = 'boolean',
              description = 'Whether vector object functions should be added to the global scope.'
            }
          }
        },
        {
          name = 'window',
          type = 'table',
          description = 'Configuration for the window.',
          table = {
            {
              name = 'width',
              type = 'number',
              description = 'The width of the window.'
            },
            {
              name = 'height',
              type = 'number',
              description = 'The height of the window.'
            },
            {
              name = 'fullscreen',
              type = 'boolean',
              description = 'Whether the window is fullscreen.'
            },
            {
              name = 'resizable',
              type = 'boolean',
              description = 'Whether the window is resizable.'
            },
            {
              name = 'title',
              type = 'string',
              description = 'The window title.'
            },
            {
              name = 'icon',
              type = 'string',
              description = 'The path to the window icon file.'
            }
          }
        }
      }
    }
  },
  returns = {},
  notes = [[
    Disabling unused modules can improve startup time.

    `t.window` can be set to nil to avoid creating the window.  The window can later be opened
    manually using `lovr.system.openWindow`.

    Enabling the `t.graphics.debug` flag will add additional error checks and will send messages
    from the GPU driver to the `lovr.log` callback.  This will decrease performance but can help
    provide information on performance problems or other bugs.

    The `headset.offset` field is a vertical offset applied to the scene for headsets that do not
    center their tracking origin on the floor.  This can be thought of as a "default user height".
    Setting this offset makes it easier to design experiences that work in both seated and standing
    VR configurations.
  ]],
  example = {
    description = 'A noop conf.lua that sets all configuration settings to their defaults:',
    code = [[
        function lovr.conf(t)

          -- Set the project version and identity
          t.version = '0.16.0'
          t.identity = 'default'

          -- Set save directory precedence
          t.saveprecedence = true

          -- Enable or disable different modules
          t.modules.audio = true
          t.modules.data = true
          t.modules.event = true
          t.modules.graphics = true
          t.modules.headset = true
          t.modules.math = true
          t.modules.physics = true
          t.modules.system = true
          t.modules.thread = true
          t.modules.timer = true

          -- Audio
          t.audio.spatializer = nil
          t.audio.samplerate = 48000
          t.audio.start = true

          -- Graphics
          t.graphics.debug = false
          t.graphics.vsync = true
          t.graphics.stencil = false
          t.graphics.antialias = true
          t.graphics.shadercache = true

          -- Headset settings
          t.headset.drivers = { 'openxr', 'desktop' }
          t.headset.supersample = false
          t.headset.offset = 1.7
          t.headset.antialias = true
          t.headset.submitdepth = true
          t.headset.overlay = false

          -- Math settings
          t.math.globals = true

          -- Configure the desktop window
          t.window.width = 1080
          t.window.height = 600
          t.window.fullscreen = false
          t.window.title = 'LÖVR'
          t.window.icon = nil
        end
    ]]
  },
  related = {
    'lovr.load'
  }
}
