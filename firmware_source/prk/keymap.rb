require "via"

# Initialize a Keyboard
kbd = Keyboard.new

# This should happen before `kbd.init_pins`
kbd.via = true

kbd.init_pins(
  [ 17, 18, 19, 20, 21 ],   # row0, row1,... respectively
  [ 14, 13, 12,  0,  1,  2,  3,  6,  7,  8,  9, 10, 11, 15 ]  # col0, col1,... respectively
)

# default layer should be added at first
kbd.add_layer :default, %i(
  KC_ZKHK  KC_1     KC_2     KC_3     KC_4     KC_5     KC_6     KC_7     KC_8     KC_9     KC_0     KC_MINUS KC_EQUAL KC_BSPC
  KC_TAB   KC_Q     KC_W     KC_E     KC_R     KC_T     KC_Y     KC_U     KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLS
  KC_LCTL  KC_A     KC_S     KC_D     KC_F     KC_G     KC_H     KC_J     KC_K     KC_L     KC_SCOLON KC_QUOT KC_ENT   XXXXXXX
  KC_LSFT  KC_Z     KC_X     KC_C     KC_V     KC_B     KC_N     KC_M     KC_COMM  KC_DOT   KC_SLSH  KC_RSFT  KC_UP    XXXXXXX
  XXXXXXX  XXXXXXX  KC_LGUI  KC_LALT  KC_SPC   KC_SPC   XXXXXXX  KC_SPC   XXXXXXX  KC_RALT  KC_RGUI  KC_LEFT  KC_DOWN  KC_RGHT
)

kbd.add_layer :raise, %i(
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
)

kbd.add_layer :lower, %i(
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX  XXXXXXX
)


#kbd.define_composite_key :CUT, %i(KC_LCTL KC_X)
#kbd.define_composite_key :COPY, %i(KC_LCTL KC_C)
#kbd.define_composite_key :PASTE, %i(KC_LCTL KC_V)

#kbd.define_mode_key :RAISE_ENTER, [ :KC_ENTER, :raise, 150, 200 ]

encoder_1 = RotaryEncoder.new(4, 5)
encoder_1.clockwise do
  kbd.send_key :KC_DOWN
end
encoder_1.counterclockwise do
  kbd.send_key :KC_UP
end
kbd.append encoder_1

rgb = RGB.new(
  16,    # pin number
  36,    # size of underglow pixel
  0,   # size of backlight pixel
  true # 32bit data will be sent to a pixel if true while 24bit if false
)
rgb.effect     = :breath
rgb.speed      = 31  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.value      = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance

kbd.start!
