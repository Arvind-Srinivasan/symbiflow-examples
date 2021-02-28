#!/bin/bash
set -e

export INSTALL_DIR=~/opt/symbiflow
export FPGA_FAM=xc7

export PATH="$INSTALL_DIR/$FPGA_FAM/install/bin:$PATH"
source "$INSTALL_DIR/$FPGA_FAM/conda/etc/profile.d/conda.sh"

eval "$(conda shell.bash hook)"
conda activate $FPGA_FAM
cd xc7

PATH=$PATH$( find $HOME/vtr-verilog-to-routing/build -type d -printf ":%p" )
$SHELL
