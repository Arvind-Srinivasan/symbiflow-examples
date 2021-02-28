#!/bin/bash
set -e

export INSTALL_DIR=~/opt/symbiflow
export FPGA_FAM=xc7
export TARGET=basys3

cd ${1}
make clean 
cd ..

make -C ${1}
cd ${1}build/${TARGET}
openocd -f ${INSTALL_DIR}/${FPGA_FAM}/conda/envs/${FPGA_FAM}/share/openocd/scripts/board/digilent_arty.cfg -c "init; pld load 0 top.bit; exit"
