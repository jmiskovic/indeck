return {
  tag = 'modules',
  summary = 'Provides access to the filesystem.',
  description = [[
    The `lovr.filesystem` module provides access to the filesystem.

    All files written will go in a special folder called the "save directory".  The location of the
    save directory is platform-specific:

    <table>
      <tr>
        <td>Windows</td>
        <td><code>C:\Users\&lt;user&gt;\AppData\Roaming\LOVR\&lt;identity&gt;</code></td>
      </tr>
      <tr>
        <td>macOS</td>
        <td><code>/Users/&lt;user&gt;/Library/Application Support/LOVR/&lt;identity&gt;</code></td>
      </tr>
      <tr>
        <td>Linux</td>
        <td><code>/home/&lt;user&gt;/.local/share/LOVR/&lt;identity&gt;</code></td>
      </tr>
      <tr>
        <td>Android</td>
        <td><code>/sdcard/Android/data/&lt;identity&gt;/files</code></td>
      </tr>
    </table>

    `<identity>` is a unique identifier for the project, and can be set in `lovr.conf`.  On Android,
    the identity can not be changed and will always be the package id (e.g. `org.lovr.app`).

    When files are read, they will be searched for in multiple places.  By default, the save
    directory is checked first, then the project source (folder or zip).  That way, when data is
    written to a file, any future reads will see the new data.  The `t.saveprecedence` conf setting
    can be used to change this precedence.

    Conceptually, `lovr.filesystem` uses a "virtual filesystem", which is an ordered list of folders
    and zip files that are merged into a single filesystem hierarchy.  Folders and archives in the
    list can be added and removed with `lovr.filesystem.mount` and `lovr.filesystem.unmount`.

    LÖVR extends Lua's `require` function to look for modules in the virtual filesystem.  The search
    patterns can be changed with `lovr.filesystem.setRequirePath`, similar to `package.path`.
  ]],
  sections = {
    {
      name = 'Files',
      tag = 'filesystem-files',
      description = 'Operations for reading/writing files and querying their metadata.'
    },
    {
      name = 'Virtual Filesystem',
      tag = 'filesystem-virtual'
    },
    {
      name = 'Paths',
      tag = 'filesystem-paths',
      description = 'Useful system paths.'
    },
    {
      name = 'Lua',
      tag = 'filesystem-lua'
    }
  }
}
