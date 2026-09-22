# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung Arbeitsvolumen Hours Worked
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# av muss geladen sein
# SAL ---------------------------------

av_HW_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SALxHWxW2xA = perTramo(av[, "SALxHWxW2xA"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO","AO"),
                    usrdef.outliersDate = c("2009-01-01","2010-01-01"),
                    # # Trading Days ---------------------------------------------------------
                    usrdef.varEnabled = FALSE,
                    usrdef.var = td7, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 2
  SALxHWxW2xBTE = perTramo(av[, "SALxHWxW2xBTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "AO"),
                      usrdef.outliersDate = c("2009-01-01", "2020-04-01"),
                      # outlier.usedefcv = FALSE,
                      # outlier.cv = 3.97,
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
  # 3
  SALxHWxW2xC = perTramo(av[, "SALxHWxW2xC"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", 
                                            "AO", "AO"),
                    usrdef.outliersDate = c("2009-01-01", 
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
  # 4
  SALxHWxW2xF = perTramo(av[, "SALxHWxW2xF"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO","TC"),
                    usrdef.outliersDate = c("2020-01-01", "2020-04-01","2008-01-01"),
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
  # 5
  SALxHWxW2xGTI = perTramo(av[, "SALxHWxW2xGTI"] ,  template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c( "TC", "AO",
                                               "AO", "LS",
                                               "AO"),
                      usrdef.outliersDate = c("2020-04-01", "2020-07-01",
                                              "2021-01-01", "2020-01-01",
                                              "2021-07-01"),
                      # # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = FALSE,
                      usrdef.var = td5, usrdef.varType = "Calendar",
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 6
  SALxHWxW2xJ = perTramo(av[, "SALxHWxW2xJ"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
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
  # 7
  SALxHWxW2xK = perTramo(av[, "SALxHWxW2xK"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE,
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
  # 8 # Identifiable seasonality not present
  SALxHWxW2xL = perTramo(av[, "SALxHWxW2xL"], template = "RSA3", 
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
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # 9
  SALxHWxW2xM_N = perTramo(av[, "SALxHWxW2xM_N"], template = "RSA3", 
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
  # 10
  SALxHWxW2xOTQ = perTramo(av[, "SALxHWxW2xOTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO"),
                      usrdef.outliersDate = c("2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = TRUE, 
                      usrdef.var = td7, usrdef.varType = "Calendar", 
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 11
  SALxHWxW2xRTU = perTramo(av[, "SALxHWxW2xRTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "LS","LS"),
                      usrdef.outliersDate = c("2020-04-01","2020-10-01","2021-04-01"),
                      # outlier.usedefcv = FALSE,
                      # outlier.cv = 3.1,
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

av_HW_SAL$run()

# # check if NEW outliers are detected
# source("get_new_outliers.R")
# tsnames <- names(av_HW_SAL$components)
# for(i in seq_along(tsnames)) {
#   cat(i,":",tsnames[i],"\n")
#   oldres <- av_HW_SAL$getComponent(tsnames[i])
#   print(get_new_outliers(oldres))
#   cat("\n")
# }


output_hw_sal <- lapply(av_HW_SAL$components, function(x){
  x$output$final$series
})


# SELF ----------------
av_HW_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  SELFxHWxW2xA = perTramo(av[, "SELFxHWxW2xA"], template = "RSA3", 
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
  # 2 # Identifiable seasonality not present
  SELFxHWxW2xBTE = perTramo(av[, "SELFxHWxW2xBTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c("LS","TC"),
                      usrdef.outliersDate = c("2007-10-01","2010-07-01"),
                      # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = TRUE,
                      usrdef.var = td7, usrdef.varType = "Calendar",
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 3 # Identifiable seasonality not present
  SELFxHWxW2xC = perTramo(av[, "SELFxHWxW2xC"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    # outlier.usedefcv = FALSE,
                    # outlier.cv = 3.54,
                    # # usrdef.outliersEnabled = FALSE,
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
  # 4
  SELFxHWxW2xF = perTramo(av[, "SELFxHWxW2xF"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE,
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
  # 5
  SELFxHWxW2xGTI = perTramo(av[, "SELFxHWxW2xGTI"] ,  template = "RSA3",
                            # Transformation -------------------------------------------------------
                            transform.function = "None",
                            # Outliers -------------------------------------------------------------
                            outlier.enabled = FALSE, 
                            usrdef.outliersEnabled = TRUE, 
                            usrdef.outliersType = c("AO",  
                                                    "AO"),
                            usrdef.outliersDate = c("2020-04-01",
                                                    "2020-10-01"),
                            # Trading Days ---------------------------------------------------------
                            # usrdef.varEnabled = FALSE, 
                            # usrdef.var = NA, usrdef.varType = "Calendar",
                            #tradingdays.option = "UserDefined",
                            # Easter ---------------------------------------------------------------
                            # easter.type = NA, easter.duration = 6,
                            # Arima-Model ----------------------------------------------------------
                            automdl.enabled = FALSE, 
                            arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                            arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 6
  SELFxHWxW2xJ = perTramo(av[, "SELFxHWxW2xJ"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
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
  # 7 # Identifiable seasonality not present
  SELFxHWxW2xK = perTramo(av[, "SELFxHWxW2xK"], template = "RSA3", 
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
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  # 8 # Identifiable seasonality not present
  SELFxHWxW2xL = perTramo(av[, "SELFxHWxW2xL"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO","AO"),
                    usrdef.outliersDate = c("1999-07-01","2023-10-01"),
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
  # 9
  SELFxHWxW2xM_N = perTramo(av[, "SELFxHWxW2xM_N"], template = "RSA3", 
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
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 10
  SELFxHWxW2xOTQ = perTramo(av[, "SELFxHWxW2xOTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "TC",
                                              "AO","AO"),
                      usrdef.outliersDate = c("2004-01-01", "2009-10-01",
                                              "2008-10-01", "2020-04-01"),
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
  # 11
  SELFxHWxW2xRTU = perTramo(av[, "SELFxHWxW2xRTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
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
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE) # not seasonal
  # =====================================================================================
  
)

av_HW_SELF$run()

# # check if NEW outliers are detected
# source("get_new_outliers.R")
# tsnames <- names(av_HW_SELF$components)
# for(i in seq_along(tsnames)) {
#   cat(i,":",tsnames[i],"\n")
#   oldres <- av_HW_SELF$getComponent(tsnames[i])
#   print(get_new_outliers(oldres))
#   cat("\n")
# }


output_hw_self <- lapply(av_HW_SELF$components, function(x){
  x$output$final$series
})
