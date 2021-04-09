#!/bin/bash
set -ex

BASE_DIR=`pwd`
SWIFT_SOURCE=$BASE_DIR/vagrant/out/swift-source

unset TOOLCHAINS

pushd $SWIFT_SOURCE/swiftpm
    swift build --configuration release --product swift-build
popd