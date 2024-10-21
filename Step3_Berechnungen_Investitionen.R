# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen Investitionen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_invest_vol.R
# - Step2_Bereinigung_invest_PI.R


# Indirekt bereinigte nominelle Reihen --------------

investY <- list(L = do.call(cbind,lapply(output_investVol, `[`, i = ,j = "sa")),
                PI = do.call(cbind,lapply(output_investPi, `[`, i = ,j = "sa")))
investY$V <- `colnames<-`(investY$L * investY$PI[, colnames(investY$L)], colnames(investY$L))


investY$V <- ts_c(investY$V, do.call(cbind,lapply(output_investNom, `[`, i = ,j = "sa")))


investY$Y <- lapply(names(output_investVol), function(x){
  invest$Y[,x] / output_investVol[[x]][, "s"]
}) %>%
  `names<-`(names(output_investVol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------

investY_sums <- lapply(c("V", "Y"), function(b){
  data.frame(investY[[b]]) %>%
    transmute(N11MG = N1131G + N1132G + N11OG,
           N11G = N111G + N112G + N1131G + N1132G + N11OG + N115G + N117G) %>%
    ts(start = start(investY[[b]]), 
       frequency = frequency(investY[[b]]))
}) %>%
  `names<-`(c("V", "Y"))

investY_sums$L <- chainlinkDF(investY_sums)


