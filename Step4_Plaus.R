# ~~~~~~~~~~~
# Plausibilisierung Saisonbereinigung
# ~~~~~~~~~~~

# Beispiele anhand der Entstehungsseite:
ent_vol

# 1 Plots -----
# Einzelne reihen
ent_vol$components$ent_A$plot()

# ganze Tabelle
lapply(names(ent_vol$components), function(x){
  ent_vol$components[[x]]$plot(main = paste("Original, SA and Trend Series", x, "VOL"))
})


# 2 Modeloutput

ent_vol$components$ent_A$output$regarima

lapply(ent_vol$components, function(x){
  x$output$regarima
})


# Wachstumsraten zum VQ
growthRate(T101Y$vol, ref_lag = 1)

# check ob Summen ohne Saisonomponente sind -  seasonality sollte none sein

T101Y_sums$vol[, c("BIP", "GVA", "D21X31")]
lapply(c("BIP", "GVA", "D21X31"), function(x){
  tramo_temp <- perTramo(T101Y_sums$vol[,x])
  tramo_temp$run()
  tramo_temp
}) %>% `names<-`(c("BIP", "GVA", "D21X31"))
