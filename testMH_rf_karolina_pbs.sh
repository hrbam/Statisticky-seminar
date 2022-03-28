#!/bin/bash
#PBS -N rf
#PBS -l select=1:ncpus=128,walltime=00:10:00
#PBS -q qexp
#PBS -e rf.e
#PBS -o rf.o

cd ~/KPMS-IT4I-EX/Statisticky-seminar #Omylem jsem si to naklonoval sem
pwd

module load R
echo "loaded R"

#time Rscript rf_cv_serial.r
#time Rscript rf_cv_mc.R 8
#time Rscript rf_cv_mc.R 16
time Rscript rf_cv_mc.R 32
time Rscript rf_cv_mc.R 64
time Rscript rf_cv_mc.R 128

#time Rscript MHtest_rf_cv_mc.R 8
#time Rscript MHtest_rf_cv_mc.R 16
time Rscript MHtest_rf_cv_mc.R 32
#time Rscript MHtest_rf_cv_mc.R 64
#time Rscript MHtest_rf_cv_mc.R 128

#time Rscript rf_mc.r 16
#time Rscript rf_mc.r 32
#time Rscript rf_mc.r 64
#time Rscript rf_mc.r 128
