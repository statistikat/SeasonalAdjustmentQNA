# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen Außenhandel
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_ah_vol.R
# - Step2_Bereinigung_ah_PI.R


# Indirekt bereinigte nominelle Reihen --------------

ahY <- list(L = do.call(cbind,lapply(output_ahVol, `[`, i = ,j = "sa")),
            PI = do.call(cbind,lapply(output_ahPi, `[`, i = ,j = "sa")))
ahY$V <- `colnames<-`(ahY$L * ahY$PI[, colnames(ahY$L)], colnames(ahY$L))


ahY$Y <- lapply(names(output_ahVol), function(x){
  ah$Y[,x] / output_ahVol[[x]][, "s"]
}) %>%
  `names<-`(names(output_ahVol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

ahY_sums <- lapply(c("V", "Y"), function(b){
  data.frame(ahY[[b]]) %>%
    transmute(P6_W1 = P61_W1 + P62_W1,
              P7_W1 = P71_W1 + P72_W1,
              B11_W1 = (P71_W1 + P72_W1) - (P61_W1 + P62_W1),
              P6_B6 = P6_I9 + P6_K11,
              P7_B6 = P7_I9 + P7_K11) %>%
    ts(start = start(ahY[[b]]), 
       frequency = frequency(ahY[[b]]))
}) %>%
  `names<-`(c("V", "Y"))

ahY_sums$L <- chainlinkDF(ahY_sums)


