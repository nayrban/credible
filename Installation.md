# Install Rust

`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

# Install JDK 11

`sudo apt-get install openjdk-11-jdk`

# Install Flutter

[Flutter for Linux](https://docs.flutter.dev/get-started/install/linux)

Add `flutter` to `path`
run `sudo nano ~/.bashrc`

and paste at the end
`export PATH="$PATH:/home/bryan/flutter/bin"`

run **flutter doctor** and install the required software

# Install Android Studio or Android SDK 
Use the NDK 22 and export the following libraries

run `sudo nano ~/.bashrc`

```
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_TOOLS=$ANDROID_SDK_ROOT/build-tools/33.0.0/
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk/22.1.7171670/
export TOOLCHAIN=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64
```


# DID Software

You need to clone the next **3** repositories in the same folder

## Download SSI repository from SpruceId 
**Then enter the directory**

install `clang` and `openssl`, you can use `libssl-dev`
download the git submodules, review the documentation


## Download didkit from nayrban/didkit 
**then enter the directory**

First run:
```
sudo apt-get update \
sudo apt-get install -y build-essential
```


then run: `make -C lib install-rustup-android`


anf finally run, and wait for the compilation to complete
```
make \
    AR=$TOOLCHAIN/bin/llvm-ar \
    RANLIB=$TOOLCHAIN/bin/llvm-ranlib \
    -C lib ../target/test/android.stamp
```

## Download credible from nayrban/credibl 
Then enter the directory

run: `flutter build apk`

You can create a new Android emulator and run: `flutter run`

