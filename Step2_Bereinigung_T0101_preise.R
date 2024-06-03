# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0101 Entstehung Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T101TS muss geladen sein

ent_price <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  ent_A = perTramo(T101TS$impPI_L[, "A"], template = "RSA3", 
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
                    #easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE), # no seasonality
  # ====================================================================================
  ent_BTE = perTramo(T101TS$impPI_L[, "BTE"], template = "RSA3", 
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
                      #            easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), # no seasonality
  # ====================================================================================
  ent_C = perTramo(T101TS$impPI_L[, "C"], template = "RSA3",
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
                    arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), # no seasonality
  
  # ====================================================================================
  #ent_D21 = perTramo(T101TS$impPI_L[, "D21"] , template = "RSA3",
  #                    # Transformation -------------------------------------------------------
  #                    transform.function = "Log",
  #                    # Outliers -------------------------------------------------------------
  #                    outlier.enabled = FALSE, 
  #                    usrdef.outliersEnabled = TRUE, 
  #                    usrdef.outliersType = c("TC"),
  #                    usrdef.outliersDate = c("1995-10-01"),
  #                    # Trading Days ---------------------------------------------------------
  #                    # usrdef.varEnabled = FALSE, 
  #                    # usrdef.var = NA, usrdef.varType = "Calendar", 
  #                    # tradingdays.option = "UserDefined",
  #                    # Easter ---------------------------------------------------------------
  #                    # easter.type = NA, easter.duration = 6,
  #                    # Arima-Model ----------------------------------------------------------
  #                    automdl.enabled = FALSE, 
  #                    arima.p  = 3, arima.d  = 1, arima.q  = 0, 
  #                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  ent_D31 = perTramo(T101TS$impPI_L[, "D31"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "TC", 
                                              "LS", "LS",
                                              "AO", "LS",
                                              "LS", "AO"),
                      usrdef.outliersDate = c("2005-01-01", "2005-04-01",
                                              "2004-01-01", "2021-01-01",
                                              "2022-07-01", "2022-10-01",
                                              "2023-01-01", "2024-01-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FASLE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 3, arima.d  = 0, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), 
  # ====================================================================================
  ent_F = perTramo(T101TS$impPI_L[, "F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS", 
                                            "LS", "LS"),
                    usrdef.outliersDate = c("2021-01-01", "2021-04-01",
                                            "2021-10-01", "2022-04-01"),
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
  ent_G = perTramo(T101TS$impPI_L[, "G"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "LS",
                                            "LS"),
                    usrdef.outliersDate = c("2008-10-01", "2022-01-01",
                                            "2022-04-01"),
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
  ent_H = perTramo(T101TS$impPI_L[, "H"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO",
                                            "LS", "LS",
                                            "AO"),
                    usrdef.outliersDate = c("2008-10-01", "2011-01-01",
                                            "2005-01-01", "2021-10-01",
                                            "2022-01-01"),
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
  ent_I = perTramo(T101TS$impPI_L[, "I"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("TC", "LS",
                                            "LS"),
                    usrdef.outliersDate = c("2008-10-01", "2020-07-01",
                                            "2022-01-01"),
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
  ent_J = perTramo(T101TS$impPI_L[, "J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "AO",
                                            "AO", "AO"),
                    usrdef.outliersDate = c("1996-01-01", "2012-07-01",
                                            "2013-07-01", "2015-07-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), # no seasonality
  # =====================================================================================
  ent_K = perTramo(T101TS$impPI_L[, "K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("2022-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE), # no seasonality
  # =====================================================================================
  ent_L = perTramo(T101TS$impPI_L[, "L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO"),
                    usrdef.outliersDate = c("2007-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE), # no seasonality
  # =====================================================================================
  ent_M_N = perTramo(T101TS$impPI_L[, "M_N"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS"),
                     usrdef.outliersDate = c("2000-07-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE,
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE), # no seasonality
  # =====================================================================================
  ent_OTQ = perTramo(T101TS$impPI_L[, "OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO",
                                              "AO", "LS",
                                              "LS"),
                      usrdef.outliersDate = c("2000-01-01", "1999-01-01",
                                              "2001-10-01", "2020-01-01",
                                              "2023-01-01"),
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
  ent_RTU = perTramo(T101TS$impPI_L[, "RTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO"),
                      usrdef.outliersDate = c("2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 3, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
  # =====================================================================================

)

ent_price$run()

T101Adj_impPI_L <- lapply(ent_price$components, function(x){
  x$output$final$series
})


################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################

##        D21:

ent_D21a = perTramo(window(T101TS$impPI_L[, "D21"], end = c(2012,4)), template = "RSA3",
                    # Transformation -----------------------------------------
                    transform.function = "Log",
                    # Outliers -----------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO"),
                     usrdef.outliersDate = c("1995-07-01"),
                    # Trading Days -------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter -------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model --------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# ============================================================================
ent_D21b = perTramo(window(T101TS$impPI_L[, "D21"], start = c(2012,1)), template = "RSA3",
                    # Transformation -----------------------------------------
                    transform.function = "Log",
                    # Outliers -----------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "AO"),
                    usrdef.outliersDate = c("2015-04-01", "2020-04-01"),
                    # Trading Days -------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter -------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model --------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 3, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE)
# ============================================================================
ent_D21a$run()
ent_D21b$run()

ent_D21a_sa <- ent_D21a$output$final$series[, "sa"]
ent_D21b_sa <- ent_D21b$output$final$series[, "sa"] %>% window(start = c(2013, 1))


ent_D21a_t <- ent_D21a$output$final$series[, "t"]
ent_D21b_t <- ent_D21b$output$final$series[, "t"] %>% window(start = c(2013, 1))

ent_D21_sa <- ts_bind(ent_D21a_sa, ent_D21b_sa)
ent_D21_t <- ts_bind(ent_D21a_t, ent_D21b_t)

ent_D21 <- cbind(y = T101TS$impPI_L[, "D21"], 
                 sa = ent_D21_sa, 
                 t = ent_D21_t, 
                 s = T101TS$impPI_L[, "D21"]/ent_D21_sa,
                 i = ent_D21_sa/ent_D21_t)
#-------------------------------------------------------------------------------

T101Adj_impPI_L$D21 <- ent_D21

