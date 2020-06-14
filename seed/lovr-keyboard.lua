local keymap

local keyboard = {
  pressedKeys = {},
  -- stub callbacks to be replaced by user
  keypressed = function (k, combo) end,
  keyreleased = function (k) end,
  textinput = function (k) end,
}

if lovr.getOS() == 'Android' then
  keymap = {
    ['unknown']                       = 0,
    ['soft_left']                     = 1,
    ['soft_right']                    = 2,
    ['home']                          = 3,
    ['back']                          = 4,
    ['call']                          = 5,
    ['endcall']                       = 6,
    ['0']                             = 7,
    ['1']                             = 8,
    ['2']                             = 9,
    ['3']                             = 10,
    ['4']                             = 11,
    ['5']                             = 12,
    ['6']                             = 13,
    ['7']                             = 14,
    ['8']                             = 15,
    ['9']                             = 16,
    ['*']                             = 17,
    ['#']                             = 18,
    ['up']                            = 19,
    ['down']                          = 20,
    ['left']                          = 21,
    ['right']                         = 22,
    ['dpad_center']                   = 23,
    ['volume_up']                     = 24,
    ['volume_down']                   = 25,
    ['power']                         = 26,
    ['camera']                        = 27,
    ['clear']                         = 28,
    ['a']                             = 29,
    ['b']                             = 30,
    ['c']                             = 31,
    ['d']                             = 32,
    ['e']                             = 33,
    ['f']                             = 34,
    ['g']                             = 35,
    ['h']                             = 36,
    ['i']                             = 37,
    ['j']                             = 38,
    ['k']                             = 39,
    ['l']                             = 40,
    ['m']                             = 41,
    ['n']                             = 42,
    ['o']                             = 43,
    ['p']                             = 44,
    ['q']                             = 45,
    ['r']                             = 46,
    ['s']                             = 47,
    ['t']                             = 48,
    ['u']                             = 49,
    ['v']                             = 50,
    ['w']                             = 51,
    ['x']                             = 52,
    ['y']                             = 53,
    ['z']                             = 54,
    [',']                             = 55,
    ['.']                             = 56,
    ['lalt']                          = 57,
    ['ralt']                          = 58,
    ['lshift']                        = 59,
    ['rshift']                        = 60,
    ['tab']                           = 61,
    ['space']                         = 62,
    ['sym']                           = 63,
    ['explorer']                      = 64,
    ['envelope']                      = 65,
    ['enter']                         = 66,
    ['backspace']                     = 67,
    ['`']                             = 68,
    ['-']                             = 69,
    ['=']                             = 70,
    ['[']                             = 71,
    [']']                             = 72,
    ['\\']                            = 73,
    [';']                             = 74,
    ['\'']                            = 75,
    ['/']                             = 76,
    ['@']                             = 77,
    ['num']                           = 78,
    ['headsethook']                   = 79,
    ['focus']                         = 80,
    ['+']                             = 81,
    ['menu']                          = 82,
    ['notification']                  = 83,
    ['search']                        = 84,
    ['media_play_pause']              = 85,
    ['media_stop']                    = 86,
    ['media_next']                    = 87,
    ['media_previous']                = 88,
    ['media_rewind']                  = 89,
    ['media_fast_forward']            = 90,
    ['mute']                          = 91,
    ['pageup']                        = 92,
    ['pagedown']                      = 93,
    ['pictsymbols']                   = 94,
    ['switch_charset']                = 95,
    ['button_a']                      = 96,
    ['button_b']                      = 97,
    ['button_c']                      = 98,
    ['button_x']                      = 99,
    ['button_y']                      = 100,
    ['button_z']                      = 101,
    ['button_l1']                     = 102,
    ['button_r1']                     = 103,
    ['button_l2']                     = 104,
    ['button_r2']                     = 105,
    ['button_thumbl']                 = 106,
    ['button_thumbr']                 = 107,
    ['button_start']                  = 108,
    ['button_select']                 = 109,
    ['button_mode']                   = 110,
    ['escape']                        = 111,
    ['delete']                        = 112,
    ['lctrl']                         = 113,
    ['rctrl']                         = 114,
    ['capslock']                      = 115,
    ['scrolllock']                    = 116,
    ['meta_left']                     = 117,
    ['meta_right']                    = 118,
    ['function']                      = 119,
    ['printscreen']                   = 120,
    ['pause']                         = 121,
    ['home']                          = 122,
    ['end']                           = 123,
    ['insert']                        = 124,
    ['forward']                       = 125,
    ['media_play']                    = 126,
    ['media_pause']                   = 127,
    ['media_close']                   = 128,
    ['media_eject']                   = 129,
    ['media_record']                  = 130,
    ['f1']                            = 131,
    ['f2']                            = 132,
    ['f3']                            = 133,
    ['f4']                            = 134,
    ['f5']                            = 135,
    ['f6']                            = 136,
    ['f7']                            = 137,
    ['f8']                            = 138,
    ['f9']                            = 139,
    ['f10']                           = 140,
    ['f11']                           = 141,
    ['f12']                           = 142,
    ['numlock']                       = 143,
    ['kp0']                           = 144,
    ['kp1']                           = 145,
    ['kp2']                           = 146,
    ['kp3']                           = 147,
    ['kp4']                           = 148,
    ['kp5']                           = 149,
    ['kp6']                           = 150,
    ['kp7']                           = 151,
    ['kp8']                           = 152,
    ['kp9']                           = 153,
    ['kp/']                           = 154,
    ['kp*']                           = 155,
    ['kp-']                           = 156,
    ['kp+']                           = 157,
    ['kp.']                           = 158,
    ['kp,']                           = 159,
    ['kpenter']                       = 160,
    ['kp=']                           = 161,
    ['kp(']                           = 162,
    ['kp)']                           = 163,
    ['volume_mute']                   = 164,
    ['info']                          = 165,
    ['channel_up']                    = 166,
    ['channel_down']                  = 167,
    ['zoom_in']                       = 168,
    ['zoom_out']                      = 169,
    ['tv']                            = 170,
    ['window']                        = 171,
    ['guide']                         = 172,
    ['dvr']                           = 173,
    ['bookmark']                      = 174,
    ['captions']                      = 175,
    ['settings']                      = 176,
    ['tv_power']                      = 177,
    ['tv_input']                      = 178,
    ['stb_power']                     = 179,
    ['stb_input']                     = 180,
    ['avr_power']                     = 181,
    ['avr_input']                     = 182,
    ['prog_red']                      = 183,
    ['prog_green']                    = 184,
    ['prog_yellow']                   = 185,
    ['prog_blue']                     = 186,
    ['app_switch']                    = 187,
    ['button_1']                      = 188,
    ['button_2']                      = 189,
    ['button_3']                      = 190,
    ['button_4']                      = 191,
    ['button_5']                      = 192,
    ['button_6']                      = 193,
    ['button_7']                      = 194,
    ['button_8']                      = 195,
    ['button_9']                      = 196,
    ['button_10']                     = 197,
    ['button_11']                     = 198,
    ['button_12']                     = 199,
    ['button_13']                     = 200,
    ['button_14']                     = 201,
    ['button_15']                     = 202,
    ['button_16']                     = 203,
    ['language_switch']               = 204,
    ['manner_mode']                   = 205,
    ['3d_mode']                       = 206,
    ['contacts']                      = 207,
    ['calendar']                      = 208,
    ['music']                         = 209,
    ['calculator']                    = 210,
    ['zenkaku_hankaku']               = 211,
    ['eisu']                          = 212,
    ['muhenkan']                      = 213,
    ['henkan']                        = 214,
    ['katakana_hiragana']             = 215,
    ['yen']                           = 216,
    ['ro']                            = 217,
    ['kana']                          = 218,
    ['assist']                        = 219,
    ['brightness_down']               = 220,
    ['brightness_up']                 = 221,
    ['media_audio_track']             = 222,
    ['sleep']                         = 223,
    ['wakeup']                        = 224,
    ['pairing']                       = 225,
    ['media_top_menu']                = 226,
    ['11']                            = 227,
    ['12']                            = 228,
    ['last_channel']                  = 229,
    ['tv_data_service']               = 230,
    ['voice_assist']                  = 231,
    ['tv_radio_service']              = 232,
    ['tv_teletext']                   = 233,
    ['tv_number_entry']               = 234,
    ['tv_terrestrial_analog']         = 235,
    ['tv_terrestrial_digital']        = 236,
    ['tv_satellite']                  = 237,
    ['tv_satellite_bs']               = 238,
    ['tv_satellite_cs']               = 239,
    ['tv_satellite_service']          = 240,
    ['tv_network']                    = 241,
    ['tv_antenna_cable']              = 242,
    ['tv_input_hdmi_1']               = 243,
    ['tv_input_hdmi_2']               = 244,
    ['tv_input_hdmi_3']               = 245,
    ['tv_input_hdmi_4']               = 246,
    ['tv_input_composite_1']          = 247,
    ['tv_input_composite_2']          = 248,
    ['tv_input_component_1']          = 249,
    ['tv_input_component_2']          = 250,
    ['tv_input_vga_1']                = 251,
    ['tv_audio_description']          = 252,
    ['tv_audio_description_mix_up']   = 253,
    ['tv_audio_description_mix_down'] = 254,
    ['tv_zoom_mode']                  = 255,
    ['tv_contents_menu']              = 256,
    ['tv_media_context_menu']         = 257,
    ['tv_timer_programming']          = 258,
    ['help']                          = 259,   }
