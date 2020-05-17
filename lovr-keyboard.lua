local ffi = require 'ffi'
local C = ffi.os == 'Windows' and ffi.load('glfw3') or ffi.C

ffi.cdef [[
  typedef struct GLFWwindow GLFWwindow;
  typedef void(*GLFWkeyfun)(GLFWwindow*, int, int, int, int);
  typedef void (*GLFWcharfun)(GLFWwindow*, unsigned int);

  GLFWwindow* glfwGetCurrentContext(void);
  int glfwGetKey(GLFWwindow* window, int key);
  GLFWkeyfun glfwSetKeyCallback(GLFWwindow* window, GLFWkeyfun callback);
  GLFWcharfun glfwSetCharCallback(GLFWwindow* window, GLFWcharfun callback);
]]

local window = C.glfwGetCurrentContext()

local keymap = {
  ['space'] = 32,
  ['\''] = 39,
  [','] = 44,
  ['-'] = 45,
  ['.'] = 46,
  ['/'] = 47,

  ['0'] = 48,
  ['1'] = 49,
  ['2'] = 50,
  ['3'] = 51,
  ['4'] = 52,
  ['5'] = 53,
  ['6'] = 54,
  ['7'] = 55,
  ['8'] = 56,
  ['9'] = 57,

  [';'] = 59,
  ['='] = 61,

  ['a'] = 65,
  ['b'] = 66,
  ['c'] = 67,
  ['d'] = 68,
  ['e'] = 69,
  ['f'] = 70,
  ['g'] = 71,
  ['h'] = 72,
  ['i'] = 73,
  ['j'] = 74,
  ['k'] = 75,
  ['l'] = 76,
  ['m'] = 77,
  ['n'] = 78,
  ['o'] = 79,
  ['p'] = 80,
  ['q'] = 81,
  ['r'] = 82,
  ['s'] = 83,
  ['t'] = 84,
  ['u'] = 85,
  ['v'] = 86,
  ['w'] = 87,
  ['x'] = 88,
  ['y'] = 89,
  ['z'] = 90,

  ['['] = 91,
  ['\\'] = 92,
  [']'] = 93,
  ['`'] = 96,

  ['escape'] = 256,
  --['enter'] = 257,
  ['return'] = 257,
  ['tab'] = 258,
  ['backspace'] = 259,
  ['insert'] = 260,
  ['delete'] = 261,
  ['right'] = 262,
  ['left'] = 263,
  ['down'] = 264,
  ['up'] = 265,
  ['pageup'] = 266,
  ['pagedown'] = 267,
  ['home'] = 268,
  ['end'] = 269,
  ['capslock'] = 280,
  ['scrolllock'] = 281,
  ['numlock'] = 282,
  ['printscreen'] = 283,
  ['pause'] = 284,

  ['f1'] = 290,
  ['f2'] = 291,
  ['f3'] = 292,
  ['f4'] = 293,
  ['f5'] = 294,
  ['f6'] = 295,
  ['f7'] = 296,
  ['f8'] = 297,
  ['f9'] = 298,
  ['f10'] = 299,
  ['f11'] = 300,
  ['f12'] = 301,

  ['kp0'] = 320,
  ['kp1'] = 321,
  ['kp2'] = 322,
  ['kp3'] = 323,
  ['kp4'] = 324,
  ['kp5'] = 325,
  ['kp6'] = 326,
  ['kp7'] = 327,
  ['kp8'] = 328,
  ['kp9'] = 329,
  ['kp.'] = 330,
  ['kp/'] = 331,
  ['kp*'] = 332,
  ['kp-'] = 333,
  ['kp+'] = 334,
  ['kpenter'] = 335,
  ['kp='] = 336,

  ['lshift'] = 340,
  ['lctrl'] = 341,
  ['lalt'] = 342,
  ['lgui'] = 343,
  ['rshift'] = 344,
  ['rctrl'] = 345,
  ['ralt'] = 346,
  ['rgui'] = 347,
  ['menu'] = 348
}

local reverse = {}
for k, v in pairs(keymap) do
  reverse[v] = k
end
for k, v in pairs(reverse) do
  keymap[k] = v
end


local keyboard = { pressedKeys = {} }

function keyboard.isDown(key, ...)
  if not key then return false end
  local keycode = keymap[key]
  assert(keycode and type(keycode) == 'number', 'Unknown key: ' .. key)
  return C.glfwGetKey(window, keycode) == 1 or keyboard.isDown(...)
end

C.glfwSetKeyCallback(window, function(window, key, scancode, action, mods)
  if action ~= 2 and keymap[key] then
    lovr.event.push(action > 0 and 'keypressed' or 'keyreleased', keymap[key])
  end
end)

C.glfwSetCharCallback(window, function(window, char)
    lovr.event.push('textinput', string.char(char))
  end)

function lovr.keypressed(k)
  keyboard.pressedKeys[k] = true
  if keyboard.keypressed then
    keyboard.keypressed(k)
  end
end

function lovr.keyreleased(k)
  keyboard.pressedKeys[k] = false
  if keyboard.keyreleased then
    keyboard.keyreleased(k)
  end
end

function lovr.textinput(k)
  if keyboard.textinput then
    keyboard.textinput(k)
  end
end

return keyboard
