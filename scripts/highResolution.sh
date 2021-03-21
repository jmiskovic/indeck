: '
adb shell "setprop debug.oculus.textureWidth 512 && setprop debug.oculus.textureHeight 512"
adb shell "setprop debug.oculus.textureWidth 768 && setprop debug.oculus.textureHeight 768"
adb shell "setprop debug.oculus.textureWidth 1216 && setprop debug.oculus.textureHeight 1344"
adb shell "setprop debug.oculus.textureWidth 1280 && setprop debug.oculus.textureHeight 720"
adb shell "setprop debug.oculus.textureWidth 1024 && setprop debug.oculus.textureHeight 1024"
adb shell "setprop debug.oculus.textureWidth 1536 && setprop debug.oculus.textureHeight 1536"
adb shell "setprop debug.oculus.textureWidth 2560 && setprop debug.oculus.textureHeight 2560"
adb shell "setprop debug.oculus.textureWidth 3072 && setprop debug.oculus.textureHeight 3072"
#'
adb shell "setprop debug.oculus.textureWidth 2048 && setprop debug.oculus.textureHeight 2048 && settings put system font_scale 0.85 && settings put system font_scale 1.0"