# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Außenhandel Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# ah muss geladen sein 

# Da die Höher der Ausreißer bei den Eurofighter käufen bekannt ist, 
# werden diese vor der Saisonbereinigung herasugerechnet und danach wieder dazu gegeben (wie AO) 
# 1. Schritt Eurofighter herausrechnen 

euroFight <- ts(c(0, 0, 106, 276,
                  0, 266, 0, 363, 
                  0, 0, 90, 0), 
                start = c(2007, 1),
                freq = 4)


ah$L[time(ah$L)>=2007 & time(ah$L) < 2010, "P71_W1"] <-  ah$L[, "P71_W1"] - euroFight


# Tramo Seat Außenhandel ---------------------------

ahVol <- perHts(
  ## P61_W1 Warenexporte -------------------------------------
  P61_W1 = perTramo(ah$L[, "P61_W1"] , template = "RSA3",
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
  ## P62_W1 Dienstleistungsexporte -------------------------------------
  P62_W1 = perTramo(ah$L[, "P62_W1"], template = "RSA3",
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
  ## P71_W1  Warenimporte -------------------------------------
  P71_W1 = perTramo(ah$L[, "P71_W1"], template = "RSA3", 
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
  ## P72_W1 Dienstleistungsimporte -------------------------------------
  P72_W1 = perTramo(ah$L[, "P72_W1"], template = "RSA3", 
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
  ## P6_I9 Exporte in die Eurozone -------------------------------------
  P6_I9 = perTramo(ah$L[, "P6_I9"], template = "RSA3", 
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
  ## P6_K11 Exporte in die EU- Nicht Eurozone -------------------------------------
  P6_K11 = perTramo(ah$L[, "P6_K11"], template = "RSA3", 
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
  ## P6_D6 Exporte in Drittläner /Nicht-EU -------------------------------------
  P6_D6 = perTramo(ah$L[, "P6_D6"], template = "RSA3", 
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
  ## P7_I9 Importe aus der Eurozone -------------------------------------
  P7_I9 = perTramo(ah$L[, "P7_I9"], template = "RSA3", 
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
  ## P7_K11 Importe aus der EU- Nicht Eurozone -------------------------------------
  P7_K11 = perTramo(ah$L[, "P7_K11"], template = "RSA3", 
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
  ## P7_D6 Importe aus Drittländern /Nicht-EU -------------------------------------
  P7_D6 = perTramo(ah$L[, "P7_D6"], template = "RSA3", 
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

ahVol$run()

output_ahVol <- lapply(ahVol$components, function(x){
  x$output$final$series
})


# Eurofighter "rückabwickeln"
output_ahVol$P71_W1[time(output_ahVol$P71_W1)>=2007 & time(output_ahVol$P71_W1) < 2010 , c("y", "sa")] <- output_ahVol$P71_W1[, c("y", "sa")] + euroFight
output_ahVol$P71_W1[, "i"] <- output_ahVol$P71_W1[, "sa"] / output_ahVol$P71_W1[, "t"]
