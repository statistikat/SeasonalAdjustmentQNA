# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0101 Entstehung Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# T101TS muss geladen sein 

ent_vol <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  ent_A = perTramo(T101TS$vol[, "A"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("TC"),
                    usrdef.outliersDate = c("2010-04-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE,
                    usrdef.var = td7, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  ent_BTE = perTramo(T101TS$vol[, "BTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO"),
                      usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                              "2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = TRUE, 
                      usrdef.var = td7lY, usrdef.varType = "Calendar", 
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_C = perTramo(T101TS$vol[, "C"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "AO"),
                    usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                            "2020-04-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE, 
                    usrdef.var = td7lY, usrdef.varType = "Calendar", 
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  
  # ====================================================================================
  ent_D31 = perTramo(T101TS$vol[, "D31"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC", "AO"),
                      usrdef.outliersDate = c("2002-04-01", "2007-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_F = perTramo(T101TS$vol[, "F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "TC", "AO"),
                    usrdef.outliersDate = c("2003-01-01", "2008-01-01",
                                            "2020-04-01"),
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
  ent_G = perTramo(T101TS$vol[, "G"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "LS","AO"),
                    usrdef.outliersDate = c("1999-07-01", "2020-01-01", "2020-04-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  ent_H = perTramo(T101TS$vol[, "H"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "TC",
                                            "AO", "AO",
                                            "AO", "AO",
                                            "AO", "AO",
                                            "LS"),
                    usrdef.outliersDate = c("2009-01-01", "2004-01-01", 
                                            "2020-01-01", "2020-04-01",
                                            "2020-07-01", "2020-10-01",
                                            "2021-01-01", "2021-04-01",
                                            "2022-04-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  ent_I = perTramo(T101TS$vol[, "I"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c( "TC", "TC",
                                             "TC", "AO",
                                             "AO", 
                                             "AO", "AO",
                                             "AO", "AO",
                                             "AO", "AO"),
                    usrdef.outliersDate = c("2008-01-01", "2003-10-01",
                                            "2018-10-01", "2020-01-01",
                                            "2020-04-01", 
                                            "2020-10-01", "2021-01-01",
                                            "2021-04-01", "2021-07-01",
                                            "2021-10-01", "2022-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    easter.type = "IncludeEaster", easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  ent_J = perTramo(T101TS$vol[, "J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c( "LS"),
                    usrdef.outliersDate = c("2020-04-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  ent_K = perTramo(T101TS$vol[, "K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS"),
                    usrdef.outliersDate = c("2001-01-01", "2008-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  ent_L = perTramo(T101TS$vol[, "L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    # usrdef.outliersEnabled = FALSE,
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("2008-10-01"),
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
  ent_M_N = perTramo(T101TS$vol[, "M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS", "AO"),
                      usrdef.outliersDate = c("2009-01-01","2020-04-01", "2020-04-01"),
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
  
  ent_OTQ = perTramo(T101TS$vol[, "OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "TC"),
                      usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
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
  ent_RTU = perTramo(T101TS$vol[, "RTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO", 
                                              "AO", "AO",
                                              "AO"),
                      usrdef.outliersDate = c("2004-04-01", "2020-01-01",
                                              "2020-04-01", "2020-10-01", 
                                              "2021-01-01", "2021-04-01",
                                              "2021-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 3, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE)
  # =====================================================================================
  
)

ent_vol$run()

T101Adj_vol <- lapply(ent_vol$components, function(x){
  x$output$final$series
})


################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################

##        P31_S15:

ent_vD21a = perTramo(window(T101TS$vol[, "D21"], end = c(2012,4)), template = "RSA3",
                     # Transformation -----------------------------------------
                     transform.function = "Log",
                     # Outliers -----------------------------------------------
                     # outlier.enabled = FALSE, 
                     # usrdef.outliersEnabled = FALSE, 
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days -------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter -------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model --------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ============================================================================
ent_vD21b = perTramo(window(T101TS$vol[, "D21"], start = c(2012,1)), template = "RSA3",
                     # Transformation -----------------------------------------
                     transform.function = "Log",
                     # Outliers -----------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "LS",
                                             "AO", "AO"),
                     usrdef.outliersDate = c("2012-10-01", "2020-01-01",
                                             "2020-04-01", "2021-07-01" 
                                             ),
                     # Trading Days -------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter -------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model --------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
# ============================================================================
ent_vD21a$run()
ent_vD21b$run()

ent_D21a_sa <- ent_vD21a$output$final$series[, "sa"]
ent_D21b_sa <- ent_vD21b$output$final$series[, "sa"] %>% window(start = c(2013, 1))


ent_D21a_t <- ent_vD21a$output$final$series[, "t"]
ent_D21b_t <- ent_vD21b$output$final$series[, "t"] %>% window(start = c(2013, 1))

ent_D21_sa <- ts_bind(ent_D21a_sa, ent_D21b_sa)
ent_D21_t <- ts_bind(ent_D21a_t, ent_D21b_t)

ent_D21 <- cbind(y = T101TS$vol[, "D21"], 
                 sa = ent_D21_sa, 
                 t = ent_D21_t, 
                 s = T101TS$vol[, "D21"]/ent_D21_sa,
                 i = ent_D21_sa/ent_D21_t)
#-------------------------------------------------------------------------------

T101Adj_vol$D21 <- ent_D21
T101Adj_vol$D21

# BIP Gesamt ###################################################################
# nur zum Vergleich
ent_BIP = perTramo(T101TS$vol[, "BIP"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("AO", "AO"),
                    usrdef.outliersDate = c("2020-04-01", "2021-01-01"),
                    # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = TRUE,
                    usrdef.var = td7, usrdef.varType = "Calendar",
                    tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE,
                    arima.p  = 0, arima.d  = 1, arima.q  = 1,
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ===================================================================================
ent_BIP$run()

