# DiB_fixed_WBC_scRNAseq
Code for manuscript: A Dataset Examining Technical Factors on Fixed White Blood Cell Single-Cell RNA-Seq

## Abstract

This repository provides pre-processing scripts, and basic analyses from the manuscript. The aim was to evaluate single-cell RNA sequencing (scRNA-seq) methods on fragile immune cells, focusing on granulocytes. These cell types present challenges in scRNA-seq due to their high RNase content, fragility, and susceptibility to data loss during cryopreservation.

The associated dataset contains healthly RBC depleted blood from humans processed with two technology platforms:

1. Honeycomb HIVE v1
2. 10x Genomics Flex v1

The *scripts* directory contains pre-processing scripts that begin with fastq inputs and produce outputs that can be analysed with popular packages such as Scanpy, Seurat and the Bioconductor ecosystem.

The *metadata* directory contains information about the samples and samplesheets required for the preprocessing scripts.

The *notebooks* directory contains R code to read the outputs of pre-processing scripts and generate a SingleCellExperiment object containing associated metadata. There are also notebooks that perform a basic visualisation of the data.

## Data availability

The dataset is available at GEO: GSE266615
