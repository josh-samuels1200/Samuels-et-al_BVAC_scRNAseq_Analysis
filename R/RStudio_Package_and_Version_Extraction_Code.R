# Creator: Josh Samuels
# Date Created: June 2021

# Simple code to extract a list of packages and versions loaded into your R package environment
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)

# Save the extracted package list. Convert to .xls file
write.csv(ip, file = 
            "D:/Research/NIH/Herkenham_Lab/10X_Neurovascular_scRNAseq/Scripts/R_Packages_Josh_Samuels_Personal_3.22.csv")
