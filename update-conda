#!/bin/bash
set -e

export INSTALL_DIR=~/opt/symbiflow
export FPGA_FAM=xc7
source "$INSTALL_DIR/$FPGA_FAM/conda/etc/profile.d/conda.sh"

conda remove -y -n xc7 --all
conda clean -y --all

conda env remove -n xc7
conda env create -f $FPGA_FAM/environment.yml