else -- desktop: Windows, Mac, Linux
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

  keymap = {
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
    ['menu'] = 348,  } 

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
      if char < 128 then
        lovr.event.push('textinput', string.char(char))
      else
        print('non-ascii char', char)
      end
    end)
end


local combos = { -- US keyboard layout
  ['shift+`'] = '~',
  ['shift+1'] = '!',
  ['shift+2'] = '@',
  ['shift+3'] = '#',
  ['shift+4'] = '$',
  ['shift+5'] = '%',
  ['shift+6'] = '^',
  ['shift+7'] = '&',
  ['shift+8'] = '*',
  ['shift+9'] = '(',
  ['shift+0'] = ')',
  ['shift+-'] = '_',
  ['shift+='] = '+',
  ['shift+]'] = '}',
  ['shift+['] = '{',
  ['shift+\\'] = '|',
  ['shift+\''] = '"',
  ['shift+;'] = ':',
  ['shift+/'] = '?',
  ['shift+.'] = '>',
  ['shift+,'] = '<',
  ['ralt+q'] = '\\',
  ['ralt+w'] = '|',
  ['ralt+v'] = '@',
  ['ralt+b'] = '{',
  ['ralt+n'] = '}',
  ['space'] = ' ',
}

local reverse = {}
for k, v in pairs(keymap) do
  reverse[v] = k
