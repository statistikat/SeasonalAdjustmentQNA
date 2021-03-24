# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0117 Konsum
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_T0117_vol.R
# - Step2_Bereinigung_T0117_preise.R


T117Adj_Vol <- `names<-`(T117Adj_Vol, toupper(names(T117Adj_Vol)))
T117Adj_impPI_L <- `names<-`(T117Adj_impPI_L, toupper(names(T117Adj_impPI_L)))

# Indirekt bereinigte nominelle Reihen --------------

T117Y <- list(vol = do.call(cbind,lapply(T117Adj_Vol, `[`, i = ,j = "sa")),
              impPI_L = do.call(cbind,lapply(T117Adj_impPI_L, `[`, i = ,j = "sa")))
T117Y$nom <- `colnames<-`(T117Y$vol[, colnames(T117Y$impPI_L)]*T117Y$impPI_L / 100, colnames(T117Y$impPI_L))


T117Y$vjp <- lapply(names(T117Adj_Vol), function(x){
  T117TS$vjp[,x]/T117Adj_Vol[[x]][, "s"]
}) %>%
  `names<-`(names(T117Adj_Vol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

T117Y_add <- lapply(c("nom", "vjp"), function(b){
  cbind(P31K = T117Y[[b]][, "P312"] + T117Y[[b]][, "P313"] + T117Y[[b]][, "P314"],
        P31_S14DC= T117Y[[b]][, "P311"] + T117Y[[b]][, "P312"] + T117Y[[b]][, "P313"] + T117Y[[b]][, "P314"])
}) %>%
  `names<-`(c("nom", "vjp"))



T117Y_add$vol <- chainlinkDF(T117Y_add)

T117Y_sums <- lapply(c("nom", "vol"), function(b){
  ts_c(P31_S14DC = T117Y_add[[b]][, "P31_S14DC"], 
       T117Y[[b]], 
       P31K = T117Y_add[[b]][, "P31K"])
}) %>%
  `names<-`(c("nom", "vol"))