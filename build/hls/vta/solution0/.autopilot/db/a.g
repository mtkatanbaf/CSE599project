#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/mohamad/Documents/CSE599/lab1/build/hls/vta/solution0/.autopilot/db/a.g.bc ${1+"$@"}
