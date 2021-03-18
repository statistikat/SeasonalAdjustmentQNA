# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0111 Arbeitsvolumen Hours Worked
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

# SAL ---------------------------------

vert_HW_SAL <- per_hts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = per_tramo(T111TS[, "SAL_HW_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "TC"),
                     usrdef.outliersDate = c("2010-01-01", "2009-01-01",
                                             "2015-10-01"),
                     # Trading Days ---------------------------------------------------------
                     #usrdef.varEnabled = TRUE, 
                     #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                     #tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  vert_BTE = per_tramo(T111TS[, "SAL_HW_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2009-01-01", "2020-01-01", "2020-04-01",
                                               "2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       usrdef.varEnabled = TRUE, 
                       usrdef.var = td7, usrdef.varType = "Calendar", 
                       tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                                   easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_C = per_tramo(T111TS[, "SAL_HW_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("2009-01-01", "2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE, 
                     usrdef.var = td7, usrdef.varType = "Calendar", 
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_F = per_tramo(T111TS[, "SAL_HW_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "AO", "AO"),
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
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  vert_GTI = per_tramo(T111TS[, "SAL_HW_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2004-04-01", "2020-01-01",
                                               "2020-04-01", "2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                                  usrdef.varEnabled = TRUE,
                                  usrdef.var = td5, usrdef.varType = "Calendar",
                                  tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                                   easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_J = per_tramo(T111TS[, "SAL_HW_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("2015-10-01", "2020-01-01",
                                             "2020-04-01", "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                                 usrdef.varEnabled = TRUE, 
                                 usrdef.var = td5lY, usrdef.varType = "Calendar", 
                                 tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_K = per_tramo(T111TS[, "SAL_HW_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     #usrdef.outliersEnabled = TRUE, 
                     #usrdef.outliersType = c("AO", "AO", "AO"),
                     #usrdef.outliersDate = c("2014-10-01", "2014-01-01",
                     #                       "2008-01-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE, 
                     usrdef.var = td5, usrdef.varType = "Calendar", 
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_L = per_tramo(T111TS[, "SAL_HW_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS"),
                     usrdef.outliersDate = c("2004-10-01"),
                     # Trading Days ---------------------------------------------------------
                     #            usrdef.varEnabled = TRUE, 
                     #            usrdef.var = td7, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 0, arima.q  = 1, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_M_N = per_tramo(T111TS[, "SAL_HW_W2_M_N"], template = "RSA3", 
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
                      #usrdef.var = td7, usrdef.varType = "Calendar", 
                      #tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  
  vert_OTQ = per_tramo(T111TS[, "SAL_HW_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                                   usrdef.varEnabled = TRUE, 
                                   usrdef.var = td5, usrdef.varType = "Calendar", 
                                   tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       #            easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_RTU = per_tramo(T111TS[, "SAL_HW_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       #            usrdef.varEnabled = TRUE, 
                       #            usrdef.var = td7, usrdef.varType = "Calendar", 
                       #            tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       #            easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE,
                       arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
  # =====================================================================================
  
)

vert_HW_SAL $run()


T111Adj_HW_SAL <- lapply(vert_HW_SAL$components, function(x){
  x$output$final$series
})


# SELF ----------------
vert_HW_SELF <- per_hts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = per_tramo(T111TS[, "SELF_HW_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("TC", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("2011-01-01", "2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     #usrdef.varEnabled = TRUE, 
                     #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                     #tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_BTE = per_tramo(T111TS[, "SELF_HW_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       #usrdef.outliersEnabled = TRUE, 
                       #usrdef.outliersType = c("AO", "LS", "LS"),
                       #usrdef.outliersDate = c("2007-10-01", "2006-10-01",
                       #                        "2008-04-01"),
                       # Trading Days ---------------------------------------------------------
                       #usrdef.varEnabled = TRUE, 
                       #usrdef.var = td5, usrdef.varType = "Calendar", 
                       #tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                                  # easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 0, arima.q  = 3, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_C = per_tramo(T111TS[, "SELF_HW_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     #usrdef.outliersEnabled = TRUE, 
                     #usrdef.outliersType = c("LS"),
                     #usrdef.outliersDate = c("2009-01-01"),
                     # Trading Days ---------------------------------------------------------
                     #usrdef.varEnabled = TRUE, 
                     #usrdef.var = td5lY, usrdef.varType = "Calendar", 
                     #tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  
  # ====================================================================================
  vert_F = per_tramo(T111TS[, "SELF_HW_W2_F"], template = "RSA3",
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
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  vert_GTI = per_tramo(T111TS[, "SELF_HW_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO","AO", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", 
                                               "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       #usrdef.varEnabled = TRUE, 
                       #usrdef.var = td5, usrdef.varType = "Calendar", 
                       #tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       #            easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_J = per_tramo(T111TS[, "SELF_HW_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("TC"),
                     usrdef.outliersDate = c("2013-07-01"),
                     # Trading Days ---------------------------------------------------------
                     #            usrdef.varEnabled = TRUE, 
                     #            usrdef.var = td7, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_K = per_tramo(T111TS[, "SELF_HW_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("1995-10-01", "2009-10-01", "2020-01-01", 
                                             "2020-04-01","2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     #usrdef.varEnabled = TRUE, 
                     #usrdef.var = td5, usrdef.varType = "Calendar", 
                     #tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_L = per_tramo(T111TS[, "SELF_HW_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("1999-07-01", "2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     #            usrdef.varEnabled = TRUE, 
                     #            usrdef.var = td7, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 3, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  vert_M_N = per_tramo(T111TS[, "SELF_HW_W2_M_N"], template = "RSA3", 
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
                      #usrdef.var = td7, usrdef.varType = "Calendar", 
                      #tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_OTQ = per_tramo(T111TS[, "SELF_HW_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2004-01-01", "2009-01-01","2020-01-01", 
                                               "2020-04-01","2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       #            usrdef.varEnabled = TRUE, 
                       #            usrdef.var = td7, usrdef.varType = "Calendar", 
                       #            tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       #            easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_RTU = per_tramo(T111TS[, "SELF_HW_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2002-04-01", "2020-01-01", "2020-04-01",
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
                       arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE)
  # =====================================================================================
  
)

vert_HW_SELF $run()


T111Adj_HW_SELF <- lapply(vert_HW_SELF$components, function(x){
  x$output$final$series
})

# EMP ---------------------
# indirekt berechnet
T111Adj_EMP_HW_sa <- mapply(function(x, y) {
  x[, 2] + y[, 2]
}, x = T111Adj_HW_SAL, y = T111Adj_HW_SELF)

T111Adj_EMP_HW_t <- mapply(function(x, y) {
  x[, 3] + y[, 3]
}, x = T111Adj_HW_SAL, y =T111Adj_HW_SELF)



