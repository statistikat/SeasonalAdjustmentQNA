# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0120 Exporte
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T120TS muss geladen sein


exp120_vol <- perHts(
   p6U2 = perTramo(window(T120TS$vol[, "P6_U2"], start = c(2008,1)), template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("LS",  "AO",
                                           "AO", "LS",
                                           "AO", "AO"
                                           ),
                   usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                           "2009-04-01", "2020-01-01",
                                           "2020-04-01", "2021-01-01"
                                           ),
                   # Trading Days ---------------------------------------------------------
                   usrdef.varEnabled = TRUE, 
                   usrdef.var = td5lY, usrdef.varType = "Calendar", 
                   tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE
                   ),
  # ====================================================================================
  p6U3 = perTramo(window(T120TS$vol[, "P6_U3"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("LS", "LS", 
                                           "AO", "AO"),
                   usrdef.outliersDate = c("2009-01-01", "2020-01-01",
                                           "2020-04-01", "2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   easter.type = "IncludeEaster", easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 2, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  p6D0 = perTramo(window(T120TS$vol[, "P6_D0"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = FALSE, 
                   usrdef.outliersType = NA,
                   usrdef.outliersDate = NA,
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd =0, arima.bq = 0, arima.mu = FALSE) # not seasonal
  # ====================================================================================
)  
  
exp120_vol$run()


T120Adj_Vol <- lapply(exp120_vol$components, function(x){
 x$output$final$series
})



exp120_price <- perHts(
  p6U2 = perTramo(window(T120TS$impPI_L[, "P6_U2"], start = c(2008,1)), template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("AO", "AO", "AO",  "AO", "AO"),
                    usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01", "2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  p6U3 = perTramo(window(T120TS$impPI_L[, "P6_U3"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = FALSE,
                   #usrdef.outliersType = c("AO", "AO", "AO",  "AO", "AO"),
                   #usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                   #                         "2020-07-01", "2020-10-01", "2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   #easter.type = "IncludeEaster", easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  
  # ====================================================================================
  p6D0 = perTramo(window(T120TS$impPI_L[, "P6_D0"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC"),
                   usrdef.outliersDate = c("2020-04-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE)
  # ====================================================================================
)  

exp120_price$run()


T120Adj_impPI_L <- lapply(exp120_price$components, function(x){
 x$output$final$series
})
