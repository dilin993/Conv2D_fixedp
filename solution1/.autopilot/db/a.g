#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dilin/vivado_hls/conv2D_fixedp/solution1/.autopilot/db/a.g.bc ${1+"$@"}
