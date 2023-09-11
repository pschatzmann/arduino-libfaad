#!/bin/bash
# Build Arduino Library
cp -r original/faad2/include/ src
cp -r original/faad2/libfaad src
cp  original/faad2/README .
cp  original/faad2/COPYING .
cp  original/faad2/AUTHORS .
mkdir src/libfaad/codebook/codebook 
mv src/libfaad/codebook/hcb_* src/libfaad/codebook/codebook/
sed -i ""  's/#ifdef HAVE_CONFIG_H/#if defined(HAVE_CONFIG_H) || defined(ARDUINO)/' src/libfaad/common.h
# const correctness
sed -i ""  's/char \*err_msg\[]/const char \*err_msg\[]/' src/libfaad/error.c
sed -i ""  's/static char \*lib/static const char \*lib/' src/libfaad/decoder.c
sed -i ""  's/char\* NeAACDecGetErrorMessage/const char\* NeAACDecGetErrorMessage/' src/libfaad/decoder.c
sed -i ""  's/char\* NeAACDecGetErrorMessage/const char\* NeAACDecGetErrorMessage/' src/neaacdec.h






