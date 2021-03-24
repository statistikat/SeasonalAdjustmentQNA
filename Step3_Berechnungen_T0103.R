# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0103 Veteilung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_T0103_D11.R
# - Step2_Bereinigung_T0103_D12.R
# - Step2_Bereinigung_T0103_rest.R


# umbenennen damit es nachher wieder passt

names(T103Adj_D11) <- gsub("vert_", "", names(T103Adj_D11))
names(T103Adj_D12) <- gsub("vert_", "", names(T103Adj_D12))
names(T103Adj_rest) <- gsub("vert_", "", names(T103Adj_rest))

# Indirekt bereinigte nominelle Reihen --------------

T103Y <- list(D11 = do.call(cbind,lapply(T103Adj_D11, `[`, i = ,j = "sa")),
              D12 = do.call(cbind,lapply(T103Adj_D12, `[`, i = ,j = "sa")))
T103Y$D1 <- `colnames<-`(T103Y$D11 + T103Y$D12[, colnames(T103Y$D11)] , colnames(T103Y$D11))

# Summen --------------------------------------

T103Y_sums <- lapply(names(T103Y), function(a){
  temp <- data.table(T103Y[[a]])
  
  temp[, `:=`("_T" = A + BTE  + `F` + GTI + J + K + L + M_N + OTQ + RTU)] %>%
    ts(start = 1995, frequency = 4)
}) %>%
  `names<-`(names(T103Y))

T103Y_sums$REST <- do.call(cbind,lapply(T103Adj_rest, `[`, i = ,j = "sa")) %>%
  ts_c(D2X3 = .[, "D2"] - .[, "D3"],
       B2A3G = T101Y_sums$nom[, "BIP"] - .[, "D2"] + .[, "D3"] - T103Y_sums$D1[, "_T"],
       YA2 = ts(0, start = start(.), end = end(.), frequency = frequency(.)))
