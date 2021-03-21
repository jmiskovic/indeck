: '
adb shell setprop debug.oculus.textureWidth 512 && adb shell setprop debug.oculus.textureHeight 512
adb shell setprop debug.oculus.textureWidth 768 && adb shell setprop debug.oculus.textureHeight 768
adb shell setprop debug.oculus.textureWidth 1216 && adb shell setprop debug.oculus.textureHeight 1344
adb shell setprop debug.oculus.textureWidth 1024 && adb shell setprop debug.oculus.textureHeight 1024
adb shell setprop debug.oculus.textureWidth 2048 && adb shell setprop debug.oculus.textureHeight 2048
adb shell setprop debug.oculus.textureWidth 1536 && adb shell setprop debug.oculus.textureHeight 1536
adb shell setprop debug.oculus.textureWidth 2560 && adb shell setprop debug.oculus.textureHeight 2560
adb shell setprop debug.oculus.textureWidth 3072 && adb shell setprop debug.oculus.textureHeight 3072
#'
adb shell "setprop debug.oculus.textureWidth 1280 && adb shell setprop debug.oculus.textureHeight 1280 && settings put system font_scale 0.85 && settings put system font_scale 1.0"
