# Community vendor tree

This is a vendor tree that allows developers to compile Android 2.0 (eclair)
for some devices.  It is based off work by [cyanogen][1], [lox][2], kiall and
jnwhiteh and can be used as a base for custom ROMS.

Currently supported devices are

- HTC Hero
- Acer Liquid (in progress)

See device specific readme for your device.

# Known global issues

  * Currently make otapackage does not work properly and does not produce a usable zip.  A patch exists to get close, but I'm not comfortable with the hacky changes I've made so far.
  * Brightness control in power control widget is not aligned correctly 
  * No dictionary is included in the LatinIME app

[1]: http://github.com/cyanogen
[2]: http://github.com/loxK/android_vendor_lox
