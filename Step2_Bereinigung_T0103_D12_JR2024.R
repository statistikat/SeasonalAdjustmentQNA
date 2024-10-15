# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0103 Verteilung D12
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T103TS muss geladen sein

vert_D12 <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T103TS[, "D12_XDC_W2_A"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "TC"),
                    usrdef.outliersDate = c("2007-01-01", "2008-04-01",
                                            "2020-04-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 2
  vert_BTE = perTramo(T103TS[, "D12_XDC_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "LS",
                                               "LS", "LS",
                                               "AO", "LS",
                                               "LS"),
                       usrdef.outliersDate = c("2002-01-01", "2004-01-01",
                                               "2009-04-01", "2009-07-01",
                                               "2018-10-01", "2020-04-01",
                                               "2023-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 2, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 3
  vert_C = perTramo(T103TS[, "D12_XDC_W2_C"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO"),
                    usrdef.outliersDate = c("2002-04-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  
  # ====================================================================================
  # 4
  vert_F = perTramo(T103TS[, "D12_XDC_W2_F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO","AO"),
                    usrdef.outliersDate = c("2020-04-01","2023-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  # 5
  vert_GTI = perTramo(T103TS[, "D12_XDC_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("TC", "AO",
                                               "AO", "AO",
                                               "AO", "AO",
                                               "AO"),
                       usrdef.outliersDate = c("2008-01-01", "2020-01-01",
                                               "2020-04-01", "2020-07-01",
                                               "2020-10-01", "2021-01-01",
                                               "2021-04-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE,
                       # usrdef.var = NA, usrdef.varType = "Calendar",
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 2, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 6
  vert_J = perTramo(T103TS[, "D12_XDC_W2_J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "TC",
                                            "TC","TC","AO"),
                    usrdef.outliersDate = c("2008-01-01", "2000-10-01",
                                            "2007-07-01","2009-01-01","2006-01-01"),
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
  # =====================================================================================
  # 7
  vert_K = perTramo(T103TS[, "D12_XDC_W2_K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = false, 
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("TC", "AO",
                                            "AO", "AO",
                                            "AO", "AO"),
                    usrdef.outliersDate = c("2008-01-01", "2016-01-01",
                                            "2014-10-01", "2014-01-01",
                                            "2024-01-01","2024-04-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE,
                    usrdef.var = td7, usrdef.varType = "Calendar",
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE)
  ,
  # =====================================================================================
  # 8
  vert_L = perTramo(T103TS[, "D12_XDC_W2_L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS","LS",
                                            "AO","TC",
                                            "AO","AO"),
                    usrdef.outliersDate = c("2007-10-01","2009-04-01",
                                            "2013-01-01","2016-01-01",
                                            "2023-01-01","2024-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  # 9
  vert_M_N = perTramo(T103TS[, "D12_XDC_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC", "TC"),
                      usrdef.outliersDate = c("2008-01-01", "2020-04-01"),
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
  # =====================================================================================
  # 10
  vert_OTQ = perTramo(T103TS[, "D12_XDC_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO"),
                       usrdef.outliersDate = c("2001-04-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 0, arima.q  = 2, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 11
  vert_RTU = perTramo(T103TS[, "D12_XDC_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS",
                                               "LS", "AO"),
                       usrdef.outliersDate = c("2002-01-01",
                                               "2020-04-01", "2021-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE,
                       arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # =====================================================================================

)

vert_D12$run()


T103Adj_D12 <- lapply(vert_D12$components, function(x){
  x$output$final$series
})
