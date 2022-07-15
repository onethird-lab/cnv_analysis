library(TCGAbiolinks)                                                    
query <- GDCquery(
  project = "TCGA-BRCA",
  data.category = "Copy Number Variation",
  data.type = "Copy Number Segment",
  sample.type = c("Primary solid Tumor", "Solid Tissue Normal")
)
GDCdownload(query, method = "client")
brca.cnv <- GDCprepare(
query = query, 
save = TRUE, 
save.filename = "brcaCNV.rda")