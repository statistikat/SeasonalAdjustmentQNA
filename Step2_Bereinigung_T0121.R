# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0121 Importe
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T121TS muss geladen sein

T121TS0 <- copy(T121TS)

# Eurofighter wird eliminiert 
euroFight <- ts(c(0, 0, 106, 276, 
                  0, 266, 0, 363, 
                  0, 0, 90, 0), 
                start = c(2007, 1),
                freq = 4)

# T121TS0$vol[time(T121TS0$vol)>=2007 & time(T121TS0$vol) < 2010, "P7"] <-  T121TS$vol[, "P7"] - euroFight
T121TS0$vol[time(T121TS0$vol)>=2007 & time(T121TS0$vol) < 2010, "P7_B0"] <-  T121TS$vol[, "P7_B0"] - euroFight

imp121_vol <- perHts(
   P7U2 = perTramo(window(T121TS0$vol[, "P7_U2"], start = c(2008,1)), template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO", "AO","AO", "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   usrdef.varEnabled = TRUE, 
                   usrdef.var = td5, usrdef.varType = "Calendar", 
                   tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  P7U3 = perTramo(window(T121TS0$vol[, "P7_U3"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("LS", "AO", "AO","AO", "AO"),
                   usrdef.outliersDate = c("2009-01-01", "2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   usrdef.varEnabled = TRUE, 
                   usrdef.var = td5, usrdef.varType = "Calendar", 
                   tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  P7D0 = perTramo(window(T121TS0$vol[, "P7_D0"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = TRUE, 
                   arima.p  = 1, arima.d  = 1, arima.q  = 0,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE
                   )
  # ====================================================================================
)  
  
imp121_vol$run()


T121Adj_Vol <- lapply(imp121_vol$components, function(x){
  x$output$final$series
})



# Eurofighter "rückabwickeln"
T121Adj_Vola <- copy(T121Adj_Vol)

# importe
T121Adj_Vola$P7U2[time(T121Adj_Vola$P7U2)>=2007 & time(T121Adj_Vola$P7U2) < 2010 , "y"] <- T121Adj_Vol$P7U2[, "y"] + euroFight
T121Adj_Vola$P7U2[time(T121Adj_Vola$P7U2)>=2007 & time(T121Adj_Vola$P7U2) < 2010 , "sa"] <- T121Adj_Vol$P7U2[, "sa"] + euroFight
T121Adj_Vola$P7U2[, "i"] <- T121Adj_Vola$P7U2[, "sa"] / T121Adj_Vola$P7U2[, "t"]


#####################

imp121_price <- perHts(
  P7U2 = perTramo(window(T121TS0$impPI_L[, "P7_U2"], start = c(2008,1)), template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC","AO", "AO", "AO", "AO"),
                   usrdef.outliersDate = c("2014-01-01", "2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  P7U3 = perTramo(window(T121TS0$impPI_L[, "P7_U3"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("LS","AO", "AO", "AO", "AO"),
                   usrdef.outliersDate = c("2009-01-01", "2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  
  # ====================================================================================
  P7D0 = perTramo(window(T121TS0$impPI_L[, "P7_D0"], start = c(2008,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                   usrdef.outliersDate = c("2009-01-01", "2020-01-01", "2020-04-01",
                                           "2020-07-01", "2020-10-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # ====================================================================================
)  

imp121_price$run()


T121Adj_impPI_L <- lapply(imp121_price$components, function(x){
 x$output$final$series
})