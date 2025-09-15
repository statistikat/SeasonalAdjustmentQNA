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
                                           "AO", "LS", 
                                           "LS"),
                   usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                                           "2020-04-01", "2021-01-01", 
                                           "2025-01-01"),
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
               usrdef.outliersType = c("AO", "AO",
                                       "AO", "AO",
                                       "AO", "AO",
                                       "AO"),
               usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                       "2020-07-01", "2020-10-01",
                                       "2021-01-01", "2021-04-01",
                                       "2021-10-01"),
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
  ## S14_P311_W2 Privater Konsum HH (Inland) Dauerhafte Waren -------------------------------------
  # Reihe getrennt unten
  ## S14_P312_W2 Privater Konsum HH (Inland) Semidauerhafte Waren -------------------------------------
  S14_P312_W2 = perTramo(konsum$L[, "S14_P312_W2"], template = "RSA3", 
                     # Transformation 
                     transform.function = "Log",
                     # Outliers 
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO",
                                             "AO", "AO",
                                             "AO", "AO",
                                             "AO", "AO",
                                             "AO"),
                     usrdef.outliersDate = c("2009-01-01", "2020-01-01",
                                             "2020-04-01", "2021-07-01",
                                             "2021-01-01", "2021-04-01",
                                             "2021-07-01", "2021-10-01",
                                             "2022-01-01"),
                     # Trading Days 
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
  S14_P313_W2 = perTramo(konsum$L[, "S14_P313_W2"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO",
                                              "AO", "AO",
                                              "LS"),
                      usrdef.outliersDate = c("2020-04-01", "2020-10-01",
                                              "2021-07-01", "2022-04-01",
                                              "2022-07-01"),
                      # Trading Days
                      usrdef.varEnabled = TRUE,
                      usrdef.var = td5, usrdef.varType = "Calendar",
                      tradingdays.option = "UserDefined",
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      # easter.type = "Unused", easter.duration = 6,
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 2, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S14_P314_W2 Privater Konsum HH (Inland) Dienstleistungen -------------------------------------
  S14_P314_W2 = perTramo(konsum$L[, "S14_P314_W2"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO",
                                              "AO", "AO",
                                              "AO", "AO",
                                              "AO", "AO",
                                              "AO"),
                      usrdef.outliersDate = c("2008-07-01", "2020-01-01",
                                              "2020-04-01", "2020-07-01",
                                              "2020-10-01", "2021-01-01",
                                              "2021-04-01", "2021-10-01",
                                              "2022-01-01"),
                      # Trading Days 
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## S15_P31_W0 Privater Konsum NPO -------------------------------------
  S15_P31_W0 = perTramo(konsum$L[, "S15_P31_W0"], template = "RSA3", 
                      # Transformation 
                      transform.function = "Log",
                      # Outliers 
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO",
                                              "LS", "LS"),
                      usrdef.outliersDate = c("2015-01-01", "2020-01-01",
                                              "2021-01-01", "2023-01-01"),
                      # Trading Days 
                      usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter 
                      easter.type = "Unused",
                      # Arima-Model 
                      automdl.enabled = FALSE, 
                      arima.p  = 1, arima.d  = 1, arima.q  = 2, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE)
)

# RUN ----------

konsumVol$run()

output_konsumVol <- lapply(konsumVol$components, function(x){
  x$output$final$series
})

konsumVol2009 <- perHts(
  ## S14_P311_W2 Privater Konsum HH (Inland) Dauerhafte Waren -------------------------------------
  S14_P311_W2 = perTramo(konsum$L[, "S14_P311_W2"] %>% window(start = 2009) , template = "RSA3", 
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
                         # easter.type = NULL, easter.duration = 6,
                         # Arima-Model 
                         automdl.enabled = FALSE, 
                         arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                         arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)
)


konsumVol2009zr <- perHts(
  ## S14_P311_W2 Privater Konsum HH (Inland) Dauerhafte Waren -------------------------------------
  S14_P311_W2 = perTramo(konsum$L[, "S14_P311_W2"] %>% window(end = c(2009,4)) , template = "RSA3", 
                         # Transformation 
                         transform.function = "Log",
                         # Outliers 
                         outlier.enabled = FALSE,
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("TC", "AO"),
                         usrdef.outliersDate = c("1996-04-01", "2009-10-01"),
                         # Trading Days 
                         usrdef.varEnabled = FALSE,
                         # usrdef.var = NA, usrdef.varType = "Calendar",
                         # tradingdays.option = "UserDefined",
                         # Easter 
                         # easter.type = NULL, easter.duration = 6,
                         # Arima-Model 
                         automdl.enabled = FALSE, 
                         arima.p  = 0, arima.d  = 0, arima.q  = 2, 
                         arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE)
)


# Reihen Zusammen Stückeln --------------------------

## 2009 -----------------------
konsumVol2009$run()
konsumVol2009zr$run()


output_konsumVol <- c(output_konsumVol, lapply(names(konsumVol2009$components), function(x){
  ts_bind(konsumVol2009$components[[x]]$output$final$series[,c("y", "sa", "t")],
          konsumVol2009zr$components[[x]]$output$final$series[,c("y", "sa", "t")])%>%
    ts_c(s = .[, "y"]/.[,"sa"],
         i = .[, "sa"]/.[, "t"])
}) %>%
  `names<-`(names(konsumVol2009$components)))

