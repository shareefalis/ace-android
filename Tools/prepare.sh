#!/bin/bash
set -xe
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

if [ -e WORK/Makefile ]; then
echo "Already cached"
cp WORK/Makefile Makefile
else
if hash cmake 2>/dev/null; then
python prepare.py  armv7 x86 -DENABLE_WEBRTC_AEC=ON -DENABLE_H263=YES -DENABLE_FFMPEG=YES -DENABLE_NON_FREE_CODECS=ON -DENABLE_GPL_THIRD_PARTIES=ON -DENABLE_AMRWB=NO -DENABLE_AMRNB=NO -DENABLE_OPENH264=YES -DENABLE_X264=NO -DENABLE_G729=NO -DENABLE_MPEG4=NO -DENABLE_H263P=NO -DENABLE_ILBC=NO -DENABLE_ISAC=NO -DENABLE_SILK=NO -DENABLE_VCARD=ON -DENABLE_GSM=YES -DENABLE_OPUS=YES -DENABLE_SILK=YES -DENABLE_BV16=NO -DENABLE_MKV=YES -DENABLE_SPEEX=YES -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
else
python prepare.py platform armv7 x86  -DENABLE_WEBRTC_AEC=ON -DENABLE_H263=YES -DENABLE_FFMPEG=YES -DENABLE_NON_FREE_CODECS=ON -DENABLE_GPL_THIRD_PARTIES=ON -DENABLE_AMRWB=NO -DENABLE_AMRNB=NO -DENABLE_OPENH264=YES -DENABLE_X264=NO -DENABLE_G729=NO -DENABLE_MPEG4=NO -DENABLE_H263P=NO -DENABLE_ILBC=NO -DENABLE_ISAC=NO -DENABLE_SILK=NO -DENABLE_VCARD=ON -DENABLE_GSM=YES -DENABLE_OPUS=YES -DENABLE_SILK=YES -DENABLE_BV16=NO -DENABLE_MKV=YES -DENABLE_SPEEX=YES
fi
cp Makefile WORK/Makefile
fi
