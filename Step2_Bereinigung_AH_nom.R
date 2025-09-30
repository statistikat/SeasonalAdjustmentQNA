# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Außenhandel Nominell (nur regional)
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# ah muss geladen sein 


# Tramo Seat Außenhandel ---------------------------

ahNom <- perHts(
  ## P6_I9 Exporte in die Eurozone -------------------------------------
  P6_I9 = perTramo(ah$V[, "P6_I9"] %>% window(end = 2019.75), template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "AO"),
                   usrdef.outliersDate = c("2015-07-01", "2016-07-01"),
                   # Trading Days
                   usrdef.varEnabled = TRUE,
                   usrdef.var = td5, usrdef.varType = "Calendar",
                   tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P6_K11 Exporte in die EU- Nicht Eurozone -------------------------------------
  P6_K11 = perTramo(ah$V[, "P6_K11"] %>% window(end = 2019.75), template = "RSA3", 
                    # Transformation 
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "TC", 
                                            "AO"),
                    usrdef.outliersDate = c("2009-01-01", "2009-04-01", 
                                            "2017-10-01"),
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
  P6_D6 = perTramo(ah$V[, "P6_D6"] %>% window(end = 2019.75), template = "RSA3", 
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
                   easter.type = "IncludeEaster", easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P7_I9 Importe aus der Eurozone -------------------------------------
  P7_I9 = perTramo(ah$V[, "P7_I9"] %>% window(end = 2019.75), template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "LS"),
                   usrdef.outliersDate = c("2009-01-01", "2010-04-01"),
                   # Trading Days
                   usrdef.varEnabled = TRUE,
                   usrdef.var = td5, usrdef.varType = "Calendar",
                   tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = "IncludeEaster", easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## P7_K11 Importe aus der EU- Nicht Eurozone -------------------------------------
  # Seasonality probably from the outliers in non-adjusted data
  P7_K11 = perTramo(ah$V[, "P7_K11"] %>% window(end = 2019.75), template = "RSA3", 
                    # Transformation 
                    transform.function = "Log",
                    # Outliers
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "TC", 
                                            "AO"),
                    usrdef.outliersDate = c("2009-01-01", "2009-04-01", 
                                            "2017-10-01"),
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
  ## P7_D6 Importe aus Drittländern /Nicht-EU -------------------------------------
  P7_D6 = perTramo(ah$V[, "P7_D6"] %>% window(end = 2019.75), template = "RSA3", 
                   # Transformation 
                   transform.function = "Log",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "LS"),
                   usrdef.outliersDate = c("2009-01-01", "2013-01-01"),
                   # Trading Days
                   usrdef.varEnabled = TRUE,
                   usrdef.var = td5, usrdef.varType = "Calendar",
                   tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

ahNom$run()

output_ahNom <- lapply(ahNom$components, function(x){
  x$output$final$series
})


