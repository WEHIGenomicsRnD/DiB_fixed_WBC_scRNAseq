#!/bin/bash
#SBATCH --partition=regular
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=110G
#SBATCH --time=2:00:00
#SBATCH -e agrr-%j.err
#SBATCH -o agrr-%j.out
#SBATCH --job-name=cr_agrr

module load cellranger/7.1.0

ID="WB_CSL"
# Replace BASE with your path to agrr_file.csv
BASE="/stornext/Home/data/allstaff/b/brown.d/Projects/G000254_Fixed_Neutrophil/metadata/data_in_brief/";
SAMPLE_SHEET_PATH=${BASE}"agrr_file.csv";

cellranger aggr --id=$ID \
    --csv=$SAMPLE_SHEET_PATH \
    --normalize=none \
    --localcores=12 \
    --localmem=100;
