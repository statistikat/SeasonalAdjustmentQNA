# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Konsum Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# konsum muss geladen sein 

# Tramo Seat Konsum ---------------------------
konsumPi <- perHts(
  ## S13_P31_W0 Individualkonsum Staat -------------------------------------
  S13_P31_W0 = perTramo(konsum$PI[, "S13_P31_W0"] , template = "RSA3",
                     # Transformation
                     transform.function = "Log",
                     # Outliers
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE,
                     usrdef.outliersType = c("TC", "AO", 
                                             "TC", "AO", 
                                             "AO"),
                     usrdef.outliersDate = c("1999-01-01", "1999-10-01", 
                                             "2000-01-01", "2000-10-01", 
                                             "2001-04-01"),
                     # Trading Days
                     usrdef.varEnabled = FALSE,
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter
                     easter.type = NULL, easter.duration = 6,
                     # Arima-Model
                     automdl.enabled = TRUE,
                     arima.p  = 0, arima.d  = 1, arima.q  = 1,
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S13_P32_W0 Kollektivkonsum Staat -------------------------------------
  S13_P32_W0 = perTramo(konsum$PI[, "S13_P32_W0"] , template = "RSA3",
                     # Transformation
                     transform.function = "Log",
                     # Outliers
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE,
                     usrdef.outliersType = c("LS", "AO", 
                                             "AO", "AO", 
                                             "AO", "LS"),
                     usrdef.outliersDate = c("1999-01-01","1999-10-01", 
                                             "2000-10-01", "2001-01-01", 
                                             "2002-01-01", "2004-10-01"),
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
  ## S14_P31_W0 Privater Konsum HH (Inländer:innen) -------------------------------------
  S14_P31_W0 = perTramo(konsum$PI[, "S14_P31_W0"], template = "RSA3", 
                     # Transformation
                     transform.function = "Log",
                     # Outliers
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE,
                     usrdef.outliersType = c("LS", "AO", 
                                             "AO", "AO", 
                                             "LS", "AO"),
                     usrdef.outliersDate = c("2022-01-01", "2022-04-01", 
                                             "2022-07-01", "2022-10-01", 
                                             "2023-01-01", "2024-10-01"),
                     # Trading Days
                     usrdef.varEnabled = FALSE,
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter
                     easter.type = NULL, easter.duration = 6,
                     # Arima-Model
                     automdl.enabled = FALSE,
                     arima.p  = 0, arima.d  = 1, arima.q  = 0,
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P311_W2 Privater Konsum HH (Inland) Dauerhafte Waren -------------------------------------
  S14_P311_W2 = perTramo(konsum$PI[, "S14_P311_W2"], template = "RSA3", 
                      # Transformation
                      transform.function = "Log",
                      # Outliers
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c("LS", "TC", 
                                              "AO","LS", 
                                              "AO", "AO", 
                                              "AO", "LS"),
                      usrdef.outliersDate = c("1999-01-01", "2007-01-01", 
                                              "2007-10-01", "2022-01-01", 
                                              "2022-04-01", "2022-07-01", 
                                              "2022-10-01", "2023-01-01"),
                      # Trading Days
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter
                      easter.type = NULL, easter.duration = 6,
                      # Arima-Model
                      automdl.enabled = FALSE,
                      arima.p  = 0, arima.d  = 1, arima.q  = 0,
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P312_W2 Privater Konsum HH (Inland) Semidauerhafte Waren -------------------------------------
  S14_P312_W2 = perTramo(konsum$PI[, "S14_P312_W2"], template = "RSA3", 
                      # Transformation
                      transform.function = "Log",
                      # Outliers
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c("TC", "AO", 
                                              "LS"),
                      usrdef.outliersDate = c("2006-07-01", "2020-04-01", 
                                              "2022-10-01"),
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model
                      automdl.enabled = FALSE,
                      arima.p  = 2, arima.d  = 0, arima.q  = 0,
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  ## S14_P313_W2 Privater Konsum HH (Inland) Nicht-Dauerhafte Waren -------------------------------------
  # Warning ok da Residuen white noise
  S14_P313_W2 = perTramo(konsum$PI[, "S14_P313_W2"], template = "RSA3", 
                      # Transformation
                      transform.function = "Log",
                      # Outliers
                      outlier.enabled = TRUE,
                      usrdef.outliersEnabled = FALSE,
                      usrdef.outliersType = c( "LS", "LS"),
                      usrdef.outliersDate = c( "2022-01-01", "2025-01-01"),
                      # Trading Days
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter
                      easter.type = NULL, easter.duration = 6,
                      # Arima-Model
                      automdl.enabled = TRUE,
                      arima.p  = 0, arima.d  = 1, arima.q  = 1,
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P314_W2  Privater Konsum HH (Inland) Dienstleistungen -------------------------------------
  S14_P314_W2 = perTramo(konsum$PI[, "S14_P314_W2"], template = "RSA3", 
                      ## Transformation
                      transform.function = "Log",
                      # Outliers
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c( "AO", "LS", 
                                               "LS"),
                      usrdef.outliersDate = c( "2000-10-01", "2022-01-01", 
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
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S15_P31_W0 Privater Konsum NPO -------------------------------------
  S15_P31_W0 = perTramo(konsum$PI[, "S15_P31_W0"], template = "RSA3", 
                     # Transformation
                     transform.function = "Log",
                     # Outliers
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE,
                     usrdef.outliersType = c( "TC", "LS", 
                                              "LS"),
                     usrdef.outliersDate = c("2016-07-01", "2022-01-01", 
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
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

konsumPi$run()

output_konsumPi <- lapply(konsumPi$components, function(x){
  x$output$final$series
})

