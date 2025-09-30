# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Außenhandel Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# ah muss geladen sein 

# Tramo Seat Investitionen ---------------------------

ahPi <- perHts(
  ## P61_W1 Warenexporte -------------------------------------
  # No identifiable seasonalitiy
  P61_W1 = perTramo(ah$PI[, "P61_W1"] , template = "RSA3",
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
  ## P62_W1 Dienstleistungsexporte -------------------------------------
  # No identifiable seasonality present 
  P62_W1 = perTramo(ah$PI[, "P62_W1"], template = "RSA3",
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
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P71_W1  Warenimporte -------------------------------------
  # No identifiable seasonality
  P71_W1 = perTramo(ah$PI[, "P71_W1"], template = "RSA3", 
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
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P72_W1 Dienstleistungsimporte -------------------------------------
  P72_W1 = perTramo(ah$PI[, "P72_W1"], template = "RSA3", 
                    # Transformation
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("AO", "LS",
                                            "AO"),
                    usrdef.outliersDate = c("2003-04-01", "2020-01-01", 
                                            "2022-07-01"),
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
  ## P6_I9 Exporte in die Eurozone -------------------------------------
  # No identifiable seasonality 
  P6_I9 = perTramo(ah$PI[, "P6_I9"], template = "RSA3", 
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
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## P6_K11 Exporte in die EU- Nicht Eurozone -------------------------------------
  # No identifiable seasonlity 
  P6_K11 = perTramo(ah$PI[, "P6_K11"], template = "RSA3", 
                    # Transformation 
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("2014-01-01"),
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
  ## P6_D6 Exporte in Drittläner /Nicht-EU -------------------------------------
  # No identifiable seasonality
  P6_D6 = perTramo(ah$PI[, "P6_D6"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = NULL,
                   # usrdef.outliersDate = NULL
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
  ## P7_I9 Importe aus der Eurozone -------------------------------------
  # No identifiable seasonalitiy 
  P7_I9 = perTramo(ah$PI[, "P7_I9"], template = "RSA3", 
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
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P7_K11 Importe aus der EU- Nicht Eurozone -------------------------------------
  # No identifiable seasonality 
  P7_K11 = perTramo(ah$PI[, "P7_K11"], template = "RSA3", 
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
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P7_D6 Importe aus Drittländern /Nicht-EU -------------------------------------
  P7_D6 = perTramo(ah$PI[, "P7_D6"], template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO"),
                   usrdef.outliersDate = c("2022-07-01"),
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

ahPi$run()

output_ahPi <- lapply(ahPi$components, function(x){
  x$output$final$series
})
