# Samuels-et-al_BVAC_scRNAseq_Analysis
Workflow and R code associated with Samuels et al - BVAC scRNAseq:

Chronic social defeat alters brain vascular-associated cell gene expression patterns leading to vascular dysfunction and immune system activation 
Joshua D. Samuels*, Madison L. Lotstein, Michael L. Lehmann, Abdel G. Elkahloun, Subhadra Banerjee, & Miles Herkenham

`*` Corresponding author at rhk9gh@virginia.edu


The R folder contains the R code used in the workflow to process and analyze the CSD1, CSD2, HC1, and HC2 scRNAseq samples. The packages and versions at the time the analysis was conduced can be found in the RStudio-Packages-and-Versions file. The workflow is shown below and can also be found in the Mouse_Neurovascular_RNAseq_Workflow file.


Mouse BVAC scRNAseq Workflow:
1. R/Mouse_Neurovascular_scRNAseq_QC_Integration
- Using Seurat pipeline with QC, normalization, SCTransform, and integration steps.

2. R/Mouse_Neurovascular_scRNAseq_Clustering
- Use signature gene identifiers from literature + exported cluster signature gene excel spreadsheets + Mouse_Neurovascular_scRNAseq_Cluster_Interrogation

3. R/Mouse_Neurovascular_scRNAseq_CSDvsHC_Differential_Expression
- Creates DE gene lists for all clusters identified

4. R/Mouse_Neurovascular_scRNAseq_DE_Gene_Pathway_Enrichment_Analysis
- Condenses pathway analyses run (i.e., Reactome, GO: Biological Processes) using DE genes into a heatmap figure

5. R/Mouse_Neurovascular_scRNAseq_Cluster_Interrogation
- Used to examine clusters by gene expression, create feature plots, and make heatmaps

6. R/Mouse_Neurovascular_scRNAseq_CellChat_Analysis
- CellChat analysis of cell-cell communication and ligand-receptor interactions

Other Important Scripts:
1. R/R_Package_and_Version_Extraction_Code
- Creates a list of all packages used during the workflow along with the package versions

