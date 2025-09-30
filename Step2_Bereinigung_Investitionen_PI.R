# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung Investitionen Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# invest muss geladen sein 

# Tramo Seat Investitionen ---------------------------

investPi <- perHts(
  ## N1G Alle bruttoinvestitionen (inkl Lager) -------------------------------------
  N1G = perTramo(invest$PI[, "N1G"] , template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("AO", "AO", 
                                         "AO", "AO", 
                                         "LS", "AO",
                                         "LS"),
                 usrdef.outliersDate = c("1008-01-01", "2009-01-01", 
                                         "2011-10-01", "2021-01-01", 
                                         "2021-10-01", "2022-01-01",
                                         "2023-10-01"),
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = NULL, easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 1,
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## N111G Wohnbauinvestitionen -------------------------------------
  N111G = perTramo(invest$PI[, "N111G"] , template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "LS", 
                                           "AO", "LS"),
                   usrdef.outliersDate = c("2021-04-01", "2021-07-01", 
                                           "2022-04-01", "2022-07-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## N112G Nicht-Wohnbauinvestitionen -------------------------------------
  N112G = perTramo(invest$PI[, "N112G"], template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS"),
                   usrdef.outliersDate = c("2022-04-01"),
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
  ## N1131G  Fahrzeuginvestitionen -------------------------------------
  # No identifiable seasonality 
  # Warning kommt vom perHts, als einzelne Reihe ausgefürht keine Warning
  N1131G = perTramo(invest$PI[, "N1131G"], template = "RSA3", 
                    # Transformation
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "AO",
                                            "AO", "AO", 
                                            "LS"),
                    usrdef.outliersDate = c("1998-04-01", "1998-07-01",
                                            "2011-10-01", "2019-04-01", 
                                            "2022-01-01"),
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
  ## N1132G IKT -Investitionen -------------------------------------
  # Keine Saisonalität 
  N1132G = perTramo(invest$PI[, "N1132G"], template = "RSA3", 
                    # Transformation
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = FALSE,
                    # usrdef.outliersType = NULL,
                    # usrdef.outliersDate = NULL,
                    # Trading Days
                    usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter
                    easter.type = NULL, easter.duration = 6,
                    # Arima-Model
                    automdl.enabled = FALSE,
                    arima.p  = 0, arima.d  = 1, arima.q  = 0,
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## N11OG Sonstige Ausrüstungsinvestitionen inkl Maschinenen und Militär -------------------------------------
  N11OG = perTramo(invest$PI[, "N11OG"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType =  c("AO", "AO",
                                            "AO", "AO",
                                            "AO", "AO", 
                                            "AO", "LS", 
                                            "TC"),
                   usrdef.outliersDate = c("2008-04-01", "2008-07-01", 
                                           "2009-01-01", "2009-10-01", 
                                           "2010-10-01", "2011-10-01",
                                           "2022-01-01", "2022-07-01",
                                           "2023-01-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = "IncludeEaster", easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## N115G Nutztiere und Nutzpflanzen -------------------------------------
  # No identifiable Seasonality  
  N115G = perTramo(invest$PI[, "N115G"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = NULL,
                   # usrdef.outliersDate = NULL,
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## N117G IPP Investitionenen -------------------------------------
  N117G = perTramo(invest$PI[, "N117G"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType =  c("AO", "AO", 
                                            "LS"),
                   usrdef.outliersDate = c("2018-07-01", "2020-01-01", 
                                           "2023-01-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

investPi$run()

output_investPi <- lapply(investPi$components, function(x){
  x$output$final$series
})
