

ent_vol <- per_hts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  ent_A = per_tramo(T101TS$vol[, "A"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO","LS", "AO","AO",  "AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2002-04-01","2010-04-01" ,"2011-01-01", "2013-04-01", "2016-10-01",
                                            "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    #usrdef.varEnabled = TRUE, 
                    #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                    #tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_BTE = per_tramo(T101TS$vol[, "BTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS","AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                              "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
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
  ent_C = per_tramo(T101TS$vol[, "C"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS","AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                            "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
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
  ent_D31 = per_tramo(T101TS$vol[, "D31"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC", "AO", "AO", "AO", "AO", "AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2002-04-01", "2002-10-01", "2005-01-01", "2007-10-01",
                                              "2009-04-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_F = per_tramo(T101TS$vol[, "F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2003-01-01","2020-01-01", "2020-04-01" , "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    #usrdef.varEnabled = TRUE, 
                    #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                    #tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #            easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_G = per_tramo(T101TS$vol[, "G"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE, 
                    usrdef.var = td7, usrdef.varType = "Calendar", 
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_H = per_tramo(T101TS$vol[, "H"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "TC", "AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2009-01-01", "2004-01-01",
                                            "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    #usrdef.varEnabled = TRUE, 
                    #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                    #tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #            easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_I = per_tramo(T101TS$vol[, "I"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c( "AO", "AO", "AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2003-10-01", "2002-01-01",
                                            "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    #usrdef.varEnabled = TRUE, 
                    #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                    #tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  #ent_GVA = per_tramo(ent_ts[, "ent_GVA"], template = "RSA3",
  #                   # Transformation -------------------------------------------------------
  #                   transform.function = "Log",
  #                   # Outliers -------------------------------------------------------------
  #                   outlier.enabled = FALSE,
  #                   #             usrdef.outliersEnabled = TRUE, 
  #                   #             usrdef.outliersType = c("AO", "TC", "TC"),
  #                   #             usrdef.outliersDate = c("1999-07-01", "1996-07-01",
  #                   #                                     "2000-01-01"),
  #                   # Trading Days ---------------------------------------------------------
  #                   usrdef.varEnabled = TRUE, 
  #                   usrdef.var = td7lY, usrdef.varType = "Calendar", 
  #                   tradingdays.option = "UserDefined",
  #                   # Easter ---------------------------------------------------------------
  #                   #            easter.type = "IncludeEaster", easter.duration = 6,
  #                   # Arima-Model ----------------------------------------------------------
  #                   automdl.enabled = FALSE, 
  #                   arima.p  = 2, arima.d  = 1, arima.q  = 0, 
  #                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  ent_J = per_tramo(T101TS$vol[, "J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    #             usrdef.outliersEnabled = TRUE, 
                    #             usrdef.outliersType = c("LS", "LS", "TC"),
                    #             usrdef.outliersDate = c("2009-01-01", "2001-01-01",
                    #                                     "2004-01-01"),
                    # Trading Days ---------------------------------------------------------
                    #            usrdef.varEnabled = TRUE, 
                    #            usrdef.var = td7, usrdef.varType = "Calendar", 
                    #            tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #            easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 3, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  ent_K = per_tramo(T101TS$vol[, "K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("2001-01-01"),
                    # Trading Days ---------------------------------------------------------
                    #            usrdef.varEnabled = TRUE, 
                    #            usrdef.var = td7, usrdef.varType = "Calendar", 
                    #            tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #            easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  ent_L = per_tramo(T101TS$vol[, "L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    #usrdef.outliersEnabled = TRUE, 
                    #usrdef.outliersType = c("LS"),
                    #usrdef.outliersDate = c("2008-10-01"),
                    # Trading Days ---------------------------------------------------------
                    #            usrdef.varEnabled = TRUE, 
                    #            usrdef.var = td7, usrdef.varType = "Calendar", 
                    #            tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #            easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  ent_M_N = per_tramo(T101TS$vol[, "M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2009-01-01","2020-01-01",  "2020-04-01", "2020-07-01", "2020-10-01"),
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
  
  ent_OTQ = per_tramo(T101TS$vol[, "OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      #usrdef.outliersEnabled = TRUE, 
                      #usrdef.outliersType = c("AO"),
                      #usrdef.outliersDate = c("2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  ent_RTU = per_tramo(T101TS$vol[, "RTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS","AO", "AO",  "AO", "AO"),
                      usrdef.outliersDate = c("2004-04-01","2020-01-01", "2020-04-01", 
                                              "2020-07-01", "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
  # =====================================================================================
  
)

ent_vol$run()

################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################

##        P31_S15:

ent_D21a = per_tramo(window(T101TS$vol[, "D21"], end = c(2012,4)), template = "RSA3",
                     # Transformation -----------------------------------------
                     transform.function = "Log",
                     # Outliers -----------------------------------------------
                     #             outlier.enabled = FALSE, 
                     #             usrdef.outliersEnabled = TRUE, 
                     #             usrdef.outliersType = c("TC","LS"),
                     #             usrdef.outliersDate = c("2013-01-01", "2002-01-01"),
                     # Trading Days -------------------------------------------
                     #            usrdef.varEnabled = TRUE, 
                     #            usrdef.var = td7, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter -------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model --------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ============================================================================
ent_D21b = per_tramo(window(T101TS$vol[, "D21"], start = c(2012,1)), template = "RSA3",
                     # Transformation -----------------------------------------
                     transform.function = "Log",
                     # Outliers -----------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO"),
                     usrdef.outliersDate = c("2012-10-01", "2020-04-01"),
                     # Trading Days -------------------------------------------
                     #            usrdef.varEnabled = TRUE, 
                     #            usrdef.var = td7, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter -------------------------------------------------
                     #            easter.type = "IncludeEaster", easter.duration = 6,
                     # Arima-Model --------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ============================================================================
ent_D21a$run()
ent_D21b$run()

ent_D21a_sa <- ent_D21a$output$final$series[, 2]
ent_D21b_sa <- ent_D21b$output$final$series[, 2] %>% window(start = c(2013, 1))


ent_D21a_t <- ent_D21a$output$final$series[, 3]
ent_D21b_t <- ent_D21b$output$final$series[, 3] %>% window(start = c(2013, 1))

ent_D21_sa <- ts(c(ent_D21a_sa, ent_D21b_sa),
                 start = start(ent_D21a_sa),
                 freq = frequency(ent_D21a_sa))
ent_D21_t <- ts(c(ent_D21a_t, ent_D21b_t),
                start = start(ent_D21a_t),
                freq = frequency(ent_D21a_t))

ent_D21 <- cbind(y = T101TS$vol[, "D21"], sa = ent_D21_sa, 
                 t = ent_D21_t, s = T101TS$vol[, "D21"]/ent_D21_sa,
                 i = ent_D21_sa/ent_D21_t)
#-------------------------------------------------------------------------------

# BIP Gesamt ###################################################################
ent_BIP = per_tramo(T101TS$vol[, "BIP"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                    usrdef.outliersDate = c("2008-10-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE,
                    usrdef.var = td7, usrdef.varType = "Calendar",
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    #easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE,
                    arima.p  = 0, arima.d  = 1, arima.q  = 0,
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ===================================================================================
ent_BIP$run()