m = {} -- floating pane as anchor for 2D and 3D graphical content
m.__index = m

m.colors = {
  background      = 0x231e18,
  handle          = 0xd35c5c,
}

local defaultFont = lovr.graphics.newFont('ubuntu-mono.ttf', 20)
defaultFont:setPixelDensity(1)

m.new = function(width, height, handleSide)
  local self = setmetatable({
    width = width,     -- meters
    height = height, 
    canvasSize = 2048,
    canvas = nil,      -- lazily created in drawCanvas
    material = lovr.graphics.newMaterial(),
    font = defaultFont,
    handleSide = handleSide or 'left',
    transform = lovr.math.newMat4(.1,1.6,-1.3, 1,1,1, 0, 0,1,0)
  }, m)
  self.ortho = lovr.math.newMat4():orthographic(0, self.canvasSize, 0, -self.canvasSize, -100, 100),
  self.material:setTransform(0, 1-height, width, height)
  self.font:setPixelDensity(1)
  self.fontWidth = self.font:getWidth(' ')
  self.fontHeight = self.font:getHeight()
  return self
end

function m:draw(drawFunction, ...)
  lovr.graphics.push()
  lovr.graphics.transform(self.transform)
  lovr.graphics.setColor(1,1,1)
  lovr.graphics.plane(self.material, 0,0,0, self.width, self.height)
  lovr.graphics.setColor(self.colors.handle)
  local thickness = 0.02
  local handleX = self.handleSide == 'rig' and self.width/2 + thickness or -self.width/2 - thickness
  local handleY = 0
  lovr.graphics.box('fill', handleX, handleY, 0,  thickness, self.height * 0.8, thickness)
  if drawFunction then
    -- make all content drawn in range -1 to 1 meters fit onto the pane
    lovr.graphics.scale(math.min(self.width, self.height) / 2)
    drawFunction(...)
  end
  lovr.graphics.pop()
end

function m:drawCanvas(drawFunction, ...)
  if not self.canvas then
    self.canvas = lovr.graphics.newCanvas(self.canvasSize, self.canvasSize, {stereo=false, depth=false})
  end
  lovr.graphics.setCanvas(self.canvas)
  lovr.graphics.push()
  lovr.graphics.origin()
  lovr.graphics.setProjection(self.ortho)
  drawFunction(...)
  lovr.graphics.pop()
  lovr.graphics.setCanvas()
  --lovr.graphics.setColor(1,1,1)
  self.material:setTexture(self.canvas:getTexture())
end

function m:drawText(text, col, row)
  lovr.graphics.setFont(self.font)
  local x = col * self.fontWidth
  local y = row * self.fontHeight
  lovr.graphics.print(text, x,y,0, 1, 0, 1,0,0, 0, 'left','top')
end

function m:drawTextRectangle(col, row, width)
  -- rectangle in text-coordinates
  lovr.graphics.setFont(self.font)
  width = width * self.fontWidth
  local x = col * self.fontWidth
  local y = row * self.fontHeight
  local height = self.fontHeight
  lovr.graphics.plane('fill', x + width/2, y - height/2, 0, width, height)
end

return m
