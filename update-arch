#!/bin/bash
set -e

export INSTALL_DIR=~/opt/symbiflow

rm -rf $INSTALL_DIR/xc7/install
mkdir $INSTALL_DIR/xc7/install
wget -qO- $(wget -qO- https://storage.googleapis.com/symbiflow-arch-defs-gha/symbiflow-toolchain-latest) | tar -xJC $INSTALL_DIR/xc7/install
wget -qO- $(wget -qO- https://storage.googleapis.com/symbiflow-arch-defs-gha/symbiflow-xc7a50t_test-latest) | tar -xJC $INSTALL_DIR/xc7/install
wget -qO- $(wget -qO- https://storage.googleapis.com/symbiflow-arch-defs-gha/symbiflow-xc7a100t_test-latest) | tar -xJC $INSTALL_DIR/xc7/install
wget -qO- $(wget -qO- https://storage.googleapis.com/symbiflow-arch-defs-gha/symbiflow-xc7a200t_test-latest) | tar -xJC $INSTALL_DIR/xc7/install
wget -qO- $(wget -qO- https://storage.googleapis.com/symbiflow-arch-defs-gha/symbiflow-xc7z010_test-latest) | tar -xJC $INSTALL_DIR/xc7/install
