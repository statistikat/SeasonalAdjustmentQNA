# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0111 Arbeitsvolumen Hours Worked
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T111TS muss geladen sein
# Version 23_05
# SAL ---------------------------------

vert_HW_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = perTramo(T111TS[, "SAL_HW_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO",
                                             "AO", "LS",
                                             "AO"),
                     usrdef.outliersDate = c("2007-04-01", "2009-01-01",
                                             "2010-01-01", "2020-04-01",
                                             "2023-07-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = FALSE,
                     usrdef.var = td7, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  vert_BTE = perTramo(T111TS[, "SAL_HW_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO"),
                       usrdef.outliersDate = c("2009-01-01", "2020-04-01"),
                       # Trading Days ---------------------------------------------------------
                       usrdef.varEnabled = TRUE, 
                       usrdef.var = td7, usrdef.varType = "Calendar", 
                       tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_C = perTramo(T111TS[, "SAL_HW_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO"),
                      usrdef.outliersDate = c("2009-01-01", "2020-01-01",
                                              "2020-04-01", "2020-07-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE, 
                     usrdef.var = td7, usrdef.varType = "Calendar", 
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_F = perTramo(T111TS[, "SAL_HW_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "TC"),
                     usrdef.outliersDate = c("2020-01-01", "2020-04-01", "2008-01-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  vert_GTI = perTramo(T111TS[, "SAL_HW_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c( "LS", "AO",
                                                "AO", "AO",
                                                "AO", "LS"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                               "2020-10-01", "2021-01-01",
                                               "2021-07-01", "2022-04-01"),
                       # Trading Days ---------------------------------------------------------
                       usrdef.varEnabled = TRUE,
                       usrdef.var = td5, usrdef.varType = "Calendar",
                       tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_J = perTramo(T111TS[, "SAL_HW_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE, 
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE,
                     usrdef.var = td7lY, usrdef.varType = "Calendar",
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_K = perTramo(T111TS[, "SAL_HW_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE,
                     usrdef.outliersType = c("AO"),
                     usrdef.outliersDate = c("2022-07-01"),
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE, 
                     usrdef.var = td7, usrdef.varType = "Calendar", 
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_L = perTramo(T111TS[, "SAL_HW_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     # usrdef.outliersEnabled = TRUE,
                     # usrdef.outliersType = c("AO", "AO", "AO"),
                     # usrdef.outliersDate = c("2022-01-01", "2022-04-01", "2022-07-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_M_N = perTramo(T111TS[, "SAL_HW_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS", "AO"),
                      usrdef.outliersDate = c("2009-01-01","2020-01-01", "2020-04-01"),
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
  
  vert_OTQ = perTramo(T111TS[, "SAL_HW_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_RTU = perTramo(T111TS[, "SAL_HW_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO",
                                               "LS", "AO",
                                               "LS", "AO"),
                       usrdef.outliersDate = c("2004-04-01",
                                               "2020-01-01","2020-04-01",
                                               "2020-10-01","2021-01-01"),
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
  # =====================================================================================
  
)

vert_HW_SAL $run()


T111Adj_HW_SAL <- lapply(vert_HW_SAL$components, function(x){
  x$output$final$series
})


# SELF ----------------
vert_HW_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = perTramo(T111TS[, "SELF_HW_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("TC", "AO",
                                             "LS"),
                     usrdef.outliersDate = c("2011-01-01", "2017-01-01",
                                             "2020-01-01"),
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
  vert_BTE = perTramo(T111TS[, "SELF_HW_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE,
                       usrdef.outliersType = c("LS"),
                       usrdef.outliersDate = c("2007-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar",
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = "IncludeEaster", easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_C = perTramo(T111TS[, "SELF_HW_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     # usrdef.outliersEnabled = FALSE,
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = td5lY, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 0, arima.q  = 3, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  
  # ====================================================================================
  vert_F = perTramo(T111TS[, "SELF_HW_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE,
                     #usrdef.outliersType = NA,
                     #usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     usrdef.varEnabled = TRUE, 
                     usrdef.var = td5, usrdef.varType = "Calendar", 
                     tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  vert_GTI = perTramo(T111TS[, "SELF_HW_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO",  
                                               "AO", "AO"),
                       usrdef.outliersDate = c("2020-04-01",
                                               "2020-10-01",  "2021-04-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar",
                       #tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_J = perTramo(T111TS[, "SELF_HW_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE, 
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
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vert_K = perTramo(T111TS[, "SELF_HW_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE, 
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_L = perTramo(T111TS[, "SELF_HW_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = FALSE, 
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  vert_M_N = perTramo(T111TS[, "SELF_HW_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = FALSE,
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
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_OTQ = perTramo(T111TS[, "SELF_HW_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO",
                                               "TC", "AO"),
                       usrdef.outliersDate = c("2004-01-01", "2009-01-01",
                                               "2009-10-01", "2020-04-01"),
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
  vert_RTU = perTramo(T111TS[, "SELF_HW_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = FALSE, 
                       # usrdef.outliersType = NA,
                       # usrdef.outliersDate = NA,
                       # Trading Days ---------------------------------------------------------
                       usrdef.varEnabled = TRUE, 
                       usrdef.var = td5, usrdef.varType = "Calendar", 
                       tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE,
                       arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE) # not seasonal
  # =====================================================================================
  
)

vert_HW_SELF$run()


T111Adj_HW_SELF <- lapply(vert_HW_SELF$components, function(x){
  x$output$final$series
})
