# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung BIP/Steuern Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# bip muss geladen sein 

# Tramo Seat Entstehung ---------------------------
bipVol <- perHts(
  ## bipQ = BIP  -------------------------------------
  B1GQ = perTramo(bip$L[, "B1GQ"] , template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "AO",
                                           "AO", "LS",
                                           "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                           "2021-01-01", "2021-07-01",
                                           "2022-04-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## D21 - Gütersteuern -------------------------------------
  D21 = perTramo(bip$L[, "D21"] , template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "AO",
                                       "LS", "AO",
                                       "LS"),
               usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                       "2021-04-01", "2022-01-01",
                                       "2022-07-01"),
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = "NA", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 1, arima.d  = 1, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## D31 - Gütersubventionen -------------------------------------
  D31 = perTramo(bip$L[, "D31"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "AO",
                                       "LS", "LS"),
               usrdef.outliersDate = c("2002-04-01", "2005-01-01",
                                       "2022-01-01", "2024-01-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 0, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

bipVol$run()

output_bipVol <- lapply(bipVol$components, function(x){
  x$output$final$series
})

