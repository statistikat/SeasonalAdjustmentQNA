# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0117 Konsum Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T117TS muss geladen sein

kons_vol <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  p311 = perTramo(T117TS$vol[, "P311"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO", "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
                   # Trading Days ---------------------------------------------------------
                   usrdef.varEnabled = TRUE, 
                   usrdef.var = td7, usrdef.varType = "Calendar", 
                   tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  p312 = perTramo(T117TS$vol[, "P312"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC", "TC"),
                   usrdef.outliersDate = c("2020-01-01", "2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  p313 = perTramo(T117TS$vol[, "P313"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO"),
                   usrdef.outliersDate = c("2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                   arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  
  # ====================================================================================
  p314 = perTramo(T117TS$vol[, "P314"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO", "AO", "AO", 
                                           "AO", "AO", "AO", 
                                           "AO", "AO", "AO",
                                           "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", 
                                           "2020-10-01", "2021-01-01", "2021-04-01", 
                                           "2021-07-01", "2021-10-01", "2022-01-01",
                                           "2022-04-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # ====================================================================================
)

kons_vol$run()

T117Adj_Vol <- lapply(kons_vol$components, function(x){
  x$output$final$series
})

