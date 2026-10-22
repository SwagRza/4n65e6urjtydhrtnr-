# NutriSnap APK project

The app itself is `www/index.html`. This folder wraps it with Capacitor so it can be built into an Android APK.
Nothing has been built or tested yet, so expect to fix small things on the first run.

## Option A: build on your computer
1. Install Node 20+, JDK 21 and Android Studio (it installs the Android SDK).
2. In this folder run: `./build.sh` (on Windows use Git Bash or WSL).
3. Copy `android/app/build/outputs/apk/debug/app-debug.apk` to your phone and open it.
   Android will ask you to allow installs from unknown sources.

## Option B: build in the cloud with GitHub (no Android setup)
1. Create a PRIVATE GitHub repo and push this folder to its `main` branch.
2. Open the repo's Actions tab, run "Build APK", and download the `NutriSnap-apk` artifact when it finishes.
3. Unzip it and install `app-debug.apk` on your phone.

## After installing
Open the app, tap the gear icon, paste your free Gemini key from https://aistudio.google.com/app/apikey, and save.
Your key and meals stay on the phone. To change the app, edit `www/index.html`, then run `npx cap sync android` and rebuild.
