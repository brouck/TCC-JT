#boxplot for metrics
project<-"JodaTime"

data <- read.table(paste("D:/Repositórios/TCC-JT/data/ODEMPackageCharacteristics", ".data", sep = ""), header=TRUE);

JodaTime_Exclude <- as.factor(c("1.6.1", "1.5.1", "1.5.2", "2.10.1", "2.10.2", "2.10.3", "2.10.4", "2.10.5", "2.10.6", "2.10.7", "2.10.8", "2.10.9", "2.8.1", "2.8", "2.9", "2.9.1", "2.9.2", "2.9.6", "2.9.7", " 2.9.8"));

`%notin%` <- Negate(`%in%`)

data <- subset(data, versions %notin% JodaTime_Exclude)



pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_CBO.pdf", sep = ""), width=8,height=3)
par(mar=c(4,3,3,3))
boxplot(data$cbo~data$versions, main="CBO", xlab='', ylab='', las =2);
dev.off();

pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_AFF.pdf", sep = ""), width=8,height=3)
par(mar=c(4,3,3,3))
boxplot(data$aff~data$versions, main="Afferent Coupling", xlab='', ylab='', las =2);
dev.off();

pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_EFF.pdf", sep = ""), width=8,height=3)
par(mar=c(4,3,3,3))
boxplot(data$eff~data$versions, main="Efferent Coupling", xlab='', ylab='', las =2);
dev.off();

pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_LCOM.pdf", sep = ""), width=8,height=3)
par(mar=c(4,3,3,3))
boxplot(data$lcom~data$versions, main="LCOM", xlab='', ylab='', las =2);
dev.off();

pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_MF.pdf", sep = ""), width=8,height=3)
par(mar=c(4,3,3,3))
boxplot(data$mf~data$versions, main="Modularization Factor", xlab='', ylab='', las =2);
dev.off();

pdf(paste("D:/Repositórios/TCC-JT/R/", project, "_CS.pdf", sep = ""), width=8,height=3)
par(mar=c(4,4,3,3))
boxplot(data$cs~data$versions, outline=FALSE, main="Cluster Score", xlab='', ylab='', las =2);
dev.off();
