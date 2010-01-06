# Community vendor tree

This is a vendor tree that allows developers to compile Android 2.0 (eclair)
for some devices.  It is based off work by [cyanogen][1], [lox][2], kiall and
jnwhiteh and can be used as a base for custom ROMS.

Currently supported devices are

- HTC Hero
- Acer Liquid (in progress)

In order to compile using this source, you must have a 2.x ROM for your device
with the correct name:

- update-hero.zip for HTC Hero
- update-liquid.zip for Acer Liquid
 
The ROMS should be at your AOSP root.

# Usage instructions

1. Add the following to your `.repo/localmanifest` file

    <?xml version="1.0" encoding="UTF-8"?>
    
    <manifest>
        <remote name="github" fetch="git://github.com/" />
    
    	<!-- Get rid of the qualcomm repos -->
        <remove-project name="platform/vendor/qcom/android-open" />
        <remove-project name="platform/vendor/qcom/proprietary-open" />
    
    	<!-- Disable system/extras/su by pulling in a fork -->
    	<remove-project name="platform/system/extras" />
    	<project path="system/extras" name="cyanogen/android_system_extras" remote="github" />
    
        <!-- Add Superuser -->
        <project path="packages/apps/Superuser" name="cyanogen/android_packages_apps_Superuser" remote="github" />

        <!-- init.d filesystem fix, etc. -->
        <remove-project name="platform/system/core" />
        <project path="system/core" name="jnwhiteh/android_system_core" remote="github" />

    	<!-- Synchronization and other fixes -->
    	<remove-project name="platform/frameworks/base" />
    	<project path="frameworks/base" name="kiall/android_platform_frameworks_base" remote="github" />
        
    	<!-- Settings for widget fixes, etc. -->
    	<remove-project name="platform/packages/apps/Settings" />
    	<project path="packages/apps/Settings" name="kiall/android_packages_apps_Settings" remote="github" />
    
    	<!-- Community repo -->
    	<project path="vendor/community" name="loxK/android_vendor_community" remote="github" />
    </manifest>

2. Run `repo sync` to update the repositories

3. Run `pushd vendor/community/<device> && ./unzip-files.sh && popd`
 to unzip proprietary files from existing roms.

4. . Run `. build/envsetup.sh` to setup your build environment

5. Run `lunch <combo>` to select the right configuration

Available combos:

- community_hero-eng
- community_liquid-eng

# Known global issues

  * Currently make otapackage does not work properly and does not produce a usable zip.  A patch exists to get close, but I'm not comfortable with the hacky changes I've made so far.
  * Brightness control in power control widget is not aligned correctly 
  * No dictionary is included in the LatinIME app


[1]: http://github.com/cyanogen
[2]: http://github.com/loxK/android_vendor_lox
