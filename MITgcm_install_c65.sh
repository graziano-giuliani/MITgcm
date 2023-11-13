#!/bin/bash
HOME=$PWD

source /marconi/home/userexternal/ggiulian/STACK22/env2022

rm -rf $HOME/MITgcm_c65/verification/MED12_ALADIN_75_COUPLED/build_240
mkdir $HOME/MITgcm_c65/verification/MED12_ALADIN_75_COUPLED/build_240
cd $HOME/MITgcm_c65/verification/MED12_ALADIN_75_COUPLED/build_240

ln -sf /cineca/prod/opt/compilers/intel/pe-xe-2018/binary/impi/2018.4.274/include64/mpif.h .

$HOME/MITgcm_c65/tools/genmake2 -rootdir=$HOME/MITgcm_c65 \
   -of=$HOME/opt/ictp_marconi.cfg \
   -mods=$HOME/MITgcm_c65/verification/MED12_ALADIN_75_COUPLED/code \
   -make=gmake -mpi
make depend
make
