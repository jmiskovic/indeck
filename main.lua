projectName = 'sandbox'

-- recovery mode has own environment, stop executing if activated
if require('recovery') then return end

-- wipe project and start afresh
if false then
  for _, item in ipairs(lovr.filesystem.getDirectoryItems(projectName)) do
    local itempath = projectName .. '/' .. item
    if lovr.filesystem.isFile(itempath) then
      print('deleting', itempath)
      lovr.filesystem.remove(itempath)
    end
  end
  for _, itempath in ipairs(lovr.filesystem.getDirectoryItems('/')) do
    if lovr.filesystem.isFile(itempath) then
      print('deleting', itempath)
      lovr.filesystem.remove(itempath)
    end
  end
  local success = lovr.filesystem.remove(projectName)
  print('project wipe', success and 'ok' or 'failed')
end

-- on first time create project directory and copy seed files
local success = lovr.filesystem.createDirectory(projectName)
if success or not lovr.filesystem.isFile(projectName .. '/init.lua') then
  print('seeding new project', projectName)
  for _, item in ipairs(lovr.filesystem.getDirectoryItems('seed')) do
    if lovr.filesystem.isFile('/seed/' .. item) then
      print('copying', item)
      local content = lovr.filesystem.read('/seed/' .. item)
      local success = lovr.filesystem.write(projectName .. '/' .. item, content)
    else
      print('skipping', item)
    end
  end
end

local ok = lovr.filesystem.unmount(lovr.filesystem.getSaveDirectory())
print('unmounting save directory', ok and 'ok' or 'failed')
print(lovr.filesystem.isFile('abc'))

local sourcePath = lovr.filesystem.getSaveDirectory() .. '/' .. projectName
local ok = lovr.filesystem.mount(sourcePath, nil, false)
print('prioretizing sources from directory', sourcePath, ok and 'ok' or 'failed')

 -- really hate this monkey patch
local lovrwrite = lovr.filesystem.write
lovr.filesystem.write = function(path, content)
  lovrwrite(projectName .. '/' .. path, content)
end

package.loaded['main'] = nil
package.loaded['recovery'] = nil

require'init'