#!/bin/bash
#SBATCH --partition=regular
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=110G
#SBATCH --time=6:00:00
#SBATCH -e bee-slurm-%j.err
#SBATCH -o bee-slurm-%j.out
#SBATCH --job-name=AGI_15

# USAGE
# ./beenet analyze --sample-name=... --ref=... --num-barcodes=# <fq.gz files>

# Replace BASE with your path to fastq files
BASE="/stornext/Projects/score/2021_Sequencing_Runs/NN247/";
# REF is a Honeycomb HIVE specific reference. See https://honeycomb.bio
REF="/stornext/HPCScratch/home/brown.d/Refs/HIVE/20210603_GRCh38.104";
SAMPLE="AGI_15";
OUTDIR=${BASE}${SAMPLE};
BARCODES="10000";

/stornext/HPCScratch/home/brown.d/beenet analyze \
    --sample-name=$SAMPLE \
    --ref=$REF \
    --num-barcodes=$BARCODES \
    --out=$OUTDIR \
    ${BASE}fastq/HIVE_AGI_15_S3_L001_R1_001.fastq.gz \
    ${BASE}fastq/HIVE_AGI_15_S3_L001_R2_001.fastq.gz;
