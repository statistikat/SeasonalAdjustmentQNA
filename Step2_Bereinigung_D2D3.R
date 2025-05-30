# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung nominelle Aggregate
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# bip muss geladen sein 

# Tramo Seat Entstehung ---------------------------
bipNom <- perHts(
  ## D2 - Steuern -------------------------------------
  D2 = perTramo(bip$V[, "D2"] , template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("LS", "AO"),
                 usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
                 # Trading Days
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = "NA", easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 0, arima.q  = 3,
                 arima.bp = 0, arima.bd = 1, arima.bq = , arima.mu = TRUE),
  ## D3 - Gütersubventionen -------------------------------------
  D3 = perTramo(bip$V[, "D3"], template = "RSA3", 
                 # Transformation 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO", "LS",
                                         "AO", "TC",
                                         "LS"),
                 usrdef.outliersDate = c("2016-04-01", "2020-04-01",
                                         "2020-07-01", "2021-07-01",
                                         "2022-04-01"),
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 # easter.type = NULL, easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                 arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

bipNom$run()

output_bipNom <- lapply(bipNom$components, function(x){
  x$output$final$series
})

