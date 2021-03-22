# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0121 Importe
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

T121TS0 <- copy(T121TS)

# Eurofighter wird eliminiert 
euroFight <- ts(c(0, 0, 106, 276, 0, 266, 0, 363, 0, 0, 90, 0), start = c(2007, 1),
                freq = 4)
T121TS0$vol[c(51, 52, 54, 56, 59) , 1] <- T121TS$vol[c(51, 52, 54, 56, 59) , 1] - 
  euroFight[c(3, 4, 6, 8, 11)]
T121TS0$vol[c(54, 56, 59) , 2] <- T121TS$vol[c(54, 56, 59) , 2] - 
                                  euroFight[c(6, 8, 11)]


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
                   #            easter.type = "IncludeEaster", easter.duration = 6,
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
                   #easter.type = "IncludeEaster", easter.duration = 6,
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
                   #usrdef.varEnabled = TRUE, 
                   #usrdef.var = td5, usrdef.varType = "Calendar", 
                   #tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   #            easter.type = "IncludeEaster", easter.duration = 6,
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
T121Adj_Vola$P7[c(51, 52, 54, 56, 59) , 1] <- T121Adj_Vol$P7[c(51, 52, 54, 56, 59) , 1] + 
  euroFight[c(3, 4, 6, 8, 11)]
T121Adj_Vola$P7[c(51, 52, 54, 56, 59) , 2] <- T121Adj_Vol$P7[c(51, 52, 54, 56, 59) , 2] + 
  euroFight[c(3, 4, 6, 8, 11)]
T121Adj_Vola$P7[, 5] <- T121Adj_Vola$P7[, 2] / T121Adj_Vola$P7[, 3]

T121Adj_Vola$P7U2[c(2, 4, 7) , 1] <- T121Adj_Vol$P7U2[c(2, 4, 7) , 1] + 
  euroFight[c(6, 8, 11)]
T121Adj_Vola$P7U2[c(2, 4, 7) , 2] <- T121Adj_Vol$P7U2[c(2, 4, 7) , 2] + 
  euroFight[c(6, 8, 11)]
T121Adj_Vola$P7U2[, 5] <- T121Adj_Vola$P7U2[, 2] / T121Adj_Vola$P7U2[, 3]


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
                   #usrdef.varEnabled = TRUE, 
                   #usrdef.var = td5, usrdef.varType = "Calendar", 
                   #tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   #            easter.type = "IncludeEaster", easter.duration = 6,
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
                   #usrdef.varEnabled = TRUE, 
                   #usrdef.var = td5lY, usrdef.varType = "Calendar", 
                   #tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   #easter.type = "IncludeEaster", easter.duration = 6,
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
                   #usrdef.varEnabled = TRUE, 
                   #usrdef.var = td5, usrdef.varType = "Calendar", 
                   #tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   #            easter.type = "IncludeEaster", easter.duration = 6,
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