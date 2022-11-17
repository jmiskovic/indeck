-- recovery mode has own environment, stop executing if activated
if require('recovery') then return end

-- on first time create project directory and copy seed files
if true or not lovr.filesystem.isFile('init.lua') then
  print('seeding user project for first time')
  for _, item in ipairs(lovr.filesystem.getDirectoryItems('seed')) do
    if lovr.filesystem.isFile('/seed/' .. item) then
      print('copying', item)
      local content = lovr.filesystem.read('/seed/' .. item)
      local success = lovr.filesystem.write(item, content)
    elseif lovr.filesystem.isDirectory('/seed/' .. item) then
      lovr.filesystem.createDirectory(item)
      for _, subitem in ipairs(lovr.filesystem.getDirectoryItems('/seed/' .. item)) do
        if lovr.filesystem.isFile('/seed/' .. item .. '/' .. subitem) then
          print('copying', subitem)
          local content = lovr.filesystem.read('/seed/'  .. item .. '/' .. subitem)
          local success = lovr.filesystem.write(item .. '/' .. subitem, content)
        end
      end
    end
  end
end

-- remove traces of loaded modules and jump into user code
package.loaded['main'] = nil
package.loaded['recovery'] = nil

-- make user directory files overshadow app files
lovr.filesystem.unmount(lovr.filesystem.getSaveDirectory())
lovr.filesystem.mount(lovr.filesystem.getSaveDirectory(), "", false)

require'init'
