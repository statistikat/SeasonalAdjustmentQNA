# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung Investitionen Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# invest muss geladen sein 


# Da die Höher der Ausreißer bei den Eurofighter käufen bekannt ist, 
# werden diese vor der Saisonbereinigung herasugerechnet und danach wieder dazu gegeben (wie AO) 
# 1. Schritt Eurofighter herausrechnen 

euroFight <- ts(c(0, 0, 106, 276,
                  0, 266, 0, 363, 
                  0, 0, 90, 0), 
                start = c(2007, 1),
                freq = 4)


invest$L[time(invest$L)>=2007 & time(invest$L) < 2010, "N11OG"] <-  invest$L[, "N11OG"] - euroFight

# Tramo Seat Investitionen ---------------------------

investVol <- perHts(
  ## N1G Alle bruttoinvestitionen (inkl Lager) -------------------------------------
  N1G = perTramo(invest$L[, "N1G"] , template = "RSA3",
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
  N111G = perTramo(invest$L[, "N111G"] , template = "RSA3",
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
  N112G = perTramo(invest$L[, "N112G"], template = "RSA3",
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
  N1131G = perTramo(invest$L[, "N1131G"], template = "RSA3", 
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
  N1132G = perTramo(invest$L[, "N1132G"], template = "RSA3", 
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
  N11OG = perTramo(invest$L[, "N11OG"], template = "RSA3", 
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
  N115G = perTramo(invest$L[, "N115G"], template = "RSA3", 
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
  N117G = perTramo(invest$L[, "N117G"], template = "RSA3", 
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

investVol$run()

output_investVol <- lapply(investVol$components, function(x){
  x$output$final$series
})

# Eurofighter "rückabwickeln"
output_investVol$N11OG[time(output_investVol$N11OG)>=2007 & time(output_investVol$N11OG) < 2010 , c("y", "sa")] <- output_investVol$N11OG[, c("y", "sa")] + euroFight
output_investVol$N11OG[, "i"] <- output_investVol$N11OG[, "sa"] / output_investVol$N11OG[, "t"]


