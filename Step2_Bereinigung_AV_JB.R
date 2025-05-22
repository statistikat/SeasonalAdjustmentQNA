# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Arbeitsvolumen Jobs
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# av muss geladen sein

# SAL -------------------


av_JB_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SALxJBxW2xA = perTramo(av[, "SALxJBxW2xA"], template = "RSA3", 
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
  SALxJBxW2xBTE = perTramo(av[, "SALxJBxW2xBTE"], template = "RSA3", 
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
  SALxJBxW2xC = perTramo(av[, "SALxJBxW2xC"], template = "RSA3",
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
  SALxJBxW2xF = perTramo(av[, "SALxJBxW2xF"], template = "RSA3",
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
  SALxJBxW2xGTI = perTramo(av[, "SALxJBxW2xGTI"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "AO", "AO", 
                                              "AO", "AO",
                                              "LS"),
                      usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                              "2020-04-01", "2020-10-01", 
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
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 6
  SALxJBxW2xJ = perTramo(av[, "SALxJBxW2xJ"], template = "RSA3", 
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
  SALxJBxW2xL = perTramo(av[, "SALxJBxW2xL"], template = "RSA3", 
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
  SALxJBxW2xM_N = perTramo(av[, "SALxJBxW2xM_N"], template = "RSA3", 
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
  SALxJBxW2xOTQ = perTramo(av[, "SALxJBxW2xOTQ"], template = "RSA3", 
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
  SALxJBxW2xRTU = perTramo(av[, "SALxJBxW2xRTU"], template = "RSA3", 
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

av_JB_SAL$run()


av_Ka = perTramo(window(av[, "SALxJBxW2xK"], end = c(2003,4)), template = "RSA3",
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

av_Kb = perTramo(window(av[, "SALxJBxW2xK"], start = c(2003,1)), template = "RSA3",
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

av_Ka$run()
av_Kb$run()

av_Ka_sa <- av_Ka$output$final$series[, "sa"]
av_Kb_sa <- av_Kb$output$final$series[, "sa"]

av_Ka_t <- av_Ka$output$final$series[, "t"]
av_Kb_t <- av_Kb$output$final$series[, "t"]

ta <- time(av_Ka_sa)
tb <- time(av_Kb_sa)

ii <- which(!is.na(match(ta, tb)))
av_Ka_sa <- av_Ka_sa * mean(av_Kb_sa[1:4])/
  mean(av_Ka_sa[ii])
av_Ka_t <- av_Ka_t * mean(av_Kb_t[1:4])/
  mean(av_Ka_t[ii])
av_Kb_sa <- window(av_Kb_sa, start = c(2004, 1))
av_Kb_t <- window(av_Kb_t, start = c(2004, 1))
#-------------------------------------------------

av_K_sa <- ts_bind(av_Ka_sa, av_Kb_sa)
av_K_t <- ts_bind(av_Ka_t, av_Kb_t)

av_K <- cbind(y = av[, "SALxJBxW2xK"],
                sa = av_K_sa,
                t = av_K_t, 
                s = av[, "SALxJBxW2xK"]/av_K_sa,
                i = av_K_sa/av_K_t)
#-------------------------------------------------------------------------------

output_jb_sal <- lapply(av_JB_SAL$components, function(x){
  x$output$final$series
})

output_jb_sal$SALxJBxW2xK <- av_K

# Verteilung Jobs SELF -------------------


av_JB_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SELFxJBxW2xA = perTramo(av[, "SELFxJBxW2xA"], template = "RSA3", 
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
  SELFxJBxW2xBTE = perTramo(av[, "SELFxJBxW2xBTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS",
                                              "LS", "LS","LS"),
                      usrdef.outliersDate = c("1996-01-01", "1998-10-01",
                                              "2008-01-01", "2009-01-01",
                                              "2021-04-01"),
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
  SELFxJBxW2xC = perTramo(av[, "SELFxJBxW2xC"], template = "RSA3",
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
  SELFxJBxW2xF = perTramo(av[, "SELFxJBxW2xF"], template = "RSA3",
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
  SELFxJBxW2xGTI = perTramo(av[, "SELFxJBxW2xGTI"] , template = "RSA3",
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
  SELFxJBxW2xJ = perTramo(av[, "SELFxJBxW2xJ"], template = "RSA3", 
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
  SELFxJBxW2xK = perTramo(av[, "SELFxJBxW2xK"], template = "RSA3", 
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
  SELFxJBxW2xL = perTramo(av[, "SELFxJBxW2xL"], template = "RSA3", 
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
  SELFxJBxW2xM_N = perTramo(av[, "SELFxJBxW2xM_N"], template = "RSA3", 
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
  # av_OTQ = perTramo(av[, "SELFxJBxW2xOTQ"], template = "RSA3", 
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
  SELFxJBxW2xRTU = perTramo(av[, "SELFxJBxW2xRTU"], template = "RSA3", 
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

av_JB_SELF$run()


# gtrennt:
av_OTQa = perTramo(window(av[, "SELFxJBxW2xOTQ"], end = c(2011,4)), template = "RSA3",
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

av_OTQb = perTramo(window(av[, "SELFxJBxW2xOTQ"], start = c(2011,1)), template = "RSA3",
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
av_OTQa$run()
av_OTQb$run()

av_OTQa_sa <- av_OTQa$output$final$series[, "sa"]
av_OTQb_sa <- av_OTQb$output$final$series[, "sa"]

av_OTQa_t <- av_OTQa$output$final$series[, "t"]
av_OTQb_t <- av_OTQb$output$final$series[, "t"]

ta <- time(av_OTQa_sa)
tb <- time(av_OTQb_sa)

ii <- which(!is.na(match(ta, tb)))
av_OTQa_sa <- av_OTQa_sa * mean(av_OTQb_sa[1:4])/
  mean(av_OTQa_sa[ii])
av_OTQa_t <- av_OTQa_t * mean(av_OTQb_t[1:4])/
  mean(av_OTQa_t[ii])
av_OTQb_sa <- window(av_OTQb_sa, start = c(2011, 1))
av_OTQb_t <- window(av_OTQb_t, start = c(2011, 1))
#-------------------------------------------------

av_OTQ_sa <- ts_bind(av_OTQa_sa, av_OTQb_sa)
av_OTQ_t <- ts_bind(av_OTQa_t, av_OTQb_t)

av_OTQ <- cbind(y = av[, "SELFxJBxW2xOTQ"],
                  sa = av_OTQ_sa,
                  t = av_OTQ_t, 
                  s = av[, "SELFxJBxW2xOTQ"]/av_OTQ_sa,
                  i = av_OTQ_sa/av_OTQ_t)



output_jb_self <- lapply(av_JB_SELF$components, function(x){
  x$output$final$series
})

output_jb_self$SELFxJBxW2xOTQ <- av_OTQ
