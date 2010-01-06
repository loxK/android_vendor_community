# Community hero compilation

In order to compile using this source, you must have a 2.x ROM for your device
with the correct name: update-hero.zip.
 
The ROM should be at your AOSP root. Currently you can use either a KaguDroid rom or a HERO21 rom

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

3. Run `pushd vendor/community/hero && ./unzip-files.sh && popd`
 to unzip proprietary files from existing rom.

4. . Run `. build/envsetup.sh` to setup your build environment

5. Run `lunch community_hero-eng` to select the right configuration

