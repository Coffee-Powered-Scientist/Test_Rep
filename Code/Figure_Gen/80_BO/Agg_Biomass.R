# This specific code is for the 80_BO

rm(list = ls())

library(dplyr)
library(ggplot2)
library(reshape2)
library(ggthemes)
library(gridExtra)
library(extrafont)

# Update Files

source("~/Project_Master/Test_Rep/Code/LN_SED/80_BO/TreeNut_Mutator.R")

source("~/Project_Master/Test_Rep/Code/HN_SED/80_BO/TreeNut_Mutator.R")

source("~/Project_Master/Test_Rep/Code/LN_BAS/80_BO/TreeNut_Mutator.R")

source("~/Project_Master/Test_Rep/Code/HN_BAS/80_BO/TreeNut_Mutator.R")

# Set Working Directory

setwd("~/Project_Master/Test_Rep/Manuscript/Images/Aggregated/80_BO")

BO_80_LNSED<-read.csv2("~/Project_Master/Test_Rep/Output/Manuscript/LN_SED/80_BO/Edited Data/Tree_Nut_All.csv")

BO_80_LNSED_H1<-BO_80_LNSED %>% 
  filter(YEAR == "2065" & Month == "8") %>% 
  mutate(Harvest="H1", Rock_Type="Sedimentary", N="Low") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_LNSED_H2<- BO_80_LNSED %>% 
  filter(YEAR == "2147" & Month == "8") %>% 
  mutate(Harvest="H2", Rock_Type="Sedimentary", N="Low") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_LNSED_H3<-BO_80_LNSED %>%
  filter(YEAR == "2229" & Month == "8") %>%
  mutate(Harvest="H3", Rock_Type="Sedimentary", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_LNSED_H4<-BO_80_LNSED %>% 
  filter(YEAR == "2311" & Month == "8") %>% 
  mutate(Harvest="H4", Rock_Type="Sedimentary", N="Low") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_LNSED_H5<- BO_80_LNSED %>% 
  filter(YEAR == "2393" & Month == "8") %>% 
  mutate(Harvest="H5", Rock_Type="Sedimentary", N="Low") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_LNSED_H6<-BO_80_LNSED %>%
  filter(YEAR == "2475" & Month == "8") %>%
  mutate(Harvest="H6", Rock_Type="Sedimentary", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_LNSED_H7<-BO_80_LNSED %>%
  filter(YEAR == "2517" & Month == "12") %>%
  mutate(Harvest="H7", Rock_Type="Sedimentary", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))





BO_80_LNSED_H1_MELT<-melt(BO_80_LNSED_H1, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_LNSED_H2_MELT<-melt(BO_80_LNSED_H2, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNSED_H3_MELT<-melt(BO_80_LNSED_H3, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNSED_H4_MELT<-melt(BO_80_LNSED_H4, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_LNSED_H5_MELT<-melt(BO_80_LNSED_H5, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNSED_H6_MELT<-melt(BO_80_LNSED_H6, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNSED_H7_MELT<-melt(BO_80_LNSED_H7, id.vars = c("Harvest", "Rock_Type", "N"))



# 80_BO LN BAS

BO_80_LNBAS<-read.csv2("~/Project_Master/Test_Rep/Output/Manuscript/LN_BAS/80_BO/Edited Data/Tree_Nut_All.csv")

BO_80_LNBAS_H1<-BO_80_LNBAS %>% 
  filter(YEAR == "2065" & Month == "8") %>% 
  mutate(Harvest="H1", Rock_Type="Basalt", N="Low") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_LNBAS_H2<- BO_80_LNBAS %>% 
  filter(YEAR == "2147" & Month == "8") %>% 
  mutate(Harvest="H2", Rock_Type="Basalt", N="Low") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_LNBAS_H3<-BO_80_LNBAS %>%
  filter(YEAR == "2229" & Month == "8") %>%
  mutate(Harvest="H3", Rock_Type="Basalt", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_LNBAS_H4<-BO_80_LNBAS %>% 
  filter(YEAR == "2311" & Month == "8") %>% 
  mutate(Harvest="H4", Rock_Type="Basalt", N="Low") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_LNBAS_H5<- BO_80_LNBAS %>% 
  filter(YEAR == "2393" & Month == "8") %>% 
  mutate(Harvest="H5", Rock_Type="Basalt", N="Low") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_LNBAS_H6<-BO_80_LNBAS %>%
  filter(YEAR == "2475" & Month == "8") %>%
  mutate(Harvest="H6", Rock_Type="Basalt", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_LNBAS_H7<-BO_80_LNBAS %>%
  filter(YEAR == "2517" & Month == "12") %>%
  mutate(Harvest="H7", Rock_Type="Basalt", N="Low") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))





BO_80_LNBAS_H1_MELT<-melt(BO_80_LNBAS_H1, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_LNBAS_H2_MELT<-melt(BO_80_LNBAS_H2, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNBAS_H3_MELT<-melt(BO_80_LNBAS_H3, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNBAS_H4_MELT<-melt(BO_80_LNBAS_H4, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_LNBAS_H5_MELT<-melt(BO_80_LNBAS_H5, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNBAS_H6_MELT<-melt(BO_80_LNBAS_H6, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_LNBAS_H7_MELT<-melt(BO_80_LNBAS_H7, id.vars = c("Harvest", "Rock_Type", "N"))




# 80_BO HN BAS

BO_80_HNBAS<-read.csv2("~/Project_Master/Test_Rep/Output/Manuscript/HN_BAS/80_BO/Edited Data/Tree_Nut_All.csv")

BO_80_HNBAS_H1<-BO_80_HNBAS %>% 
  filter(YEAR == "2065" & Month == "8") %>% 
  mutate(Harvest="H1", Rock_Type="Basalt", N="High") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_HNBAS_H2<- BO_80_HNBAS %>% 
  filter(YEAR == "2147" & Month == "8") %>% 
  mutate(Harvest="H2", Rock_Type="Basalt", N="High") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_HNBAS_H3<-BO_80_HNBAS %>%
  filter(YEAR == "2229" & Month == "8") %>%
  mutate(Harvest="H3", Rock_Type="Basalt", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_HNBAS_H4<-BO_80_HNBAS %>% 
  filter(YEAR == "2311" & Month == "8") %>% 
  mutate(Harvest="H4", Rock_Type="Basalt", N="High") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_HNBAS_H5<- BO_80_HNBAS %>% 
  filter(YEAR == "2393" & Month == "8") %>% 
  mutate(Harvest="H5", Rock_Type="Basalt", N="High") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_HNBAS_H6<-BO_80_HNBAS %>%
  filter(YEAR == "2475" & Month == "8") %>%
  mutate(Harvest="H6", Rock_Type="Basalt", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_HNBAS_H7<-BO_80_HNBAS %>%
  filter(YEAR == "2517" & Month == "12") %>%
  mutate(Harvest="H7", Rock_Type="Basalt", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))





BO_80_HNBAS_H1_MELT<-melt(BO_80_HNBAS_H1, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_HNBAS_H2_MELT<-melt(BO_80_HNBAS_H2, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNBAS_H3_MELT<-melt(BO_80_HNBAS_H3, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNBAS_H4_MELT<-melt(BO_80_HNBAS_H4, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_HNBAS_H5_MELT<-melt(BO_80_HNBAS_H5, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNBAS_H6_MELT<-melt(BO_80_HNBAS_H6, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNBAS_H7_MELT<-melt(BO_80_HNBAS_H7, id.vars = c("Harvest", "Rock_Type", "N"))

# 80 BO HN SED

BO_80_HNSED<-read.csv2("~/Project_Master/Test_Rep/Output/Manuscript/HN_SED/80_BO/Edited Data/Tree_Nut_All.csv")

BO_80_HNSED_H1<-BO_80_HNSED %>% 
  filter(YEAR == "2065" & Month == "8") %>% 
  mutate(Harvest="H1", Rock_Type="Sedimentary", N="High") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_HNSED_H2<- BO_80_HNSED %>% 
  filter(YEAR == "2147" & Month == "8") %>% 
  mutate(Harvest="H2", Rock_Type="Sedimentary", N="High") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_HNSED_H3<-BO_80_HNSED %>%
  filter(YEAR == "2229" & Month == "8") %>%
  mutate(Harvest="H3", Rock_Type="Sedimentary", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_HNSED_H4<-BO_80_HNSED %>% 
  filter(YEAR == "2311" & Month == "8") %>% 
  mutate(Harvest="H4", Rock_Type="Sedimentary", N="High") %>% 
  select(Harvest,Rock_Type ,N,matches("DW"))

BO_80_HNSED_H5<- BO_80_HNSED %>% 
  filter(YEAR == "2393" & Month == "8") %>% 
  mutate(Harvest="H5", Rock_Type="Sedimentary", N="High") %>% 
  select(Harvest,Rock_Type ,N, matches("DW"))

BO_80_HNSED_H6<-BO_80_HNSED %>%
  filter(YEAR == "2475" & Month == "8") %>%
  mutate(Harvest="H6", Rock_Type="Sedimentary", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))

BO_80_HNSED_H7<-BO_80_HNSED %>%
  filter(YEAR == "2517" & Month == "12") %>%
  mutate(Harvest="H7", Rock_Type="Sedimentary", N="High") %>%
  select(Harvest, Rock_Type, N, matches ("DW"))





BO_80_HNSED_H1_MELT<-melt(BO_80_HNSED_H1, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_HNSED_H2_MELT<-melt(BO_80_HNSED_H2, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNSED_H3_MELT<-melt(BO_80_HNSED_H3, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNSED_H4_MELT<-melt(BO_80_HNSED_H4, id.vars = c("Harvest", "Rock_Type", "N")) 
BO_80_HNSED_H5_MELT<-melt(BO_80_HNSED_H5, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNSED_H6_MELT<-melt(BO_80_HNSED_H6, id.vars = c("Harvest", "Rock_Type", "N"))
BO_80_HNSED_H7_MELT<-melt(BO_80_HNSED_H7, id.vars = c("Harvest", "Rock_Type", "N"))



# BIND, SET, RUCK!!!!

Biomass_Master<-rbind(BO_80_LNSED_H1_MELT, BO_80_LNSED_H2_MELT, BO_80_LNSED_H3_MELT, BO_80_LNSED_H4_MELT,
                      BO_80_LNSED_H5_MELT, BO_80_LNSED_H6_MELT,BO_80_LNSED_H7_MELT ,BO_80_HNSED_H1_MELT, BO_80_HNSED_H2_MELT, BO_80_HNSED_H3_MELT, BO_80_HNSED_H4_MELT,
                      BO_80_HNSED_H5_MELT, BO_80_HNSED_H6_MELT,BO_80_HNSED_H7_MELT,BO_80_HNBAS_H1_MELT, BO_80_HNBAS_H2_MELT, BO_80_HNBAS_H3_MELT, BO_80_HNBAS_H4_MELT,
                      BO_80_HNBAS_H5_MELT, BO_80_HNBAS_H6_MELT, BO_80_HNBAS_H7_MELT,BO_80_LNBAS_H1_MELT, BO_80_LNBAS_H2_MELT, BO_80_LNBAS_H3_MELT, BO_80_LNBAS_H4_MELT,
                      BO_80_LNBAS_H5_MELT, BO_80_LNBAS_H6_MELT, BO_80_LNBAS_H7_MELT)

Biomass_Master$Harvest<-factor(Biomass_Master$Harvest, levels=c("H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "H11"))
Biomass_Master$variable<-factor(Biomass_Master$variable, levels=c("DW_F", "DW_Brk", "DW_Brh", "DW_Bol"))

Biomass_Master$N<-factor(Biomass_Master$N, levels=c("Low", "High"))

Biomass_Master$Rock_Type<-factor(Biomass_Master$Rock_Type, levels=c("Sedimentary", "Basalt"))

write.csv(Biomass_Master, "Biomass_Master.csv")


# Graphs
#Load Times New Roman
windowsFonts(A = windowsFont("Times New Roman"))


Line<-read.csv2("~/Liner_2.csv")

Line$value<-as.numeric(Line$value)

BO_Aggregated_Biomass<-ggplot(Biomass_Master[order(Biomass_Master$variable,decreasing=T),], aes(fill=variable, y=value/1000, x=Harvest, group=N)) + 
  geom_bar(position="stack", stat="identity")+ 
  facet_wrap(~Rock_Type+N)+
  scale_x_discrete(guide = guide_axis(n.dodge = 2))+ 
  labs(y="Dry Weight (Mg/ha)", fill="Biomass Compartment")+
  guides(fill = guide_legend(reverse=FALSE))+ 
  scale_fill_brewer(palette = "Pastel1", labels=c("Foliage", "Bark", "Branch", "Bole"))+
  theme_bw()+
  theme(legend.background = element_rect(fill = "lightgray"), text=element_text(family="A", size=18))+
  geom_hline(data=Line , aes(yintercept = value, color=N), show.legend = FALSE)+
  scale_y_continuous(breaks=c(200, 400, 600, 800, 1000))+
  coord_cartesian(ylim = c(0, 1000))


#Check
BO_Aggregated_Biomass

#Save to Image Directory

png("BO_Biomass.png", height=750, width=1000, res=100)
print(BO_Aggregated_Biomass)
dev.off()