end
for k, v in pairs(reverse) do
  keymap[k] = v
end


function keyboard.isDown(key, ...)
  return keyboard.pressedKeys[key]
end


function lovr.keypressed(k)
  keyboard.pressedKeys[k] = true
  local combo = k
  -- order of prefixes: ctrl+alt+shift+K
  if lovr.keyboard.isDown('lshift') or lovr.keyboard.isDown('rshift') then
    combo = 'shift+'.. combo
  end
  if lovr.keyboard.isDown('lalt') then
    combo = 'alt+'.. combo
  end
  if lovr.keyboard.isDown('ralt') then
    combo = 'ralt+'.. combo
  end
  if lovr.keyboard.isDown('lctrl') then
    combo = 'ctrl+'.. combo
  end
  keyboard.keypressed(k, combo) -- user callback
  if lovr.getOS() == 'Android' then
    -- this is workaround for geting unicode key under Android NDK
    if combos[combo] then
      keyboard.textinput(combos[combo])
    elseif combo:len() == 1 then
      keyboard.textinput(k)
    elseif combo:match('^shift%+%l$') then -- uppercase letters
      keyboard.textinput(combo:sub(#combo, #combo):upper())
    end
  end
end


function lovr.keyreleased(k)
  keyboard.pressedKeys[k] = false
  keyboard.keyreleased(k) -- user callback
end


function lovr.textinput(k)
  keyboard.textinput(k) -- user callback
end


return keyboard
