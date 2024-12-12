# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Außenhandel Nominell (nur regional)
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# ah muss geladen sein 


# Tramo Seat Außenhandel ---------------------------

ahNom <- perHts(
  ## P6_I9 Exporte in die Eurozone -------------------------------------
  P6_I9 = perTramo(ah$V[, "P6_I9"], template = "RSA3", 
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
  P6_K11 = perTramo(ah$V[, "P6_K11"], template = "RSA3", 
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
  P6_D6 = perTramo(ah$V[, "P6_D6"], template = "RSA3", 
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
  P7_I9 = perTramo(ah$V[, "P7_I9"], template = "RSA3", 
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
  P7_K11 = perTramo(ah$V[, "P7_K11"], template = "RSA3", 
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
  P7_D6 = perTramo(ah$V[, "P7_D6"], template = "RSA3", 
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

ahNom$run()

output_ahNom <- lapply(ahNom$components, function(x){
  x$output$final$series
})


