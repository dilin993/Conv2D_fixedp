############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv2D_fixedp
set_top conv2Dfixp
add_files conv2D_fixedp/conv.cpp
add_files conv2D_fixedp/conv.h
add_files -tb conv2D_fixedp/conv_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./conv2D_fixedp/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -setup
export_design -format ip_catalog
