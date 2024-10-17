# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0111 Arbeitsvolumen Personen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T111TS muss geladen sein

# SAL -------------------


vert_PS_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T111TS[, "SAL_PS_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO",
                                            "AO", "AO"),
                    usrdef.outliersDate = c("2007-01-01", "2008-01-01",
                                            "2008-10-01", "2020-04-01"),
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
  # 2
  vert_BTE = perTramo(T111TS[, "SAL_PS_W2_BTE"],  template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "LS", "LS",
                                              "LS"),
                      usrdef.outliersDate = c("2020-04-01","2013-01-01",
                                              "2009-04-01","2009-07-01",
                                              "1996-01-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = TRUE,
                      # usrdef.var = td7, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # tradingdays.test = "Joint_F",
                      # # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 3
  vert_C = perTramo(T111TS[, "SAL_PS_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS", 
                                             "LS", "LS",
                                             "LS", "LS", 
                                             "LS", "LS"),
                     usrdef.outliersDate = c("1996-01-01", "2002-01-01",
                                             "2004-01-01", "2007-01-01",
                                             "2009-04-01", "2009-07-01",
                                             "2008-10-01", "2020-04-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE,
                     # usrdef.var = td7, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # tradingdays.test = "Joint_F",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 4
  vert_F = perTramo(T111TS[, "SAL_PS_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", 
                                             "TC", "AO",
                                             "LS"),
                     usrdef.outliersDate = c("2005-01-01","2006-01-01",
                                             "2008-01-01","2020-04-01",
                                             "2013-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 5
  vert_GTI = perTramo(T111TS[, "SAL_PS_W2_GTI"] ,template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO","AO","LS","TC","LS","AO","LS","AO","LS","LS"),
                      usrdef.outliersDate = c("2020-04-01", "2021-01-01",
                                              "2021-07-01", "2020-10-01", 
                                              "2020-01-01", "2012-10-01",
                                              "2022-04-01", "1996-10-01", 
                                              "1999-01-01", "2009-01-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 6
  vert_J = perTramo(T111TS[, "SAL_PS_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "LS"),
                     usrdef.outliersDate = c("2006-10-01", "2000-01-01"),
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
  vert_K = perTramo(T111TS[, "SAL_PS_W2_K"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "LS"),
                    usrdef.outliersDate = c("2015-01-01","2012-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0,
                    arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 8
  vert_L = perTramo(T111TS[, "SAL_PS_W2_L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("TC","TC",
                                            "AO","TC"),
                    usrdef.outliersDate = c("2013-01-01","2012-01-01",
                                            "2014-10-01","2021-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 9
  vert_M_N = perTramo(T111TS[, "SAL_PS_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "LS", "AO",
                                              "LS"),
                      usrdef.outliersDate = c("2009-01-01", "2009-04-01",
                                              "2020-04-01", "2020-04-01",
                                              "2022-01-01"),
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
  vert_OTQ = perTramo(T111TS[, "SAL_PS_W2_OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c("AO","AO",
                                              "AO"),
                      usrdef.outliersDate = c("2021-01-01","2009-10-01",
                                              "2013-01-01"),
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
  # 11
  vert_RTU = perTramo(T111TS[, "SAL_PS_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO",
                                              "AO"),
                       usrdef.outliersDate = c("2004-01-01", "2020-04-01",
                                               "2020-04-01", "2021-01-01",
                                               "2021-04-01"),
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
  # =====================================================================================
  
)

vert_PS_SAL$run()

T111Adj_PS_SAL <- lapply(vert_PS_SAL$components, function(x){
  x$output$final$series
})


# Verteilung Personen SELF -------------------


vert_PS_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T111TS[, "SELF_PS_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
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
                     arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 2
  vert_BTE = perTramo(T111TS[, "SELF_PS_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS"),
                       usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 3
  # vert_C = perTramo(T111TS[, "SELF_PS_W2_C"], template = "RSA3",
  #                    # Transformation -------------------------------------------------------
  #                    transform.function = "Log",
  #                    # Outliers -------------------------------------------------------------
  #                    outlier.enabled = FALSE, 
  #                    usrdef.outliersEnabled = TRUE, 
  #                    usrdef.outliersType = c("LS", "LS"),
  #                    usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
  #                    # Trading Days ---------------------------------------------------------
  #                    # usrdef.varEnabled = FALSE, 
  #                    # usrdef.var = NA, usrdef.varType = "Calendar", 
  #                    # tradingdays.option = "UserDefined",
  #                    # Easter ---------------------------------------------------------------
  #                    # easter.type = NA, easter.duration = 6,
  #                    # Arima-Model ----------------------------------------------------------
  #                    automdl.enabled = FALSE, 
  #                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
  #                    arima.bp = 0, arima.bd = 0, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 4
  vert_F = perTramo(T111TS[, "SELF_PS_W2_F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    # usrdef.outliersType = c("TC", "LS"),
                    # usrdef.outliersDate = c("1996-01-01", "2003-04-01"),
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
  # 5
  vert_GTI = perTramo(T111TS[, "SELF_PS_W2_GTI"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      # usrdef.outliersEnabled = TRUE,
                      # usrdef.outliersType = c("LS", "LS"),
                      # usrdef.outliersDate = c("1996-01-01", "2021-04-01"),
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
  # 6
  vert_J = perTramo(T111TS[, "SELF_PS_W2_J"],template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "TC"),
                    usrdef.outliersDate = c("2001-01-01", "2007-01-01",
                                            "2020-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    #            tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 7
  vert_K = perTramo(T111TS[, "SELF_PS_W2_K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "LS","LS"),
                    usrdef.outliersDate = c("2010-01-01", "1995-04-01",
                                            "2005-04-01","1995-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),  
  # =====================================================================================
  # 8
  vert_L = perTramo(T111TS[, "SELF_PS_W2_L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "TC",
                                            "LS", "AO", "TC"),
                    usrdef.outliersDate = c("2005-01-01", "2021-07-01",
                                            "2003-01-01", "2023-07-01", "2011-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = td7, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # # tradingdays.test = "Joint_F",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0,  
                    arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), 
  # =====================================================================================
  # 9
  vert_M_N = perTramo(T111TS[, "SELF_PS_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC","AO"),
                      usrdef.outliersDate = c("1995-10-01","2020-01-01"),
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
  # 10
  vert_OTQ = perTramo(T111TS[, "SELF_PS_W2_OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "LS",
                                              "LS", "AO",
                                              "LS","LS"),
                      usrdef.outliersDate = c("2010-10-01", "2009-01-01",
                                              "1996-01-01", "2022-10-01",
                                              "2003-01-01","2008-07-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 11
  vert_RTU = perTramo(T111TS[, "SELF_PS_W2_RTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "None",
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
  # =====================================================================================
 
)

vert_PS_SELF$run()


# C SELF PS geteilt -----------

selfPsCa = perTramo(window(T111TS[, "SELF_PS_W2_C"], end = c(2008,4)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "LS"),
                   usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, ######
                   arima.p  = 1, arima.d  = 0, arima.q  = 0,
                   arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)

selfPsCb = perTramo(window(T111TS[, "SELF_PS_W2_C"], start = c(2008,1)), template = "RSA3",
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
                   arima.p  = 0, arima.d  = 1, arima.q  = 3,
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE) # no seasonality

selfPsCa$run()
selfPsCb$run()

selfPsCa_sa <- selfPsCa$output$final$series[, "sa"]
selfPsCb_sa <- selfPsCb$output$final$series[, "sa"]

selfPsCa_t <- selfPsCa$output$final$series[, "t"]
selfPsCb_t <- selfPsCb$output$final$series[, "t"]

ta <- time(selfPsCa_sa)
tb <- time(selfPsCb_sa)

ii <- which(!is.na(match(ta, tb)))
selfPsCa_sa <- selfPsCa_sa * mean(selfPsCb_sa[1:4])/
  mean(selfPsCa_sa[ii])
selfPsCa_t <- selfPsCa_t * mean(selfPsCb_t[1:4])/
  mean(selfPsCa_t[ii])
selfPsCb_sa <- window(selfPsCb_sa, start = c(2008, 1))
selfPsCb_t <- window(selfPsCb_t, start = c(2008, 1))
#-------------------------------------------------

selfPsC_sa <- ts_bind(selfPsCa_sa, selfPsCb_sa)
selfPsC_t <- ts_bind(selfPsCa_t, selfPsCb_t)

selfPsC <- cbind(y = T111TS[, "SELF_PS_W2_C"],
                sa = selfPsC_sa,
                t = selfPsC_t, 
                s = T111TS[, "SELF_PS_W2_C"]/selfPsC_sa,
                i = selfPsC_sa/selfPsC_t)
#-------------------------------------------------------------------------------

T111Adj_PS_SELF <- lapply(vert_PS_SELF$components, function(x){
  x$output$final$series
})

T111Adj_PS_SELF$vert_C <- selfPsC
