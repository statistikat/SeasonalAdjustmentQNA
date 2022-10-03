# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0117 Konsum Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

kons_price <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  p311 = perTramo(T117TS$impPI_L[, "P311"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "AO",
                                           "AO", "TC", 
                                           "LS", "LS",
                                           "LS"),
                   usrdef.outliersDate = c("1999-01-01", "2005-07-01",
                                           "2006-10-01", "2008-10-01", 
                                           "2021-04-01", "2022-01-01",
                                           "2022-04-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  p312 = perTramo(T117TS$impPI_L[, "P312"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC", "AO",
                                           "LS", "LS"),
                   usrdef.outliersDate = c("2006-07-01", "2007-10-01",
                                           "2020-04-01", "2022-04-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  p313 = perTramo(T117TS$impPI_L[, "P313"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "LS"),
                   usrdef.outliersDate = c("2022-01-01", "2022-04-01"),
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
  p314 = perTramo(T117TS$impPI_L[, "P314"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   # usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = NA,
                   # usrdef.outliersDate = NA,
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

kons_price$run()


#-------------------------------------------------------------------------------

T102Adj_impPI_L <- lapply(vcl_price$components, function(x){
  x$output$final$series
})

T102Adj_impPI_L$vcl_AN117 <- vcl_AN117



#################################################

T117Adj_impPI_L <- lapply(kons_price$components, function(x){
  x$output$final$series
})
