# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung BIP/Steuern Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# bip muss geladen sein 

# Tramo Seat Entstehung ---------------------------
bipPi <- perHts(
  ## bipQ = BIP  -------------------------------------
  B1GQ = perTramo(bip$PI[, "B1GQ"] , template = "RSA3",
                  # Transformation
                  transform.function = "Log",
                  # Outliers
                  outlier.enabled = FALSE,
                  usrdef.outliersEnabled = TRUE,
                  usrdef.outliersType = c("AO", "LS",
                                          "LS"),
                  usrdef.outliersDate = c("1999-10-01", "2022-07-01",
                                          "2023-01-01"),
                  # Trading Days
                  usrdef.varEnabled = FALSE,
                  # usrdef.var = NA, usrdef.varType = "Calendar",
                  # tradingdays.option = "UserDefined",
                  # Easter
                  easter.type = NULL, easter.duration = 6,
                  # Arima-Model
                  automdl.enabled = FALSE,
                  arima.p  = 0, arima.d  = 1, arima.q  = 1,
                  arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  ## D21 - Gütersteuern -------------------------------------
  D21 = perTramo(bip$PI[, "D21"] , template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("LS", "LS",
                                         "LS", "LS",
                                         "LS", "LS"),
                 usrdef.outliersDate = c("1997-01-01", "2011-01-01",
                                         "2022-01-01", "2022-04-01",
                                         "2022-07-01", "2022-10-01"),
                 # Trading Days
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = "NA", easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 0,
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## D31 - Gütersubventionen -------------------------------------
  # not seasonal
  D31 = perTramo(bip$PI[, "D31"], template = "RSA3", 
                 # Transformation 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = FALSE, 
                 usrdef.outliersType = NA,
                 usrdef.outliersDate = NA,
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 # easter.type = NULL, easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                 arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE)
)

# RUN ----------

bipPi$run()

output_bipPi <- lapply(bipPi$components, function(x){
  x$output$final$series
})

