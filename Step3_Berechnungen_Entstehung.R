# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen Entstehungsseite /BIP
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_B1G_vol.R
# - Step2_Bereinigung_B1G_PI.R
# - Step2_Bereinigung_BIP_Steuern_vol.R
# - Step2_Bereinigung_BIP_Steuern_PI.R


# Indirekt bereinigte nominelle Reihen --------------

b1gY <- list(L = do.call(cbind,lapply(output_b1gVol, `[`, i = ,j = "sa")),
                PI = do.call(cbind,lapply(output_b1gPi, `[`, i = ,j = "sa")))
b1gY$V <- `colnames<-`(b1gY$L * b1gY$PI[, colnames(b1gY$L)] , colnames(b1gY$L))


b1gY$Y <- lapply(names(output_b1gVol), function(x){
  b1g$Y[,x] / output_b1gVol[[x]][, "s"]
}) %>%
  `names<-`(names(output_b1gVol)) %>%
  do.call(cbind, .)

bipY <- list(L = do.call(cbind,lapply(output_bipVol, `[`, i = ,j = "sa")),
            PI = do.call(cbind,lapply(output_bipPi, `[`, i = ,j = "sa")))
bipY$V <- `colnames<-`(bipY$L * bipY$PI[, colnames(bipY$L)] , colnames(bipY$L))

bipY$V <- ts_c(bipY$V, do.call(cbind,lapply(output_bipNom, `[`, i = ,j = "sa")))

bipY$V <- ts_c(bipY$V,
               D29 = bipY$V[, "D2"] - bipY$V[, "D21"],
               D39 = bipY$V[, "D3"] - bipY$V[, "D31"])

bipY$Y <- lapply(names(output_bipVol), function(x){
  bip$Y[,x] / output_bipVol[[x]][, "s"]
}) %>%
  `names<-`(names(output_bipVol)) %>%
  do.call(cbind, .)


# Summen --------------------------------------
# Proberechnungenhaben ergeben dass B1G udn BIP deutlich besser über Summe der Wertschöpfungen ausschauen

b1gY_sum <- lapply(c("V", "Y"), function(p){
  data.frame(b1gY[[p]]) %>%
    transmute(`_T` = A + BTE + `F` + G + H + I + J + K + L + M_N + OTQ + RTU,
              GTI = G + H + I) %>%
    ts(start = start(b1gY[[p]]),
       frequency = frequency(b1gY[[p]]))
}) %>%
  `names<-`(c("V", "Y"))

b1gY_sum$L <- chainlinkDF(b1gY_sum)

bipY_sum <- lapply(c("V", "Y"), function(p){
  cbind(data.frame(bipY[[p]]),
        b1gY_sum[[p]]) %>%
    transmute(B1GQ = `_T` + D21 - D31,
              D21X31 = D21 - D31) %>%
    ts(start = start(bipY[[p]]),
       frequency = frequency(bipY[[p]]))
}) %>%
  `names<-`(c("V", "Y"))

bipY_sum$L <- chainlinkDF(bipY_sum)



