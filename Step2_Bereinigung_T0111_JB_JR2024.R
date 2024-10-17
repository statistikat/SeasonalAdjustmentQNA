# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0111 Arbeitsvolumen Jobs
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T111TS muss geladen sein

# SAL -------------------


vert_JB_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T111TS[, "SAL_JB_W2_A"], template = "RSA3", 
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
                     arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 2
  vert_BTE = perTramo(T111TS[, "SAL_JB_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("TC", "LS"),
                       usrdef.outliersDate = c("2013-01-01","2020-04-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       #tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 3
  vert_C = perTramo(T111TS[, "SAL_JB_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS",
                                             "TC", "LS"),
                     usrdef.outliersDate = c("2002-01-01", "2009-07-01",
                                             "2013-01-01", "2020-04-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     #tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 4
  vert_F = perTramo(T111TS[, "SAL_JB_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO",
                                             "AO", "TC",
                                             "TC", "AO"),
                     usrdef.outliersDate = c("1996-01-01", "2005-01-01",
                                             "2006-01-01", "2008-01-01",
                                             "2013-01-01", "2020-04-01"),
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
  vert_GTI = perTramo(T111TS[, "SAL_JB_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS",
                                               "AO", "AO", 
                                               "AO", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                               "2020-04-01", "2020-10-01", 
                                               "2021-01-01", "2021-04-01"),
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
  # 6
  vert_J = perTramo(T111TS[, "SAL_JB_W2_J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "TC"),
                    usrdef.outliersDate = c("2009-01-01", "2000-10-01"),
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
  # 7
  vert_L = perTramo(T111TS[, "SAL_JB_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO",
                                             "AO", "AO",
                                             "AO", "AO"),
                     usrdef.outliersDate = c("2009-01-01", "2012-01-01",
                                             "2012-04-01", "2012-10-01",
                                             "2013-01-01", "2014-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 8
  vert_M_N = perTramo(T111TS[, "SAL_JB_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "LS", "AO"),
                      usrdef.outliersDate = c("1998-07-01", "2009-04-01",
                                              "2020-04-01", "2020-04-01"),
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
  # =====================================================================================
  # 9
  vert_OTQ = perTramo(T111TS[, "SAL_JB_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("TC", "LS",
                                               "AO"),
                       usrdef.outliersDate = c("2002-01-01", "2009-10-01",
                                               "2013-01-01"),
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
  # 10
  vert_RTU = perTramo(T111TS[, "SAL_JB_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "LS",
                                               "AO", "LS",
                                               "AO", "AO"),
                       usrdef.outliersDate = c("1999-10-01", "2020-01-01",
                                               "2020-04-01", "2020-04-01",
                                               "2021-01-01", "2021-04-01"),
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

vert_JB_SAL$run()


vert_Ka = perTramo(window(T111TS[, "SAL_JB_W2_K"], end = c(2003,4)), template = "RSA3",
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
                   automdl.enabled = FALSE, ######
                   arima.p  = 2, arima.d  = 0, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)

vert_Kb = perTramo(window(T111TS[, "SAL_JB_W2_K"], start = c(2003,1)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "AO",
                                           "LS"),
                   usrdef.outliersDate = c("2014-01-01", "2014-10-01",
                                           "2023-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, ######
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)

vert_Ka$run()
vert_Kb$run()

vert_Ka_sa <- vert_Ka$output$final$series[, "sa"]
vert_Kb_sa <- vert_Kb$output$final$series[, "sa"]

vert_Ka_t <- vert_Ka$output$final$series[, "t"]
vert_Kb_t <- vert_Kb$output$final$series[, "t"]

ta <- time(vert_Ka_sa)
tb <- time(vert_Kb_sa)

ii <- which(!is.na(match(ta, tb)))
vert_Ka_sa <- vert_Ka_sa * mean(vert_Kb_sa[1:4])/
  mean(vert_Ka_sa[ii])
vert_Ka_t <- vert_Ka_t * mean(vert_Kb_t[1:4])/
  mean(vert_Ka_t[ii])
vert_Kb_sa <- window(vert_Kb_sa, start = c(2004, 1))
vert_Kb_t <- window(vert_Kb_t, start = c(2004, 1))
#-------------------------------------------------

vert_K_sa <- ts_bind(vert_Ka_sa, vert_Kb_sa)
vert_K_t <- ts_bind(vert_Ka_t, vert_Kb_t)

vert_K <- cbind(y = T111TS[, "SAL_JB_W2_K"],
                sa = vert_K_sa,
                t = vert_K_t, 
                s = T111TS[, "SAL_JB_W2_K"]/vert_K_sa,
                i = vert_K_sa/vert_K_t)
#-------------------------------------------------------------------------------

T111Adj_JB_SAL <- lapply(vert_JB_SAL$components, function(x){
  x$output$final$series
})

T111Adj_JB_SAL$vert_K <- vert_K

# Verteilung Jobs SELF -------------------


vert_JB_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T111TS[, "SELF_JB_W2_A"], template = "RSA3", 
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
                    arima.p  = 3, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 2
  vert_BTE = perTramo(T111TS[, "SELF_JB_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "LS", "LS"),
                      usrdef.outliersDate = c("1996-01-01", "1998-10-01",
                                              "2008-01-01", "2009-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  # 3
  vert_C = perTramo(T111TS[, "SELF_JB_W2_C"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS"),
                    usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE, 
                    usrdef.var = td7, usrdef.varType = "Calendar", 
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  # 4
  vert_F = perTramo(T111TS[, "SELF_JB_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("TC", "LS"),
                     usrdef.outliersDate = c("1996-01-01", "2003-04-01"),
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
  # 5
  vert_GTI = perTramo(T111TS[, "SELF_JB_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS"),
                       usrdef.outliersDate = c("1996-01-01", "2021-04-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  # 6
  vert_J = perTramo(T111TS[, "SELF_JB_W2_J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS","LS"),
                    usrdef.outliersDate = c("2001-01-01","2007-01-01"),
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
  # 7
  vert_K = perTramo(T111TS[, "SELF_JB_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS"),
                     usrdef.outliersDate = c("1995-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  # 8
  vert_L = perTramo(T111TS[, "SELF_JB_W2_L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "TC"),
                    usrdef.outliersDate = c("2003-01-01", "2005-01-01",
                                            "2007-07-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = TRUE,
                    # usrdef.var = td7, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # tradingdays.test = "Joint_F",
                    # # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 9
  vert_M_N = perTramo(T111TS[, "SELF_JB_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC"),
                      usrdef.outliersDate = c("1995-10-01"),
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
  # 10
  # vert_OTQ = perTramo(T111TS[, "SELF_JB_W2_OTQ"], template = "RSA3", 
  #                      # Transformation -------------------------------------------------------        
  #                      transform.function = "Log",
  #                      # Outliers -------------------------------------------------------------
  #                      outlier.enabled = FALSE, 
  #                      usrdef.outliersEnabled = TRUE, 
  #                      usrdef.outliersType = c("LS", "TC",
  #                                              "AO", "AO"),
  #                      usrdef.outliersDate = c("1996-01-01", "2008-10-01",
  #                                              "2009-01-01", "2020-04-01"),
  #                      # Trading Days ---------------------------------------------------------
  #                      # usrdef.varEnabled = FALSE, 
  #                      # usrdef.var = NA, usrdef.varType = "Calendar", 
  #                      # tradingdays.option = "UserDefined",
  #                      # Easter ---------------------------------------------------------------
  #                      # easter.type = NA, easter.duration = 6,
  #                      # Arima-Model ----------------------------------------------------------
  #                      automdl.enabled = FALSE, 
  #                      arima.p  = 1, arima.d  = 0, arima.q  = 1, 
  #                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 11
  vert_RTU = perTramo(T111TS[, "SELF_JB_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("AO", "AO",
                                               "AO"),
                       usrdef.outliersDate = c("2012-01-01", "2012-10-01",
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
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # =====================================================================================
 
)

vert_JB_SELF$run()


# gtrennt:
vert_OTQa = perTramo(window(T111TS[, "SELF_JB_W2_OTQ"], end = c(2011,4)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("LS", "LS",
                                           "TC", "AO",
                                           "AO", "AO"),
                   usrdef.outliersDate = c("1996-01-01", "2008-10-01",
                                           "2008-01-01", "2009-01-01",
                                           "2009-04-01", "2009-10-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, ######
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)

vert_OTQb = perTramo(window(T111TS[, "SELF_JB_W2_OTQ"], start = c(2011,1)), template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE,
                     usrdef.outliersType = c("AO","AO"),
                     usrdef.outliersDate = c("2020-04-01","2023-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE,
                     # usrdef.var = NA, usrdef.varType = "Calendar",
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1,
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
vert_OTQa$run()
vert_OTQb$run()

vert_OTQa_sa <- vert_OTQa$output$final$series[, "sa"]
vert_OTQb_sa <- vert_OTQb$output$final$series[, "sa"]

vert_OTQa_t <- vert_OTQa$output$final$series[, "t"]
vert_OTQb_t <- vert_OTQb$output$final$series[, "t"]

ta <- time(vert_OTQa_sa)
tb <- time(vert_OTQb_sa)

ii <- which(!is.na(match(ta, tb)))
vert_OTQa_sa <- vert_OTQa_sa * mean(vert_OTQb_sa[1:4])/
  mean(vert_OTQa_sa[ii])
vert_OTQa_t <- vert_OTQa_t * mean(vert_OTQb_t[1:4])/
  mean(vert_OTQa_t[ii])
vert_OTQb_sa <- window(vert_OTQb_sa, start = c(2011, 1))
vert_OTQb_t <- window(vert_OTQb_t, start = c(2011, 1))
#-------------------------------------------------

vert_OTQ_sa <- ts_bind(vert_OTQa_sa, vert_OTQb_sa)
vert_OTQ_t <- ts_bind(vert_OTQa_t, vert_OTQb_t)

vert_OTQ <- cbind(y = T111TS[, "SELF_JB_W2_OTQ"],
                sa = vert_OTQ_sa,
                t = vert_OTQ_t, 
                s = T111TS[, "SELF_JB_W2_OTQ"]/vert_OTQ_sa,
                i = vert_OTQ_sa/vert_OTQ_t)



T111Adj_JB_SELF <- lapply(vert_JB_SELF$components, function(x){
  x$output$final$series
})

T111Adj_JB_SELF$vert_OTQ <- vert_OTQ