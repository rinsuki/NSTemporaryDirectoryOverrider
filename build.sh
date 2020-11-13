#!/bin/sh
clang -dynamiclib overrider.m -l objc -framework Foundation -o overrider.dylib
cp /usr/bin/xip ./xip_orig
