# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0102 Verwendung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_T0102_vol.R
# - Step2_Bereinigung_T0102_preise.R
# - Step2_Bereinigung_T0102_nom.R

names(T102Adj_vol) <- gsub("vcl_", "", names(T102Adj_vol))
names(T102Adj_impPI_L) <- gsub("vcl_", "", names(T102Adj_impPI_L))
names(T102Adj_nom) <- gsub("verw_", "", names(T102Adj_nom))

# Indirekt bereinigte nominelle Reihen --------------

T102Y <- list(vol = do.call(cbind,lapply(T102Adj_vol, `[`, i = ,j = "sa")),
              impPI_L = do.call(cbind,lapply(T102Adj_impPI_L, `[`, i = ,j = "sa")))
T102Y$nom <- `colnames<-`(T102Y$vol * T102Y$impPI_L[, colnames(T102Y$vol)] / 100, colnames(T102Y$vol))


T102Y$vjp <- lapply(names(T102Adj_vol), function(x){
  T102TS$vjp[,x] / T102Adj_vol[[x]][, "s"]
}) %>%
  `names<-`(names(T102Adj_vol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

T102Y_sums <- lapply(c("nom", "vjp"), function(b){
  temp <- data.table(T102Y[[b]])
  temp[, `:=`(P31 = P31_S14 + P31_S15,
              P3_S13 = P31_S13 + P32_S13,
              P3 = P31_S14 + P31_S15 + P31_S13 + P32_S13,
              P41 = P31_S14 + P31_S15 + P31_S13,
              AN113 = N1131G + N1132G + N11OG,
              BAI = AN111 + AN112 + N1131G + N1132G + N11OG + AN115 + AN117,
              P5 = AN111 + AN112 + N1131G + N1132G + N11OG + AN115 + AN117 ,
              P6 = P61 + P62,
              P7 = P71 + P72,
              B11 = P61 + P62 - (P71 + P72))] %>%
    ts(start = start(T102Y[[b]]), 
       frequency = frequency(T102Y[[b]]))
}) %>%
  `names<-`(c("nom", "vjp"))

T102Y_sums$vol <- chainlinkDF(T102Y_sums)


P52_3nom <- do.call(cbind,lapply(T102Adj_nom, `[`, i = ,j = "sa"))
na_series <- ts(NA, 
                start = start(T102Y_sums$nom),
                end = end(T102Y_sums$nom),
                frequency = frequency(T102Y_sums$nom))

T102Y_sums$nom <- ts_c(T102Y_sums$nom,
                       P52_3nom,
                       P5M =  P52_3nom[,"N13G"] + P52_3nom[,"P52"])
T102Y_sums$nom[, "P5"] <-  T102Y_sums$nom[, "BAI"] + T102Y_sums$nom[, "P5M"] 
T102Y_sums$vol[, "P5"] <- T102Y_sums$nom[, "P5"] / T102Y$impPI_L[, "P5"] * 100
T102Y_sums$vol <- ts_c(T102Y_sums$vol,
                       P52 = na_series, 
                       N13G = na_series,
                       P5M =  na_series, 
                       YA0 = na_series)


T102Y_sums$nom <- ts_c(T102Y_sums$nom, 
                       YA0 = T101Y_sums$nom[, "BIP"] - T102Y_sums$nom[, "P3"] - T102Y_sums$nom[, "P5"] - T102Y_sums$nom[, "B11"])
T102Y_sums$vjp <- ts_c(T102Y_sums$vjp, 
                       YA0 = T101Y_neu$vjp[, "BIP"] - T102Y_sums$vjp[, "P3"] - T102Y_sums$vjp[, "P5"] - T102Y_sums$vjp[, "B11"])


