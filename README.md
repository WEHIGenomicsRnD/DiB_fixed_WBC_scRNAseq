# DiB_fixed_WBC_scRNAseq  
Code for manuscript: **A Dataset Examining Technical Factors on Fixed White Blood Cell Single-Cell RNA-Seq**

## Abstract

This repository provides pre-processing scripts and basic analyses from the associated manuscript. The goal is to evaluate single-cell RNA sequencing (scRNA-seq) methods on fragile immune cells, focusing on granulocytes. These cell types present unique challenges for scRNA-seq due to their high RNase content, fragility, and susceptibility to data loss during cryopreservation.

The associated dataset contains healthy RBC-depleted blood from humans processed with two technology platforms:

1. **Honeycomb HIVE v1**  
2. **10x Genomics Flex v1**

- The **`scripts/`** directory contains pre-processing scripts that begin with FASTQ inputs and generate outputs compatible with popular packages such as Scanpy, Seurat, and the Bioconductor ecosystem.

- The **`metadata/`** directory contains sample information and sample sheets required for the pre-processing scripts.

- The **`notebooks/`** directory contains R code to load the outputs from the pre-processing scripts and generate a `SingleCellExperiment` object with associated metadata. It also includes notebooks for basic data visualization.

It is recommended to start with the `SingleCellExperiment` object. You can retrieve specific metadata and data using the following functions:

- **Cell metadata:** `colData(sce)`  
- **Gene metadata:** `rowData(sce)`  
- **Cell-by-gene count matrix:** `counts(sce)`

These functions also allow conversion into a Seurat object if preferred.

## Data Availability

The dataset is available on [GEO: GSE266615](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE266615)
