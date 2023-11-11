################### IMPORTATION DU DATASET TRAIN

setwd("C:/Users/dell/Desktop/PROJET DATA ANALYSE")
library(readr)
train <- read_csv("train.csv")
library(ineq)
library(tidyverse)
library(psych)
library(FactoMineR)
library(factoextra)
library(summarytools)
library(factoextra)
library(factoextra)
#### les information Descriptis sur le dataset avec la fonction summary
####les information sur le nombre de variable et de colone et les noms et types de varriables
summary(train)
dim(train)
names(train)
str(train)
train <- train [ ,-1]
################### Nous allons d'abord renome les noms des variable dans train
colnames(train) <- c("typelogeconV"," clasGzonV","Rue_reliés_à_la_propriété " ,"Tlotpiedscarres","Rue","Ruell","FormGProp","Planetepropriete","Utilitaires","configurationLot","penteProp","Quartier","Condition1","Condition2","typelogement","styledelogement","matglobal","etatGmaison","Année de construction ","Datereamenagement ","typetoit","materiauduToit","RevêtementExtérieur1st","Revêtementextérieur 2nd","typeplacmaçon","surfplacmaçon","qualitematexter","etatmatexter","Fondation","Hautsoussolqualite","etaGsoussol","Nivjardin","SurffinisoussolQual","Piedscarrésfinisdetype 1 ","EvalSurffinisoussor","Piedscarrésfinisdetype 2","PiedscarrésinachevésSurFsousol","totalSPiedscarréssousol","Chauffage ","EtatqualiteChauffag","climcentral","Électrique ", "1stpiedscarrés", "2nd pieds carrés", "Pieds_carrés_finis_faible_qualité","SurHabitablesoussol","salbainsComplsoussol", "DemiSalbainssoussol", "salbainsCompldessus", "Demi-bain", "Chambre", "Cuisine", "Qualite cuisine", "nbrTotalchbr","Fonctionnel", "nbrCheminées", "qualiteCheminées", "GarageType", "anconsGarage", "finiInterGarage",  "GarageCars","Garage  pieds carrés ", "qualiteGarage", "CondGarage", "allépavée","Surface de pont en bois en pieds carrés","Porche ouvert en pieds carrés", "Porche fermée","Porche trois saisons en pieds carrés ","Surface du porche de l'écran en pieds carrés ","Surface de la piscine piec","Pool", "Clôture", "Fonctionnalités diverses","MiscVal","moisvendu","Année de vente","typeVente","conditionvent","prixdevent")
names(train)
rownames(train)<-c(omega)
omega <-paste("Maison N°_",1:1460)
dim(train)

##### Nous allons Maintenant séparer les variables selon leur type : QUANTITATIVE OU QUALITATIVE

### POUR LES VARIABLE QUALITATIF
varQualitatifs <-train[sapply(train, class) == "character"]
View(varQualitatifs)
##identification des valeur manquantes pour les variables qualitatif
is.na(varQualitatifs)

### POUR LES VARIABLE QUAntitatif
train <- train[sapply(train, class) == "numeric"]
View(train)

## identification des valeur manquantes pour les variables quantitatifs
is.na(train)

##### Pour les NA des variables Qualitatives nous allons les remplaceer 
#### selon les variables par leur propriete dans la description 

