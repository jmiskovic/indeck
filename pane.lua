local m = {} -- floating pane as anchor for 2D and 3D graphical content
m.__index = m

m.colors = {
  background      = 0x231e18,
  active          = 0xd35c5c,
  disabled        = 0x242424,
}

local defaultFont = lovr.graphics.newFont('ubuntu-mono.ttf', 20)
defaultFont:setPixelDensity(1)


m.new = function(width, height, handleSide)
  local self = setmetatable({
    width = width,     -- meters
    height = height,
    texture_size = 1024,
    texture = nil,      -- lazily created in drawToTexture
    font = defaultFont,
    handleSide = handleSide or 'left',
    transform = lovr.math.newMat4(.1,1.6,-1.3, 1,1,1, 0, 0,1,0)
  }, m)
  self.ortho = lovr.math.newMat4():orthographic(0, self.texture_size, 0, -self.texture_size, -10000, 10000),
  self.font:setPixelDensity(1)
  self.fontWidth = self.font:getWidth(' ')
  self.fontHeight = self.font:getHeight()
  return self
end


function m:center()
  local x,y,z, angle, ax,ay,az = 0,0,0, 0, 1,0,0
  if lovr.headset then
    x,y,z, angle, ax,ay,az = lovr.headset.getPose('head')
  end
  local headTransform = mat4(x,y,z, angle, ax,ay,az)
  local headPosition = vec3(headTransform)
  local panePosition = vec3(headTransform:mul(0,0,-1.3))
  self.transform:target(panePosition, headPosition)
end


function m:draw(pass, isActive)
  -- oriented towards -z so that mat4.lookAt() works as expected
  pass:push()
  pass:transform(self.transform)
  pass:setColor(0x1e1a15)
  local margin = 0.02
  pass:plane(0,0,0.005, self.width + margin, self.height + margin, math.pi, 0,1,0)
  pass:setColor(1,1,1)
  if self.texture then
    pass:setMaterial(self.texture)
    pass:plane(0,0,0, -self.width, self.height)
    pass:setMaterial()
  end
  pass:setColor(isActive and self.colors.active or self.colors.disabled)
  local thickness = 0.02
  local handleX = self.handleSide == 'right' and -self.width/2 - thickness or self.width/2 + thickness
  local handleY = 0
  pass:box(handleX, handleY, 0,  thickness, self.height * 0.8, thickness)
  pass:pop()
end


function m:drawToTexture(drawFunction, ...)
  if not self.texture then
    self.texture = lovr.graphics.newTexture(self.texture_size, self.texture_size, {mipmaps=false})
  end
  local texture_pass = lovr.graphics.getPass('render', {self.texture})
  texture_pass:setDepthWrite(false)
  texture_pass:setViewPose(1, mat4())
  texture_pass:setProjection(1, self.ortho)
  drawFunction(texture_pass, ...)
  return texture_pass
end


function m:drawText(pass, text, col, row)
  pass:setFont(self.font)
  local x =  col * self.fontWidth
  local y = -row * self.fontHeight
  pass:text(text, x,y,0, 1, 0, 1,0,0, 0, 'left','top')
end


function m:drawTextRectangle(pass, col, row, width)
  -- rectangle in text-coordinates
  width = width * self.fontWidth
  local x =  col * self.fontWidth
  local y = -row * self.fontHeight
  local height = self.fontHeight
  pass:plane(x + width/2, y - height/2, -2, width, height)
end

return m
