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
                 outlier.enabled = TRUE,
                 usrdef.outliersEnabled = FALSE,
                 # usrdef.outliersType = c("AO", "AO",
                 #                         "AO", "LS"),
                 # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                 #                         "2020-04-01", "2021-01-01"),
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
  ## N111G Wohnbauinvestitionen -------------------------------------
  N111G = perTramo(invest$PI[, "N111G"] , template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
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
  ## N112G Nicht-Wohnbauinvestitionen -------------------------------------
  N112G = perTramo(invest$PI[, "N112G"], template = "RSA3",
                   # Transformation
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
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
  ## N1131G  Fahrzeuginvestitionen -------------------------------------
  N1131G = perTramo(invest$PI[, "N1131G"], template = "RSA3", 
                    # Transformation
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = TRUE,
                    usrdef.outliersEnabled = FALSE,
                    # usrdef.outliersType = c("AO", "AO",
                    #                         "AO", "LS"),
                    # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                    #                         "2020-04-01", "2021-01-01"),
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
  ## N1132G IKT -Investitionen -------------------------------------
  N1132G = perTramo(invest$PI[, "N1132G"], template = "RSA3", 
                    # Transformation
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = TRUE,
                    usrdef.outliersEnabled = FALSE,
                    # usrdef.outliersType = c("AO", "AO",
                    #                         "AO", "LS"),
                    # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                    #                         "2020-04-01", "2021-01-01"),
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
  ## N11OG Sonstige Ausrüstungsinvestitionen inkl Maschinenen und Militär -------------------------------------
  N11OG = perTramo(invest$PI[, "N11OG"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
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
  ## N115G Nutztiere und Nutzpflanzen -------------------------------------
  N115G = perTramo(invest$PI[, "N115G"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
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
  ## N117G IPP Investitionenen -------------------------------------
  N117G = perTramo(invest$PI[, "N117G"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = TRUE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

investPi$run()

output_investPi <- lapply(investPi$components, function(x){
  x$output$final$series
})
