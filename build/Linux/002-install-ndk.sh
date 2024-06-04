#!/bin/bash

cd $HOME

for version in 26c
do
    ndk=android-ndk-r$version
    ndk_zip=$ndk-linux.zip

    wget --progress=bar:force https://dl.google.com/android/repository/$ndk_zip

    unzip $ndk_zip
    rm $ndk_zip
done

# exports
echo "export ANDROID_NDK=\$HOME/android-ndk-r26c" >> .build_env
echo "export ANDROID_NDK_HOME=\$ANDROID_NDK" >> .build_env