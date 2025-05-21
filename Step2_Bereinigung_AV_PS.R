# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Arbeitsvolumen Personen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# av muss geladen sein

# SAL -------------------


avxPSxSAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SALxPSxW2xA = perTramo(av[, "SALxPSxW2xA"], template = "RSA3", 
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
  SALxPSxW2xBTE = perTramo(av[, "SALxPSxW2xBTE"],  template = "RSA3",
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
  SALxPSxW2xC = perTramo(av[, "SALxPSxW2xC"], template = "RSA3",
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
  SALxPSxW2xF = perTramo(av[, "SALxPSxW2xF"], template = "RSA3",
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
  SALxPSxW2xGTI = perTramo(av[, "SALxPSxW2xGTI"] ,template = "RSA3",
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
  SALxPSxW2xJ = perTramo(av[, "SALxPSxW2xJ"], template = "RSA3", 
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
  SALxPSxW2xK = perTramo(av[, "SALxPSxW2xK"], template = "RSA3",
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
  SALxPSxW2xL = perTramo(av[, "SALxPSxW2xL"], template = "RSA3", 
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
  SALxPSxW2xM_N = perTramo(av[, "SALxPSxW2xM_N"], template = "RSA3", 
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
                                              "2021-01-01"),
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
  SALxPSxW2xOTQ = perTramo(av[, "SALxPSxW2xOTQ"], template = "RSA3", 
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
  SALxPSxW2xRTU = perTramo(av[, "SALxPSxW2xRTU"], template = "RSA3", 
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
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  SALxPSxW0x_T = perTramo(av[, "SALxPSxW0x_T"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "LS",
                                            "AO", "AO", 
                                            "AO", "AO", 
                                            "AO", "AO"),
                    usrdef.outliersDate = c("2008-01-01", "2009-04-01", 
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
                    arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)
)

avxPSxSAL$run()

output_ps_sal <- lapply(avxPSxSAL$components, function(x){
  x$output$final$series
})


# Verteilung Personen SELF -------------------


avxPSxSELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SELFxPSxW2xA = perTramo(av[, "SELFxPSxW2xA"], template = "RSA3", 
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
  SELFxPSxW2xBTE = perTramo(av[, "SELFxPSxW2xBTE"], template = "RSA3", 
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
  # av_C = perTramo(av[, "SELFxPSxW2xC"], template = "RSA3",
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
  SELFxPSxW2xF = perTramo(av[, "SELFxPSxW2xF"], template = "RSA3",
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
  SELFxPSxW2xGTI = perTramo(av[, "SELFxPSxW2xGTI"] , template = "RSA3",
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
  SELFxPSxW2xJ = perTramo(av[, "SELFxPSxW2xJ"],template = "RSA3", 
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
  SELFxPSxW2xK = perTramo(av[, "SELFxPSxW2xK"], template = "RSA3", 
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
  SELFxPSxW2xL = perTramo(av[, "SELFxPSxW2xL"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("LS", "TC",
                                            "LS", "AO", "TC","AO"),
                    usrdef.outliersDate = c("2005-01-01", "2021-07-01",
                                            "2003-01-01", "2023-07-01", "2011-01-01","2024-07-01"),
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
  SELFxPSxW2xM_N = perTramo(av[, "SELFxPSxW2xM_N"], template = "RSA3", 
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
  SELFxPSxW2xOTQ = perTramo(av[, "SELFxPSxW2xOTQ"], template = "RSA3", 
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
  SELFxPSxW2xRTU = perTramo(av[, "SELFxPSxW2xRTU"], template = "RSA3", 
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

avxPSxSELF$run()


# C SELF PS geteilt -----------

selfPsCa = perTramo(window(av[, "SELFxPSxW2xC"], end = c(2008,4)), template = "RSA3",
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

selfPsCb = perTramo(window(av[, "SELFxPSxW2xC"], start = c(2008,1)), template = "RSA3",
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

selfPsC <- cbind(y = av[, "SELFxPSxW2xC"],
                 sa = selfPsC_sa,
                 t = selfPsC_t, 
                 s = av[, "SELFxPSxW2xC"]/selfPsC_sa,
                 i = selfPsC_sa/selfPsC_t)
#-------------------------------------------------------------------------------

output_ps_self <- lapply(avxPSxSELF$components, function(x){
  x$output$final$series
})

output_ps_self$SELFxPSxW2xC <- selfPsC
