# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen Konsum
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_Konsum_vol.R
# - Step2_Bereinigung_Konsum_PI.R


# Indirekt bereinigte nominelle Reihen --------------

konsumY <- list(L = do.call(cbind,lapply(output_konsumVol, `[`, i = ,j = "sa")),
                PI = do.call(cbind,lapply(output_konsumPi, `[`, i = ,j = "sa")))
konsumY$V <- `colnames<-`(konsumY$L * konsumY$PI[, colnames(konsumY$L)] , colnames(konsumY$L))


konsumY$Y <- lapply(names(output_konsumVol), function(x){
  konsum$Y[,x] / output_konsumVol[[x]][, "s"]
}) %>%
  `names<-`(names(output_konsumVol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

konsumY_sums <- lapply(c("V", "Y"), function(b){
  temp <- data.frame(konsumY[[b]]) %>%
    transmute(S1M_P31_W0 = S14_P31_W0 + S15_P31_W0,
              S13_P3_W0 = S13_P31_W0 + S13_P32_W0,
              S1_P3_W0 = S14_P31_W0 + S15_P31_W0 + S13_P31_W0 + S13_P32_W0,
              S1L_P41_W0 = S14_P31_W0 + S15_P31_W0 + S13_P31_W0,
              S14_P31_W1 = S14_P31_W0 - S14_P311_W2 - S14_P312_W2 - S14_P313_W2 - S14_P314_W2,
              S14_P31_W2 = S14_P311_W2 + S14_P312_W2 + S14_P313_W2 + S14_P314_W2,
              S14_P31K_W2 = S14_P312_W2 + S14_P313_W2 + S14_P314_W2) %>%
    ts(start = start(konsumY[[b]]), 
       frequency = frequency(konsumY[[b]]))
}) %>%
  `names<-`(c("V", "Y"))

konsumY_sums$L <- chainlinkDF(konsumY_sums)



