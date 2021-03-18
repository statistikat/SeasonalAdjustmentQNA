# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0121 Importe
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

T121Adj_Vol <- `names<-`(T121Adj_Vol, toupper(names(T121Adj_Vol)))
T121Adj_impPI_L <- `names<-`(T121Adj_impPI_L, toupper(names(T121Adj_impPI_L)))
names(T121Adj_Vol) <- gsub("7", "7_", names(T121Adj_Vol))
names(T121Adj_impPI_L) <- gsub("7", "7_", names(T121Adj_impPI_L))

# Indirekt bereinigte nominelle Reihen --------------

T121Y <- list(vol = do.call(cbind,lapply(T121Adj_Vol, `[`, i = ,j = "sa")),
              impPI_L = do.call(cbind,lapply(T121Adj_impPI_L, `[`, i = ,j = "sa")))
T121Y$nom <- `colnames<-`(T121Y$vol*T121Y$impPI_L[, colnames(T121Y$vol)] / 100, colnames(T121Y$vol))



T121Y$vjp <- lapply(names(T121Adj_Vol), function(x){
  # print(x)
  T121TS$vjp[,x]/T121Adj_Vol[[x]][, "s"]
}) %>%
  `names<-`(names(T121Adj_Vol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

T121Y_B0 <- lapply(c("nom", "vjp"), function(b){
  T121Y[[b]][, "P7_U2"] + T121Y[[b]][, "P7_U3"]
}) %>%
  `names<-`(c("nom", "vjp"))



T121Y_B0$vol <- chainlinkAO(T121Y_B0$nom, T121Y_B0$vjp, ref_year = 2015)

T121Y_sums <- lapply(c("nom", "vol"), function(b){
  ts_c(T121Y[[b]], P7_B0 = T121Y_B0[[b]])
}) %>%
  `names<-`(c("nom", "vol"))
