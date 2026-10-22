#!/usr/bin/env bash
# Builds a debug APK. Needs Node 20+, JDK 21 and the Android SDK (Android Studio installs it).
set -e
npm install
[ -d android ] || npx cap add android
# camera permission so the Camera button works inside the app
grep -q "android.permission.CAMERA" android/app/src/main/AndroidManifest.xml || \
  sed -i 's#</manifest>#    <uses-permission android:name="android.permission.CAMERA" />\n</manifest>#' android/app/src/main/AndroidManifest.xml
npx cap sync android
cd android && ./gradlew assembleDebug
echo
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
