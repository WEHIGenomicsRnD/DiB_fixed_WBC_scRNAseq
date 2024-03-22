#!/bin/bash
#SBATCH --partition=regular
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=110G
#SBATCH --time=12:00:00
#SBATCH -e bat3-%j.err
#SBATCH -o bat3-%j.out
#SBATCH --job-name=cr_bat3A

module load cellranger/7.1.0

ID="bat3A"
BASE="/stornext/Home/data/allstaff/b/brown.d/Projects/G000254_Fixed_Neutrophil/metadata/data_in_brief/";
SAMPLE_SHEET_PATH=${BASE}"bat3A_wb-expect_csl.csv";

cellranger multi --id=$ID \
                     --csv=$SAMPLE_SHEET_PATH \
                     --localcores=12 \
                     --localmem=100;
