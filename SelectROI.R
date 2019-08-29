directory<-"/Users/Hintermann/Desktop/LAB/ChIP/ChIP_profilesOnHoxD"
InFile<-"H3K27ac_PostTrunk_E85_rep1.bedgraph"

# Restrain the bedGraph to ROI
setwd(directory)
ChIP_Peaks<-read.table(InFile, sep="\t", fill = TRUE,header=FALSE, skip=1, quote="\"", stringsAsFactors=F)

#HoxD_region<-c(74450000,75770000) # WP plots
HoxD_ChIP_Peaks<-subset(ChIP_Peaks,ChIP_Peaks$V1=="chr2"&ChIP_Peaks$V2>74450000&ChIP_Peaks$V3<75770000)

length(ChIP_Peaks$V1)
length(HoxD_ChIP_Peaks$V1)

tName<-paste0("HoxD_",InFile)
write.table(HoxD_ChIP_Peaks,tName,col.names = F, row.names = F,quote = F,append = T, sep="\t")

# I modified it in 2019