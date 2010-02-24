# libogg
pure-gen -f extern --namespace ogg -s /usr/include/ogg/ogg.h:: -l libogg /usr/include/ogg/ogg.h
sed s/char\\\*/void\\\*/g ogg.pure >ogg2.pure
cat ogg2.pure ogg.pure.tail >ogg.pure
rm ogg2.pure

# libvorbis
pure-gen -f extern --namespace vorbis -s /usr/include/vorbis/codec.h:: -l libvorbis -o vorbis2.pure /usr/include/vorbis/codec.h
cat vorbis2.pure vorbis.pure.tail >vorbis.pure
rm vorbis2.pure

# OpenAL
pure-gen -f extern --namespace openal -s /usr/local/include/AL/al.h:: -l libopenal /usr/local/include/AL/al.h
pure-gen -f extern --namespace openal -s /usr/local/include/AL/alc.h:: -l libopenal /usr/local/include/AL/alc.h
sed s/OpenDevice.char\\\*/OpenDevice\(void\\\*/g alc.pure >alc2.pure
cat alc2.pure >alc.pure
rm alc2.pure


