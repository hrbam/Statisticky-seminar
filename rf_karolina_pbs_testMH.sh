#!/bin/bash
#PBS -N rf
#PBS -l select=1:ncpus=128,walltime=00:05:00
#PBS -q qexp
#PBS -e rf.e
#PBS -o rf.o

cd ~/KPMS-IT4I-EX/Statisticky-seminar
pwd

module load R
echo "loaded R"



time Rscript rf_mc.r 16
time Rscript rf_mc.r 32
time Rscript rf_mc.r 64
time Rscript rf_mc.r 128
