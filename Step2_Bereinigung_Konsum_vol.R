# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Konsum Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# konsum muss geladen sein 

# Tramo Seat Entstehung ---------------------------
konsumVol <- perHts(
  ## S13_P31_W0 Individualkonsum Staat -------------------------------------
  S13_P31_W0 = perTramo(konsum$L[, "S13_P31_W0"] , template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "AO",
                                           "AO", "LS"),
                   usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                                           "2020-04-01", "2021-01-01"),
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
  ## S13_P32_W0  Kollektivkonsum Staat -------------------------------------
  S13_P32_W0 = perTramo(konsum$L[, "S13_P32_W0"] , template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("AO", "AO",
                                       "AO", "AO",
                                       "AO", "AO"),
               usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                                       "2001-10-01", "2004-04-01",
                                       "2004-10-01", "2020-10-01"),
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 2, arima.d  = 0, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P31_W0 Privater Konsum HH (Inländer:innen) -------------------------------------
  S14_P31_W0 = perTramo(konsum$L[, "S14_P31_W0"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("LS", "LS",
                                       "AO", "AO"),
               usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                       "2010-01-01", "2020-04-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  ## S14_P311_W2 Privater Konsum HH (Inland) Dauerhafte Waren -------------------------------------
  S14_P311_W2 = perTramo(konsum$L[, "S14_P311_W2"] , template = "RSA3", 
                      # ZR kürzen:
                      estimate.from = "2012-01-01",
                     # Transformation 
                     transform.function = "Log",
                     # Outliers 
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO"),
                     usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
                     # Trading Days 
                     usrdef.varEnabled = FALSE,
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter 
                     easter.type = NULL, easter.duration = 6,
                     # Arima-Model 
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P312_W2 Privater Konsum HH (Inland) Semidauerhafte Waren -------------------------------------
  S14_P312_W2 = perTramo(konsum$L[, "S14_P312_W2"], template = "RSA3", 
                     # Transformation 
                     transform.function = "Log",
                     # Outliers 
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "LS",
                                             "AO", "LS",
                                             "AO", "AO",
                                             "AO", "AO"),
                     usrdef.outliersDate = c("2009-01-01", "2020-01-01",
                                             "2020-07-01", "2021-04-01",
                                             "2021-10-01", "2022-04-01",
                                             "2022-07-01", "2022-10-01"),
                     # Trading Days 
                     usrdef.varEnabled = FALSE,
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter 
                     # easter.type = "Unused", easter.duration = 6,
                     # Arima-Model 
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P313_W2 Privater Konsum HH (Inland) Nicht-Dauerhafte Waren -------------------------------------
  S14_P313_W2 = perTramo(konsum$L[, "S14_P313_W2"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO"),
                      usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                              "2010-01-01", "2020-04-01"),
                      # Trading Days 
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      # easter.type = "Unused", easter.duration = 6,
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  ## S14_P314_W2 Privater Konsum HH (Inland) Dienstleistungen -------------------------------------
  S14_P314_W2 = perTramo(konsum$L[, "S14_P314_W2"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO"),
                      usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                              "2010-01-01", "2020-04-01"),
                      # Trading Days 
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  ## S15_P31_W0 Privater Konsum NPO -------------------------------------
  S15_P31_W0 = perTramo(konsum$L[, "S15_P31_W0"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO"),
                      usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                              "2010-01-01", "2020-04-01"),
                      # Trading Days 
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)
)

# RUN ----------

konsumVol$run()

output_konsumVol <- lapply(konsumVol$components, function(x){
  x$output$final$series
})