varQualitatifs$Ruell[is.na(varQualitatifs$Ruell)] <- "Pas d’accès à la ruelle"
varQualitatifs$Hautsoussolqualite[is.na(varQualitatifs$Hautsoussolqualite)] <- "Pas de sous-sol"
varQualitatifs$etaGsoussol[is.na(varQualitatifs$etaGsoussol)] <- "Pas de sous-sol"
varQualitatifs$Nivjardin[is.na(varQualitatifs$Nivjardin)] <- "Pas de sous-sol"
varQualitatifs$SurffinisoussolQual[is.na(varQualitatifs$SurffinisoussolQual)]  <- "Pas de sous-sol"
varQualitatifs$EvalSurffinisoussor[is.na(varQualitatifs$EvalSurffinisoussor)] <- "Pas de sous-sol"
varQualitatifs$Clôture[is.na(varQualitatifs$Clôture)] <- "Pas De Clôture"
varQualitatifs$`Fonctionnalités diverses`[is.na(varQualitatifs$`Fonctionnalités diverses`)] <- " Aucun"
varQualitatifs$Pool[is.na(varQualitatifs$Pool)]<- "Pas De Poll"
varQualitatifs$qualiteCheminées[is.na(varQualitatifs$qualiteCheminées)] <- "Pas De Cheminée"
varQualitatifs$GarageType[is.na(varQualitatifs$GarageType)] <- "Pas de garage"
varQualitatifs$finiInterGarage[is.na(varQualitatifs$finiInterGarage)]<- "Pas de garage"
varQualitatifs$qualiteGarage[is.na(varQualitatifs$qualiteGarage)]<- "Pas de garage"
varQualitatifs$CondGarage[is.na(varQualitatifs$CondGarage)]<- "Pas de garage"
varQualitatifs$typeplacmaçon[is.na(varQualitatifs$typeplacmaçon) ] <- "Aucun"
varQualitatifs$`Électrique `[is.na(varQualitatifs$`Électrique `)] <- "pas electricite"

##Pour verifier si nous avons remplacer tout les valeur manquantes des variables Qualitatis
sum(is.na(varQualitatifs))
colSums(is.na(varQualitatifs))
##### Pour les NA des variables Quantitatives  nous allons les remplaceer 
###soit par la moyen soit par la mediane
meanR <- mean(train$`Rue_reliés_à_la_propriété `, na.rm = TRUE)
train$`Rue_reliés_à_la_propriété `[is.na(train$`Rue_reliés_à_la_propriété `)]<- meanR
meansurf <- mean(train$surfplacmaçon, na.rm = TRUE)
train$surfplacmaçon[is.na(train$surfplacmaçon)]<- meansurf
meanG <- mean(train$anconsGarage, na.rm = TRUE)
train$anconsGarage[is.na(train$anconsGarage)]<- meanG
##Pour verifier si nous avons remplacer tout les valeur manquantes des variables Quatitatifs
sum(is.na(train))
colSums((train))
#####  Nous allons visualiser les variables Quantitatives avec notre variale cible pridevente
summary(train)
view(summary(train))
plot(train$typelogeconV,train$prixdevent)
plot(train$`Rue_reliés_à_la_propriété `,train$prixdevent)
plot(train$Tlotpiedscarres,train$prixdevent)
plot(train$matglobal,train$prixdevent)
plot(train$`Datereamenagement `,train$prixdevent)
plot(train$etatGmaison,train$prixdevent)
plot(train$`Année de construction `,train$prixdevent)
plot(train$surfplacmaçon,train$prixdevent)
plot(train$`Piedscarrésfinisdetype 1 `,train$prixdevent)
plot(train$`Piedscarrésfinisdetype 2`,train$prixdevent)
plot(train$PiedscarrésinachevésSurFsousol,train$prixdevent)
plot(train$totalSPiedscarréssousol,train$prixdevent)
plot(train$`1stpiedscarrés`,train$prixdevent)
plot(train$`2nd pieds carrés`,train$prixdevent)
plot(train$Pieds_carrés_finis_faible_qualité,train$prixdevent)
plot(train$SurHabitablesoussol,train$prixdevent)
plot(train$salbainsComplsoussol,train$prixdevent)
plot(train$DemiSalbainssoussol,train$prixdevent)
plot(train$salbainsCompldessus,train$prixdevent)
plot(train$`Demi-bain`,train$prixdevent)
plot(train$Chambre,train$prixdevent)
plot(train$Cuisine,train$prixdevent)
plot(train$nbrTotalchbr,train$prixdevent)
plot(train$nbrCheminées,train$prixdevent)
plot(train$anconsGarage,train$prixdevent)
plot(train$GarageCars,train$prixdevent)
plot(train$`Garage  pieds carrés `,train$prixdevent)
plot(train$`Surface de pont en bois en pieds carrés`,train$prixdevent)
plot(train$`Porche ouvert en pieds carrés`,train$prixdevent)
plot(train$`Porche fermée`,train$prixdevent)
plot(train$`Porche trois saisons en pieds carrés `,train$prixdevent)
plot(train$`Surface du porche de l'écran en pieds carrés`,train$prixdevent)
plot(train$`Surface de la piscine piec`,train$prixdevent)
plot(train$MiscVal,train$prixdevent)
plot(train$moisvendu,train$prixdevent)
plot(train$`Année de vente`,train$prixdevent)

