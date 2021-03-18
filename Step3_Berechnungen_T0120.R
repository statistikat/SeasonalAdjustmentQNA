# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0120 Exporte
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

T120Adj_Vol <- `names<-`(T120Adj_Vol, toupper(names(T120Adj_Vol)))
T120Adj_impPI_L <- `names<-`(T120Adj_impPI_L, toupper(names(T120Adj_impPI_L)))
names(T120Adj_Vol) <- gsub("6", "6_", names(T120Adj_Vol))
names(T120Adj_impPI_L) <- gsub("6", "6_", names(T120Adj_impPI_L))

# Indirekt bereinigte nominelle Reihen --------------

T120Y <- list(vol = do.call(cbind,lapply(T120Adj_Vol, `[`, i = ,j = "sa")),
              impPI_L = do.call(cbind,lapply(T120Adj_impPI_L, `[`, i = ,j = "sa")))
T120Y$nom <- `colnames<-`(T120Y$vol*T120Y$impPI_L[, colnames(T120Y$vol)] / 100, colnames(T120Y$vol))

T120Y$vjp <- lapply(names(T120Adj_Vol), function(x){
  T120TS$vjp[,x]/T120Adj_Vol[[x]][, "s"]
}) %>%
  `names<-`(names(T120Adj_Vol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

T120Y_B0 <- lapply(c("nom", "vjp"), function(b){
  T120Y[[b]][, "P6_U2"] + T120Y[[b]][, "P6_U3"]
}) %>%
  `names<-`(c("nom", "vjp"))



T120Y_B0$vol <- chainlinkAO(T120Y_B0$nom, T120Y_B0$vjp, ref_year = 2015)

T120Y_sums <- lapply(c("nom", "vol"), function(b){
  ts_c(T120Y[[b]], P6_B0 = T120Y_B0[[b]])
}) %>%
  `names<-`(c("nom", "vol"))