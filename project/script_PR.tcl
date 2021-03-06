# Script to generate project for PR
#   vivado_hls -f script_PR.tcl
#   vivado_hls -p projrouter
# WARNING: this will wipe out the original project by the same name

# create new project (deleting any existing one of same name)
open_project -reset projrouter

# source files
set CFLAGS {-std=c++11 -I../TrackletAlgorithm}
set_top ProjectionRouterTop
add_files ../TrackletAlgorithm/ProjectionRouterTop.cpp -cflags "$CFLAGS"
add_files -tb ../TestBenches/ProjectionRouter_test.cpp -cflags "$CFLAGS"

# data files
add_files -tb ../emData/PR/PR_L3PHIC/
#add_files -tb ../emData/PR/PR_L3L4_L1PHI3/

open_solution "solution1"

# Define FPGA, clock frequency & common HLS settings.
source settings_hls.tcl

csim_design -compiler gcc -mflags "-j8"
csynth_design
cosim_design 
export_design -format ip_catalog
# Adding "-flow impl" runs full Vivado implementation, providing accurate resource use numbers (very slow).
#export_design -format ip_catalog -flow impl

exit