#####On Note qu'ol y'as une fprte correlation de ces varriableavec le prixdevent des maisons
#Rue_reliés_à_la_propriété,Tlotpiedscarres,surfplacmaçon,Piedscarrésfinisdetype 1,Piedscarrésfinisdetype 2
#PiedscarrésinachevésSurFsousol,totalSPiedscarréssousol,1stpiedscarrés,salbainsComplsoussol,Surface de pont en bois en pieds carrés
#Porche ouvert en pieds carré
#########
shapiro.test(train$typelogeconV)
shapiro.test(train$`Rue_reliés_à_la_propriété `)
shapiro.test(train$Tlotpiedscarres)
shapiro.test(train$matglobal)
shapiro.test(train$`Datereamenagement `)
shapiro.test(train$etatGmaison)
shapiro.test(train$`Année de construction `)
shapiro.test(train$surfplacmaçon)
shapiro.test(train$`Piedscarrésfinisdetype 1 `)
shapiro.test(train$`Piedscarrésfinisdetype 2`)
shapiro.test(train$PiedscarrésinachevésSurFsousol)
shapiro.test(train$totalSPiedscarréssousol)
shapiro.test(train$`1stpiedscarrés`)
shapiro.test(train$`2nd pieds carrés`)
shapiro.test(train$Pieds_carrés_finis_faible_qualité)
shapiro.test(train$SurHabitablesoussol)
shapiro.test(train$salbainsComplsoussol)
shapiro.test(train$DemiSalbainssoussol)
shapiro.test(train$salbainsCompldessus)
shapiro.test(train$`Demi-bain`)
shapiro.test(train$Chambre)
shapiro.test(train$Cuisine)
shapiro.test(train$nbrTotalchbr)
shapiro.test(train$nbrCheminées)
shapiro.test(train$anconsGarage)
shapiro.test(train$GarageCars)
shapiro.test(train$`Garage  pieds carrés `)
shapiro.test(train$`Surface de pont en bois en pieds carrés`)
shapiro.test(train$`Porche ouvert en pieds carrés`)
shapiro.test(train$`Porche fermée`)
shapiro.test(train$`Porche trois saisons en pieds carrés `)
shapiro.test(train$`Surface du porche de l'écran en pieds carrés `)
shapiro.test(train$`Surface de la piscine piec`)
shapiro.test(train$MiscVal)
shapiro.test(train$moisvendu)
shapiro.test(train$`Année de vente`)
######
#####
######
wilcox.test(train$typelogeconV,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Rue_reliés_à_la_propriété `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$Tlotpiedscarres,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$matglobal,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Datereamenagement `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$etatGmaison,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Année de construction `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$surfplacmaçon,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Piedscarrésfinisdetype 1 `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Piedscarrésfinisdetype 2`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$PiedscarrésinachevésSurFsousol,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$totalSPiedscarréssousol,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`1stpiedscarrés`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`2nd pieds carrés`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$Pieds_carrés_finis_faible_qualité,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$SurHabitablesoussol,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$salbainsComplsoussol,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$DemiSalbainssoussol,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$salbainsCompldessus,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Demi-bain`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$Chambre,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$Cuisine,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$nbrTotalchbr,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$nbrCheminées,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$anconsGarage,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$GarageCars,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Garage  pieds carrés `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Surface de pont en bois en pieds carrés`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Porche ouvert en pieds carrés`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Porche fermée`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Porche trois saisons en pieds carrés `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Surface du porche de l'écran en pieds carrés `,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Surface de la piscine piec`,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$MiscVal,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$moisvendu,train$prixdevent)# p< 0.5  Il y’ a une différence significative
wilcox.test(train$`Année de vente`,train$prixdevent)# p< 0.5  Il y’ a une différence significative

###Pour visualiser les varriables quantitatifs
pairs(train)

#####Comme nous avons plusieur varriables Nous allons faire une ACP pour reduire les varriables Quantitatifs 
#####L ACP consiste a reduire la dimension des varriables multivarrier a deux ou trois composants principal
#### et en perdant le moins possibles D'information

######Cherchons tout d'abord s'il y a corelation entre les varriables 
cor(train)
view(cor(train))
standarvarquantitatif <- as.data.frame(scale(train))
standarvarquantitatif
####On constate qu'il y'a une forte correlations entre les varriables ces resultat confirme les forte nuage de correlation 
####observer sur la visualition
library(littice)
library(caret)
Fortecorr <- findCorrelation(standarvarquantitatif, cutoff = 1)
library(corrplot)
corrplot(standarvarquantitatif, method = "color")
#### calculons la moyen 
sapply(standarvarquantitatif,mean)
train<- sapply(train, as.numeric)
train.pca <- PCA(standarvarquantitatif)
print(train.pca)
####cherchons mettenant la varriances ,la contribution
sdVarq<-train.pca$eig
sdVarq
##nbrTotalchbr,SurHabitablesoussol,matglobal,2nd pieds carrés,totalSPiedscarréssousol,chambre,
#3salbainsCompldessus,etatGmaison,nbrCheminées,GarageCars,surfplacmaçon,Année de construction,Année de construction on une influence significative 
##sur le pridevente des maison

trainImport <-train[1:37,1:37]
trainImport <-PCA(trainImport, scale.unit =  T, ncp =  2, graph = TRUE)
fviz_pca_biplot(trainImport,repel = T)

colSums(is(train))
train<- sapply(train, as.numeric)
####information sur les varriables
head(train.pca$var$coord)
head(train.pca$var$contrib)
head(train.pca$var$cos2)
head(train.pca$ind)
head(train.pca$ind$coord)
head(train.pca$ind$contrib)
head(train.pca$ind$cos2)
head(trainImport$var$coord)

###### INTERPRETATION G Pour les varriables Quantitative
###Retenons donc que pour les varriables qualitatifs 
###nous allons prendre en compte que les varriables qui influe par
###rapport a nitre varriable cible(pridevent) pour la regression


###### Visualisation des Varriables Qualitative
library(ggplot2)
library(GGally)
ggpairs(varQualitatifs)
library(scatterPlotMatrix)
varQualitatifs<- varQualitatifs[0:50,0:42]
dotchart(table(varQualitatif$Utilitaires))
head(varQualitatifs)
summary(varQualitatifs)
tail(varQualitatifs)
mode(varQualitatifs)
dataQuali <- varQualitatifs[c(3:18),c("FormGProp","configurationLot","Nivjardin","qualitematexter","EtatqualiteChauffag","Clôture","finiInterGarage","Quartier")]
dataQuali <- dataQuali[sapply(dataQuali, class) == "numeric"]
barplot(dataQuali, aes(x=Utilitaires, y=Rue)) 
barplot(table(varQualitatifs$Utilitaires,varQualitatifs$Rue))
barplot(dataQuali)
names(varQualitatifs)
#####
train$Ruell[is.na(train$Ruell)] <- "Pas d’accès à la ruelle"
train$Hautsoussolqualite[is.na(train$Hautsoussolqualite)] <- "Pas de sous-sol"
train$etaGsoussol[is.na(train$etaGsoussol)] <- "Pas de sous-sol"
train$Nivjardin[is.na(train$Nivjardin)] <- "Pas de sous-sol"
train$SurffinisoussolQual[is.na(train$SurffinisoussolQual)]  <- "Pas de sous-sol"
train$EvalSurffinisoussor[is.na(train$EvalSurffinisoussor)] <- "Pas de sous-sol"
train$Clôture[is.na(train$Clôture)] <- "Pas De Clôture"
train$`Fonctionnalités diverses`[is.na(train$`Fonctionnalités diverses`)] <- " Aucun"
train$Pool[is.na(train$Pool)]<- "Pas De Poll"
train$qualiteCheminées[is.na(train$qualiteCheminées)] <- "Pas De Cheminée"
train$GarageType[is.na(train$GarageType)] <- "Pas de garage"
train$finiInterGarage[is.na(train$finiInterGarage)]<- "Pas de garage"
train$qualiteGarage[is.na(train$qualiteGarage)]<- "Pas de garage"
train$CondGarage[is.na(train$CondGarage)]<- "Pas de garage"
train$typeplacmaçon[is.na(train$typeplacmaçon) ] <- "Aucun"
train$`Électrique `[is.na(train$`Électrique `)] <- "pas electricite"
meana<- mean(train$`Rue_reliés_à_la_propriété `, na.rm = TRUE)
train$`Rue_reliés_à_la_propriété `[is.na(train$`Rue_reliés_à_la_propriété `)]<- meana
meansur <- mean(train$surfplacmaçon, na.rm = TRUE)
train$surfplacmaçon[is.na(train$surfplacmaçon)]<- meansur
meanGa <- mean(train$anconsGarage, na.rm = TRUE)
train$anconsGarage[is.na(train$anconsGarage)]<- meanGa

##################### La regression multiple

model <- lm(y ~ x1 + x2 + x3 + ..., data = train)


x <-train[ ,c("SurHabitablesoussol","matglobal","totalSPiedscarréssousol","salbainsCompldessus","Rue_reliés_à_la_propriété","Tlotpiedscarres","surfplacmaçon","Piedscarrésfinisdetype 1 ","Piedscarrésfinisdetype 2","PiedscarrésinachevésSurFsousol","salbainsComplsoussol")]
y <-train[ ,"prixdevent"]

gama <- lm(y ~ x)

summary(gama)

##Utilisez la fonction confint() pour obtenir l'intervalle de confiance.

confint(gama)




# Visualiser les résultats de la régression multiple
plot(x[,1], y, xlab = x , ylab = "prixdevent")
abline(gama, col = "red")

# Prédire la variable cible en utilisant les variables explicatives
predictions <- predict(gama, newdata = x)
# Calculer le coefficient de détermination (R²)
rsq <- rsquared(gama)

# Afficher le R²
print(gama)

# Vérifier si les résidus suivent une distribution normale
residuals <- residuals(gama)

# Utiliser qqnorm() pour vérifier si les résidus suivent une distribution normale
qqnorm(residuals)

# Utiliser qqline() pour ajouter une droite de référence pour une distribution normale
qqline(residuals)

# Calculer le coefficient de détermination (R²)
rsq <- rsquared(gama)

# Afficher le R²
print(rsq)

# Vérifier si les résidus suivent une distribution normale
residuals <- residuals(gama)

# Utiliser qqnorm() pour vérifier si les résidus suivent une distribution normale
qqnorm(residuals)

# Utiliser qqline() pour ajouter une droite de référence pour une distribution normale
qqline(residuals)

####Régression multiple : La régression multiple est utilisée pour modéliser la relation entre 
### plusieurs variables explicatives et une variable cible. Vous pouvez utiliser la fonction "lm()" 
##(Linear Model) de R pour effectuer une régression multiple
