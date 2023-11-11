# predicte_house_price
typelogeconV : Identifie le type de logement concerné par la vente.
20 1 ÉTAGE 1946 ET PLUS RÉCENT TOUS LES STYLES
30 1 ÉTAGE 1945 ET PLUS
40 1 ÉTAGE AVEC GRENIER FINI TOUS ÂGES
45 1-1/2 ÉTAGE - INACHEVÉ TOUS ÂGES
50 1-1/2 ÉTAGE TERMINÉ TOUS ÂGES
60 2 ÉTAGES 1946 ET PLUS RÉCENT
70 1945 ET PLUS ANCIEN DE 2 ÉTAGES
75 2-1/2 HISTOIRE TOUS ÂGES
80 FRACTIONNER OU MULTINIVEAU
85 FOYER PARTAGÉ
90 DUPLEX - TOUS LES STYLES ET TOUS LES ÂGES
120 PUD 1 ÉTAGE (Développement d'unité planifié) - 1946 & PLUS RÉCENT
150 1-1/2 ÉTAGE PUD - TOUS ÂGES
160 PUD DE 2 ÉTAGES - 1946 ET PLUS RÉCENT
180 PUD - MULTINIVEAU - INCL SPLIT LEV/FOYER
190 2 CONVERSION FAMILIALE - TOUS LES STYLES ET TOUS LES ÂGES
clasGzonV : Identifie la classification générale de zonage de la vente.
A Agriculture
C Commercial
FV Village flottant résidentiel
I Industriel
RH Haute Densité Résidentielle
RL Basse Densité Résidentielle
RP Parc résidentiel à faible densité
MR Densité moyenne résidentielle
Rue_reliés_à_la_propriété : Pieds linéaires de rue reliés à la propriété
Tlotpiedscarres : Taille du lot en pieds carrés
Rue : Type d'accès routier à la propriété
Grvl Gravier
PavagePavé
Allée : Type d'accès à la propriété
Grvl Gravier
PavagePavé
NA Pas d'accès par ruelle
FormGProp : forme générale de la propriété
Règl Régulier
IR1 Légèrement irrégulier
IR2 Modérément irrégulier
IR3 Irrégulier
PlanéitéProp: Planéité de la propriété
Lvl Proche du plat/niveau
Banque Banqué - Montée rapide et significative du niveau de la rue au bâtiment
HLS Coteau - Pente importante d'un côté à l'autre
Faible Dépression
Utilitaires : Type d'utilitaires disponibles
ToutPub Tous les services publics (E, G, W,& S)
Pas d'égout Électricité, gaz et eau (fosse septique)
NoSeWa Électricité et gaz seulement
ELO Électricité uniquement
configurationLot : configuration de lot
À L'Intérieur Lot interne
Coin Terrain de coin
CulDSac Cul-de-sac
FR2 Frontage sur 2 côtés de la propriété
FR3 Frontage sur 3 côtés de la propriété
penteProp : Pente de la propriété
Gtl Pente douce
Humeur Pente modérée
Sev Pente Sévère
Quartier : Emplacements physiques dans les limites de la ville de Ames
Blmngtn Bloomington Heights
Blueste Bluestem
BrDaleBriardale
BrkSide Brookside
EffacerCr Ruisseau Clear
CollgCr ruisseau College
Crawfor Crawford
Edwards
Gilbert
IDOTRE Iowa DOT et Rail Road
PréV Village de Meadow
Mitchel Mitchell
Noms North Ames
NoRidge Northridge
NPkVill Villa Northpark
NridgHt Northridge Heights
NWAmes Ames du Nord-Ouest
Vieille Ville Vieille Ville
SUISSE Sud et Ouest de l'Iowa State University
Sawyer Sawyer
SawyerW Sawyer Ouest
Somerst Somerset
Barre de pierre Stone Brook
Bois Timberland
Veenker
Condition1 : Proximité de diverses conditions
Artère Adjacent à la rue artérielle
Alimentation Adjacent à la rue feeder
Norme Normal
RRNn À moins de 200' du chemin de fer Nord-Sud
RRAn Adjacent au chemin de fer Nord-Sud
PosN Fonctionnalité hors site quasi positive : parc, ceinture verte, etc.
PosA Adjacent à la fonctionnalité hors site positive
RRNe À moins de 200' du chemin de fer Est-Ouest
RRAe Adjacent au chemin de fer Est-Ouest
Condition2 : Proximité de diverses conditions (si plus d'une est présente)
Artère Adjacent à la rue artérielle
Alimentation Adjacent à la rue feeder
Norme Normal
RRNn À moins de 200' du chemin de fer Nord-Sud
RRAn Adjacent au chemin de fer Nord-Sud
PosN Fonctionnalité hors site quasi positive : parc, ceinture verte, etc.
PosA Adjacent à la fonctionnalité hors site positive
RRNe À moins de 200' du chemin de fer Est-Ouest
RRAe Adjacent au chemin de fer Est-Ouest
typelogement : Type de logement
1Fam Famille simple Détachée
2 FmCon Conversion en deux familles ; construit à l'origine comme un logement 
unifamilial
DuplexDuplex
TwnhsE Unité D'Extrémité De Maison De Ville
TnhsI Unité de l'intérieur de la maison de ville
styledelogement : Style de logement
1étage Une histoire
1,5 Ailette Un étage et demi : 2e étage terminé
1,5 Fnu Un étage et demi : 2e étage inachevé
2Story Deux étages
2,5 Ailettes Deux étages et demi : 2e étage terminé
2,5 Unf Deux étages et demi : 2e étage inachevé
SFoyerFoyer fractionné
SLvl Fractionner le niveau
matglobal : évalue le matériau global et la finition de la maison
10 Très Excellent
9 Excellent
8 Très Bien
7 Bien
6 Supérieur À La Moyenne
5 Moyenne
4 Inférieur À La Moyenne
3 Équitable
2 Pauvre
1 Très pauvre
etatGmaison: évalue l'état général de la maison
10 Très Excellent
9 Excellent
8 Très Bien
7 Bien
6 Supérieur À La Moyenne
5 Moyenne
4 Inférieur À La Moyenne
3 Équitable
2 Pauvre
1 Très pauvre
Année de construction : Date de construction initiale
Datereamenagement : date de réaménagement (identique à la date de construction en l'absence 
de réaménagement ou d'ajouts)
typetoit: Type de toit
Plat Plat
Pignon
Gambrel Gabrel (Grange)
Hanche
Mansard Mansard
Abri Abri
materiauduToit : Matériau du toit
MosaïqueCly Argile ou tuile
CompShg Bardeau standard (composite)
Membran Membrane
Métal Métal
Rouleau Rouleau
Tar&Grv Gravier et goudron
WdShake Bois Tremblé
WdShngl Bardeaux De Bois
RevêtementExtérieur1st : Revêtement extérieur sur la maison
AsbShng Zona Amiante
AsphShn Bardeaux D'Asphalte
BrkComm Brick Common
BrkFace Face De Brique
CBlock Bloc De Cendres
CimentBd Panneau De Ciment
Carte Hd Tableau Dur
ImStucStuc D'Imitation
MétalSd Bardage Métallique
Autres Autres
Contreplaqué Contreplaqué
Prémoulé
Pierres Pierres
Stuc Stuc
VinylSd Revêtement En Vinyle
Wd Sdng Revêtement En Bois
WdShing Bardeaux De Bois
Revêtementextérieur 2nd : Revêtement extérieur sur la maison (si plus d'un matériau)
AsbShng Zona Amiante
AsphShn Bardeaux D'Asphalte
BrkComm Brick Common
BrkFace Face De Brique
CBlock Bloc De Cendres
CimentBd Panneau De Ciment
Carte Hd Tableau Dur
ImStucStuc D'Imitation
MétalSd Bardage Métallique
Autres Autres
Contreplaqué Contreplaqué
Prémoulé Prémoulé
Pierres Pierres
Stuc Stuc
VinylSd Revêtement En Vinyle
Wd Sdng Revêtement En Bois
WdShing Bardeaux De Bois
typeplacmaçon : Type de placage de maçonnerie
BrkCmn Brick Common
BrkFace Face De Brique
CBlock Bloc De Cendres
Aucun Aucun
Pierres Pierres
surfplacmaçon: Surface de placage de maçonnerie en pieds carrés
qualitematexter: Évalue la qualité du matériau à l'extérieur
Ex Excellent
Dieu Bien
TA Moyenne/standard
Fa Équitable
Po Pauvre
etatmatexter : évalue l'état actuel du matériau à l'extérieur
Ex Excellent
Dieu Bien
TA Moyenne/standard
Fa Équitable
Po Pauvre
Fondation : Type de fondation
BrkTil Briques et tuiles
CBlock Bloc De Cendres
PConc Béton Versé
Dalle Dalle
Pierres Pierres
Bois Bois
Hautsoussolqualite : évalue la hauteur du sous-sol
Ex Excellent (plus de 100 pouces)
Dieu Bon (90-99 pouces)
TA Standard (80-89 pouces)
Fa Équitable (70-79 pouces)
Po Faible (<70 pouces
NA Pas de sous-sol
etaGsoussol: évalue l'état général du sous-sol
Ex Excellent
Dieu Bien
TA Typique - légère humidité autorisée
Fa Assez - humidité ou fissuration ou tassement
Po Faible - Fissuration, tassement ou humidité importants
NA Pas de sous-sol
Nivjardin : Fait référence aux murs de débrayage ou de niveau jardin
Dieu Bonne Exposition
Av Exposition moyenne (niveaux partagés ou foyers ayant généralement un score moyen 
ou supérieur)
Mn Exposition minimale
Non Pas d'exposition
NA Pas de sous-sol
SurffinisoussolQual: Évaluation de la surface finie du sous-sol
GLQ De Bons Logements
QAL Logements moyens
BLQ Logements Inférieurs À La Moyenne
Rec Salle De Rec Moyenne
LwQ Qualité médiocre
Unf Inachevé
NA Pas de sous-sol
Piedscarrésfinisdetype 1 : Pieds carrés finis de type 1
EvalSurffinisoussor: Évaluation de la surface finie du sous-sol (si plusieurs types)
GLQ De Bons Logements
QAL Logements moyens
BLQ Logements Inférieurs À La Moyenne
Rec Salle De Rec Moyenne
LwQ Qualité médiocre
Unf Inachevé
NA Pas de sous-sol
Piedscarrésfinisdetype 2: Pieds carrés finis de type 2
PiedscarrésinachevésSurFsousol : Pieds carrés inachevés de la surface du sous-sol
totalSPiedscarréssousol: Pieds carrés totaux de la surface du sous-sol
Chauffage : Type de chauffage
Plancher Four À Plancher
GazA Four à air chaud forcé au gaz
GazW Eau chaude gazeuse ou chaleur vapeur
Grav Four à gravité
OthW Eau chaude ou vapeur chauffante autre que le gaz
Mur Four mural
EtatqualiteChauffage : Qualité et état du chauffage
Ex Excellent
Dieu Bien
TA Moyenne/standard
Fa Équitable
Po Pauvre
climcentral: Climatisation centrale
N Non
Y Oui
Électrique : Système électrique
SBrkr Disjoncteurs standard et Romex
FusibleA Boîte à fusibles de plus de 60 AMP et tous les câblages Romex (Moyenne)
FusibleBoîte à fusibles de 60 A et principalement câblage Romex (Fair)
FusibleP Boîte à fusible de 60 A et câblage de bouton et de tube principalement 
(mauvais)
Mélanger Mixte
1stpiedscarrés: 1er étage pieds carrés
2nd pieds carrés : Pieds carrés au deuxième étage
Pieds_carrés_finis_faible_qualité: Pieds carrés finis de faible qualité (tous les étages)
SurHabitablesoussol: Surface habitable au-dessus du sol (surface habitable) en pieds carrés
salbainsComplsoussol: Salles de bains complètes au sous-sol
DemiSalbainssoussol: Sous-sol demi salles de bains
salbainsCompldessus: Salles de bain complètes au-dessus de la catégorie
Demi-bain : Demi-bains au-dessus du niveau
Chambre : Chambres au-dessus du niveau du sol (ne comprend PAS les chambres au soussol)
Cuisine : Cuisines au-dessus du niveau
Qualite cuisine: Qualité de cuisine
Ex Excellent
Dieu Bien
TA Standard/Moyenne
Fa Équitable
Po Pauvre
nbrTotalchbr: Nombre total de chambres audessus de la catégorie (ne comprend pas les salles de bains)
Fonctionnel : Fonctionnalité de la maison (Supposons typique sauf si des dédu
ctions sont justifiées)
Tapez Fonctionnalité standard
Min1 Déductions mineures 1
Min2 Déductions mineures 2
Humeur Déductions modérées
Maj1 Principales déductions 1
Maj2 Principales déductions 2
Sev Gravement Endommagé
Sal Récupération uniquement
nbrCheminées : Nombre de cheminées
qualiteCheminées : Qualité de cheminée
Ex Excellent - Cheminée en maçonnerie exceptionnelle
Dieu Bon - Cheminée en maçonnerie au niveau principal
TA Moyenne - Cheminée préfabriquée dans le salon principal ou Cheminée en
maçonnerie au sous-sol
Fa Fair - Cheminée préfabriquée en sous-sol
Po Pauvres - Ben Franklin Poêle
NA Pas De Cheminée
GarageType : Emplacement du garage
2Types Plus d'un type de garage
Attaché Attaché à la maison
Sous-Sol Garage En Sous-Sol
Intégré Intégré (partie garage de la maison - généralement a la pièce audessus du garage)
Port voiture Port Voiture
Detchd Détaché de la maison
NA Pas de garage
anconsGarage: Année de construction du garage
finiInterGarage : finition intérieure du garage
Nageoire Terminé
RFn Fini grossier
Unf Inachevé
NA Pas de garage
GarageCars : Taille du garage en capacité de voiture
Garage pieds carrés : Taille du garage en pieds carrés
qualiteGarage : Garage de qualité
Ex Excellent
Dieu Bien
TA Standard/Moyenne
Fa Équitable
Po Pauvre
NA Pas de garage
CondGarage : Garage condition
Ex Excellent
Dieu Bien
TA Standard/Moyenne
Fa Équitable
Po Pauvre
NA Pas de garage
allépavée: allée pavée
Y Pavé
P Chaussée Partielle
N Saleté/gravier
Surface de pont en bois en pieds carrés : Surface de pont en bois en pieds car
és
Porche ouvert en pieds carrés: Porche ouvert en pieds carrés
Porche fermée : Porche fermée en pieds carrés
Porche trois saisons en pieds carrés : Porche trois saisons en pieds carrés
Surface du porche de l'écran en pieds carrés : Surface du porche de l'écran en
pieds carrés
Surface de la piscine piec : Surface de la piscine en pieds carrés
Pool : Qualité du pool
Ex Excellent
Dieu Bien
TA Moyenne/standard
Fa Équitable
NA Pas de pool
Clôture : Qualité de la clôture
GdPrv Bonne Intimité
MnPrv Confidentialité minimale
GdWo Bon Bois
MnWw Bois/Fil minimum
NA Pas de clôture
Fonctionnalités diverses : Fonctionnalités diverses non couvertes dans d'autre
s catégories
Elev Ascenseur
Gar2 2ème Garage (si non décrit dans la section garage)
Autre Autres
Abri Hangar (plus de 100 SF)
DixC Court De Tennis
NA Aucun
MiscVal : $Value de la fonction Divers
moisvendu : Mois vendu (MM)
Année de vente : Année de vente (AAAA)
typeVente : Type de vente
WD Acte de garantie - conventionnel
MDC Acte de garantie - Espèces
VWD Acte de garantie - Prêt VA
Nouveau Maison juste construite et vendue
CABILLAUD Acte/Succession d'agent de justice
Arnaque Contrat 15% Acompte conditions régulières
Contrepartie Contrat Faible Acompte et faible intérêt
ConLI Contrat à faible taux d'intérêt
ConLD Contrat bas
Oth Autres
conditionvent : Condition de vente
Normal Vente Normale
Anormal Vente anormale - commerce, forclusion, vente à découvert
AdjLand Achat De Terrain Adjacent
Alloca Allocation - deux propriétés liées avec des actes distincts, généralemen
t condo avec une unité de garage
Famille Vente entre membres de la famille
Partiel La maison n'était pas terminée lors de la dernière évaluation (associée
aux maisons neuves)