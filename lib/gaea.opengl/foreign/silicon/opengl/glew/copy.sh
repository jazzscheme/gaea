#! /bin/sh

GLEW=/opt/homebrew/Cellar/glew/2.2.0_1

if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi

cp -r $GLEW/include include

mkdir lib
cp $GLEW/lib/libGLEW.dylib lib/libGLEW.dylib
chmod 755 lib/libGLEW.dylib
