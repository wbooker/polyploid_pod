#!/bin/bash
#SBATCH --partition=general
#SBATCH -N 1
#SBATCH -n 1 
#SBATCH --time=72:00:00
#SBATCH --mem=16G
#SBATCH -J slim
#SBATCH -o logs/slim.%A.out
#SBATCH -e logs/slim.%A.err

### EXAMPLE: sbatch slurm/run_slim.sh auto recessive 50 0.000 polyploid_all_DFE.slim

INHERITANCE=${1}
DOMINANCE=${2}
REPRO=${3}
K=$4
DMU=$5
DS=$6
BS=$7
RHO=$8
SELF_RATE=$9
SCRIPT=${10}

slim -d "out_dir='output/BH_extended_5_9_2024'" -d g_size=999999 -d K=$K -d "r=log(2)" -d u_del=$DMU -d u_ben=1e-9 -d b_s=$BS -d d_s=$DS -d rho=$RHO -d "inheritance='$INHERITANCE'" -d "dom_pattern='$DOMINANCE'" -d "repro_model='$REPRO'" -d self_rate=$SELF_RATE $SCRIPT  