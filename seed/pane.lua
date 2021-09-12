local m = {} -- floating pane as anchor for 2D and 3D graphical content
m.__index = m

m.colors = {
  background      = 0x231e18,
  active          = 0xd35c5c,
  disabled        = 0x242424,
}

local defaultFont = lovr.graphics.newFont('ubuntu-mono.ttf', 30)
defaultFont:setPixelDensity(1)

m.new = function(width, height, handleSide)
  local self = setmetatable({
    width = width,     -- meters
    height = height,
    canvasSize = 1600,
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


function m:center()
  local x,y,z, angle, ax,ay,az = lovr.headset.getPose('head')
  local headTransform = mat4(x,y,z, angle, ax,ay,az)
  local headPosition = vec3(headTransform:mul(0,0,0))
  local panePosition = vec3(headTransform:mul(0,0,-0.8))
  self.transform:target(panePosition, headPosition)
end


function m:draw(isActive, drawFunction, ...)
  -- oriented towards -z so that mat4.lookAt() works as expected
  lovr.graphics.push()
  lovr.graphics.transform(self.transform)
  lovr.graphics.setColor(0x1e1a15)
  local margin = 0.02
  lovr.graphics.plane('fill', 0,0,0.005, self.width + margin, self.height + margin, math.pi, 0,1,0)
  lovr.graphics.setColor(1,1,1)
  if self.canvas then
    lovr.graphics.plane(self.material, 0,0,0, -self.width, self.height, 0*math.pi, 0,0,0)
  end
  lovr.graphics.setColor(isActive and self.colors.active or self.colors.disabled)
  local thickness = 0.02
  local handleX = self.handleSide == 'right' and -self.width/2 - thickness or self.width/2 + thickness
  local handleY = 0
  lovr.graphics.box('fill', handleX, handleY, 0,  thickness, self.height * 0.8, thickness)
  if drawFunction then
    -- make all content drawn in xy range -1 to 1 meters fit onto the pane
    local scaling = math.min(self.width, self.height) / 2
    lovr.graphics.scale(-scaling, scaling, -scaling)
    drawFunction(...)
    -- within drawFunction, x and y lie on pane and +z is in front of pane
  end
  lovr.graphics.pop()
end

function m:drawCanvas(drawFunction, ...)
  if not self.canvas then
    self.canvas = lovr.graphics.newCanvas(self.canvasSize, self.canvasSize, {stereo=false, depth=false})
  end
  lovr.graphics.push()
  lovr.graphics.origin()
  lovr.graphics.setShader()
  lovr.graphics.setCanvas(self.canvas)
  lovr.graphics.setViewPose(1, mat4())
  lovr.graphics.setProjection(1, self.ortho)
  drawFunction(...)
  lovr.graphics.setCanvas()
  lovr.graphics.pop()
  self.material:setTexture(self.canvas:getTexture())
end

function m:drawText(text, col, row)
  lovr.graphics.setFont(self.font)
  local x =  col * self.fontWidth
  local y = -row * self.fontHeight
  lovr.graphics.print(text, x,y,0, 1, 0, 1,0,0, 0, 'left','top')
end

function m:drawTextRectangle(col, row, width)
  -- rectangle in text-coordinates
  width = width * self.fontWidth
  local x =  col * self.fontWidth
  local y = -row * self.fontHeight
  local height = self.fontHeight
  lovr.graphics.plane('fill', x + width/2, y - height/2, -10, width, height)
end

return m
