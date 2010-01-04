# HTC Hero Community vendor tree

This is a vendor tree that allows developers to compile Android 2.0 (eclair)
for HTC Hero devices.  It is based off work by [cyanogen][1], lox, kiall and
jnwhiteh and can be used as a base for custom ROMS.

In order to compile using this source, you must have a 2.x ROM for Hero, along
with the google-ion 1.6 ota image from HTC (currently hardcoded as
`signed-google_ion-ota-14721.zip`).  Both ROMS should be at your AOSP root and
the 2.x rom should simply be named update-signed.zip.

# Usage instructions

1. Add the following to your `.repo/localmanifest` file

    <?xml version="1.0" encoding="UTF-8"?>
    
    <manifest>
        <remote name="github" fetch="git://github.com/" />
    
    	<!-- Get rid of the qualcomm repos -->
        <remove-project name="platform/vendor/qcom/android-open" />
        <remove-project name="platform/vendor/qcom/proprietary-open" />
    
    	<!-- Split system into multiple projects -->
    	<remove-project name="platform/system/extras" />
    	<project path="system/extras" name="cyanogen/android_system_extras" remote="github" />
    
    	<!-- Add Superuser -->
        <project path="packages/apps/Superuser" name="cyanogen/android_packages_apps_Superuser" remote="github" />
    
    	<!-- Synchronization and other fixes -->
    	<remove-project name="platform/frameworks/base" />
    	<project path="frameworks/base" name="kiall/android_platform_frameworks_base" remote="github" />
    
    	<!-- Power button menu, etc. -->
    	<remove-project name="platform/frameworks/policies/base" />
    	<project path="frameworks/policies/base" name="kiall/android_platform_frameworks_policies_base" remote="github" />
    
    	<!-- Enhanced Launcher -->
    	<remove-project name="platform/packages/apps/Launcher" />
    	<project path="packages/apps/Launcher" name="cyanogen/android_packages_apps_Launcher" remote="github" />
    
    	<!-- Settings for widget fixes, etc. -->
    	<remove-project name="platform/packages/apps/Settings" />
    	<project path="packages/apps/Settings" name="kiall/android_packages_apps_Settings" remote="github" />
    
    	<!-- Community repo -->
    	<project path="vendor/community" name="jnwhiteh/vendor_community_hero" remote="github" />
    </manifest>

2. Run `repo sync` to update the repositories

3. Run `. build/envsetup.sh` to setup your build environment

4. Run `lunch community_hero-eng` to select the right configuration

# Known issues

  * Currently make otapackage does not work properly and does not produce a usable zip.  A patch exists to get close, but I'm not comfortable with the hacky changes I've made so far.
  * Brightness control in power control widget is not aligned correctly 
  * No dictionary is included in the LatinIME app


[1]: http://github.com/cyanogen
