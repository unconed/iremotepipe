mkdir build
pushd build
OPTS="-framework Foundation -framework IOKit -framework Cocoa -std=c99 -O2 -Wall -force_cpusubtype_ALL -mmacosx-version-min=10.5 -arch i386 -arch x86_64"
gcc $OPTS ../iremotepipe/AppleRemote.m ../iremotepipe/AppleRemoteDelegate.m ../iremotepipe/iremotepipe.m -o iremotepipe
popd
