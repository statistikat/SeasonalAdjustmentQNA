# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0102 Verwendung Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T102TS muss geladen sein

vcl_price <- perHts(
  vcl_AN111 = perTramo(T102TS$impPI_L[, "AN111"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("LS"),
                        usrdef.outliersDate = c("2009-01-01"),
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
  vcl_AN112 = perTramo(T102TS$impPI_L[, "AN112"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("LS"),
                        usrdef.outliersDate = c("2009-01-01"),
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
  vcl_AN115 = perTramo(T102TS$impPI_L[, "AN115"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "None",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("AO", "TC", "AO", "AO", "AO", "AO", "AO", "AO"),
                        usrdef.outliersDate = c("2002-04-01", "2001-04-01",
                                                "2020-01-01", "2020-04-01", 
                                                "2020-07-01", "2020-10-01", 
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
                        arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  vcl_AN117 = perTramo(T102TS$impPI_L[, "AN117"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                                     usrdef.outliersEnabled = TRUE, 
                                     usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO", "AO"),
                                     usrdef.outliersDate = c("2020-01-01", "2020-04-01", "2020-07-01", 
                                                             "2020-10-01", "2021-01-01", "2021-04-01"),
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
  vcl_P61 = perTramo(T102TS$impPI_L[, "P61"], template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS", "LS", "LS"),
                      usrdef.outliersDate = c("2010-04-01", "2008-10-01",
                                              "2011-01-01", "2004-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  vcl_P62 = perTramo(T102TS$impPI_L[, "P62"], template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO"),
                      usrdef.outliersDate = c("2011-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE,
                      # usrdef.var = NA, usrdef.varType = "Calendar",
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  vcl_P71 = perTramo(T102TS$impPI_L[, "P71"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO"),
                       usrdef.outliersDate = c("2009-01-01", "2021-04-01"),
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
  # =====================================================================================
  vcl_P72 = perTramo(T102TS$impPI_L[, "P72"], template = "RSA3", 
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
                      arima.p  = 1, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vcl_P31_S14 = perTramo(T102TS$impPI_L[, "P31_S14"], template = "RSA3", 
                          # Transformation -------------------------------------------------------  
                          transform.function = "Log",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO", "AO", "AO"),
                          usrdef.outliersDate = c("2008-10-01","2020-01-01", "2020-04-01", 
                                                  "2020-07-01", "2020-10-01", "2021-01-01", 
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
                          arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vcl_P31_S15 = perTramo(T102TS$impPI_L[, "P31_S15"], template = "RSA3",
                          # Transformation -------------------------------------------------------
                          transform.function = "Log",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO", "AO", "AO", "AO"),
                          usrdef.outliersDate = c("1998-07-01", "1999-04-01",
                                                  "2020-01-01", "2020-04-01", 
                                                  "2020-07-01", "2020-10-01", 
                                                  "2021-01-01", "2021-04-01"),
                          # Trading Days ---------------------------------------------------------
                          # usrdef.varEnabled = FALSE, 
                          # usrdef.var = NA, usrdef.varType = "Calendar", 
                          # tradingdays.option = "UserDefined",
                          # Easter ---------------------------------------------------------------
                          # easter.type = NA, easter.duration = 6,
                          # Arima-Model ----------------------------------------------------------
                          automdl.enabled = FALSE, 
                          arima.p  = 1, arima.d  = 1, arima.q  = 1, 
                          arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  
  # =====================================================================================
  vcl_P31_S13 = perTramo(T102TS$impPI_L[, "P31_S13"], template = "RSA3",
                          # Transformation -------------------------------------------------------
                          transform.function = "None",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("AO", "TC", "AO", "AO", "AO"),
                          usrdef.outliersDate = c("2001-10-01", "2000-10-01", 
                                                  "2002-01-01", "2021-01-01", "2021-04-01"),
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
  # =======================================================================================
  vcl_P32_S13 = perTramo(T102TS$impPI_L[, "P32_S13"], template = "RSA3",
                          # Transformation -------------------------------------------------------
                          transform.function = "None",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("LS", "AO", "LS"),
                          usrdef.outliersDate = c("2004-10-01", "2001-10-01", 
                                                  "2005-04-01"),
                          # Trading Days ---------------------------------------------------------
                          # usrdef.varEnabled = FALSE, 
                          # usrdef.var = NA, usrdef.varType = "Calendar", 
                          # tradingdays.option = "UserDefined",
                          # Easter ---------------------------------------------------------------
                          # easter.type = NA, easter.duration = 6,
                          # Arima-Model ----------------------------------------------------------
                          automdl.enabled = FALSE, 
                          arima.p  = 3, arima.d  = 1, arima.q  = 0, 
                          arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =======================================================================================
  vcl_N1131G = perTramo(T102TS$impPI_L[, "N1131G"], template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO", "AO", "AO"),
                         usrdef.outliersDate = c("2019-04-01","2020-01-01", "2020-04-01", 
                                                 "2020-07-01", "2020-10-01", "2021-01-01", "2021-01-01"),
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
  # ======================================================================================
  vcl_N1132G = perTramo(T102TS$impPI_L[, "N1132G"], template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("AO", "TC"),
                         usrdef.outliersDate = c("2012-07-01", "2005-04-01"),
                         # Trading Days ---------------------------------------------------------
                         # usrdef.varEnabled = FALSE, 
                         # usrdef.var = NA, usrdef.varType = "Calendar", 
                         # tradingdays.option = "UserDefined",
                         # Easter ---------------------------------------------------------------
                         # easter.type = NA, easter.duration = 6,
                         # Arima-Model ----------------------------------------------------------
                         automdl.enabled = FALSE, 
                         arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                         arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # ======================================================================================
  vcl_N11OG = perTramo(T102TS$impPI_L[, "N11OG"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("AO", "LS"),
                        usrdef.outliersDate = c("2007-10-01", "2012-01-01"),
                        # Trading Days ---------------------------------------------------------
                        # usrdef.varEnabled = FALSE, 
                        # usrdef.var = NA, usrdef.varType = "Calendar", 
                        # tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        # easter.type = NA, easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                        arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  vcl_P5 = perTramo(T102TS$impPI_L[, "P5"], template = "RSA3",
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
                        arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE)
  
)

vcl_price$run()



#-------------------------------------------------------------------------------

T102Adj_impPI_L <- lapply(vcl_price$components, function(x){
  x$output$final$series
})
