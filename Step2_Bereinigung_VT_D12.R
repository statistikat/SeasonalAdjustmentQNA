# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0103 Verteilung D11
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# vtD1 muss geladen sein


vert_D12 <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  A = perTramo(vtD1[, "D12_XDC_W2_A"], template = "RSA3", 
               # Transformation -------------------------------------------------------
               transform.function = "Log",
               # Outliers -------------------------------------------------------------
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("LS", "LS",
                                       "TC"),
               usrdef.outliersDate = c("2007-01-01", "2008-04-01",
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
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ====================================================================================
  # 2
  BTE = perTramo(vtD1[, "D12_XDC_W2_BTE"],  template = "RSA3", 
                 # Transformation -------------------------------------------------------
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 # usrdef.outliersType = c("LS","LS",
                 #                         "LS"),
                 # usrdef.outliersDate = c("2009-04-01", "2009-07-01",
                 #                         "2020-01-01"),
                 # Trading Days ---------------------------------------------------------
                 # usrdef.varEnabled = FALSE, 
                 # usrdef.var = NA, usrdef.varType = "Calendar", 
                 # tradingdays.option = "UserDefined",
                 # Easter ---------------------------------------------------------------
                 # easter.type = NA, easter.duration = 6,
                 # Arima-Model ----------------------------------------------------------
                 automdl.enabled = FALSE, 
                 arima.p  = 3, arima.d  = 1, arima.q  = 1, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  # 3
  C = perTramo(vtD1[, "D12_XDC_W2_C"], template = "RSA3",
               # Transformation -------------------------------------------------------
               transform.function = "Log",
               # Outliers -------------------------------------------------------------
               outlier.enabled = FALSE, 
               usrdef.outliersEnabled = TRUE, 
               # usrdef.outliersType = c("AO"),
               # usrdef.outliersDate = c("2002-04-01"),
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
  # 4
  `F` = perTramo(vtD1[, "D12_XDC_W2_F"], template = "RSA3",
                 # Transformation -------------------------------------------------------
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE, 
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO","TC","AO"),
                 usrdef.outliersDate = c("2007-01-01","2008-01-01","2020-04-01"),
                 # Trading Days ---------------------------------------------------------
                 # usrdef.varEnabled = FALSE, 
                 # usrdef.var = NA, usrdef.varType = "Calendar", 
                 # tradingdays.option = "UserDefined",
                 # Easter ---------------------------------------------------------------
                 # easter.type = NA, easter.duration = 6,
                 # Arima-Model ----------------------------------------------------------
                 automdl.enabled = FALSE, 
                 arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1),
  # ====================================================================================
  # 5
  GTI = perTramo(vtD1[, "D12_XDC_W2_GTI"] , template = "RSA3",
                 # Transformation -------------------------------------------------------
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE, 
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("TC", "TC",
                                         "LS", "AO"),
                 usrdef.outliersDate = c("2008-01-01", "2020-01-01",
                                         "2020-04-01", "2021-01-01"),
                 outlier.usedefcv = FALSE,
                 outlier.cv = 3.6, # LS 2026 verschlechtert die Diagnostics
                 # Trading Days ---------------------------------------------------------
                 # usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter ---------------------------------------------------------------
                 # easter.type = NA, easter.duration = 6,2, 1, 0, 0, 1, 1
                 # Arima-Model ----------------------------------------------------------
                 automdl.enabled = FALSE, 
                 arima.p  = 2, arima.d  = 1, arima.q  = 0, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 6
  J = perTramo(vtD1[, "D12_XDC_W2_J"], template = "RSA3", 
               # Transformation -------------------------------------------------------
               transform.function = "Log",
               # Outliers -------------------------------------------------------------
               outlier.enabled = FALSE, 
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("TC", "AO",
                                       "LS","LS","TC"),
               usrdef.outliersDate = c("2000-10-01", "2006-01-01",
                                       "2007-07-01","2008-01-01","2009-01-01"),
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
  K = perTramo(vtD1[, "D12_XDC_W2_K"], template = "RSA3", 
               # Transformation -------------------------------------------------------
               transform.function = "Log",
               # Outliers -------------------------------------------------------------
               outlier.enabled = FALSE, 
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "TC",
                                       "TC","TC"),
               usrdef.outliersDate = c("2008-01-01", "2015-01-01",
                                       "2014-10-01","2014-01-01"),
               # # Trading Days ---------------------------------------------------------
               # usrdef.varEnabled = TRUE,
               # usrdef.var = td7, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter ---------------------------------------------------------------
               # easter.type = NA, easter.duration = 6,
               # Arima-Model ----------------------------------------------------------
               automdl.enabled = FALSE, ######
               arima.p  = 2, arima.d  = 0, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE)
  ,
  # =====================================================================================
  # 8
  L = perTramo(vtD1[, "D12_XDC_W2_L"], template = "RSA3", 
               # Transformation -------------------------------------------------------
               transform.function = "Log",
               # Outliers -------------------------------------------------------------
               outlier.enabled = FALSE, 
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO","TC", 
                                       "AO"),
               usrdef.outliersDate = c("2009-01-01",  "2012-01-01",
                                       "2013-01-01"),
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
  # 9
  M_N = perTramo(vtD1[, "D12_XDC_W2_M_N"], template = "RSA3", 
                 # Transformation -------------------------------------------------------
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE, 
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("LS", "TC"),
                 usrdef.outliersDate = c("2008-01-01", "2020-04-01"),
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
  OTQ = perTramo(vtD1[, "D12_XDC_W2_OTQ"], template = "RSA3", 
                 # Transformation -------------------------------------------------------
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE, 
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("LS", "LS","LS"),
                 usrdef.outliersDate = c("2001-04-01", "2004-01-01","2024-01-01"),
                 # Trading Days ---------------------------------------------------------
                 # usrdef.varEnabled = FALSE, 
                 # usrdef.var = NA, usrdef.varType = "Calendar", 
                 # tradingdays.option = "UserDefined",1, 0, 0, 0, 1, 0
                 # Easter ---------------------------------------------------------------
                 # easter.type = NA, easter.duration = 6,
                 # Arima-Model ----------------------------------------------------------
                 automdl.enabled = FALSE,
                 arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  # 11
  RTU = perTramo(vtD1[, "D12_XDC_W2_RTU"], template = "RSA3", 
                 # Transformation -------------------------------------------------------  
                 transform.function = "Log",
                 # Outliers -------------------------------------------------------------
                 outlier.enabled = FALSE, 
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO","LS","LS"),
                 usrdef.outliersDate = c("2007-10-01","2020-04-01","2023-01-01"),
                 # Trading Days ---------------------------------------------------------
                 # usrdef.varEnabled = FALSE, 
                 # usrdef.var = NA, usrdef.varType = "Calendar", 
                 # tradingdays.option = "UserDefined",
                 # Easter ---------------------------------------------------------------
                 # easter.type = NA, easter.duration = 6,
                 # Arima-Model ----------------------------------------------------------
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # =====================================================================================
  
)

vert_D12$run()

# # check if NEW outliers are detected
# source("get_new_outliers.R")
# (tsnames <- names(vert_D12$components))
# for(i in seq_along(tsnames)) {
#   cat(i,":",tsnames[i],"\n")
#   oldres <- vert_D12$getComponent(tsnames[i])
#   print(get_new_outliers(oldres))
#   cat("\n")
# }

output_vtD12 <- lapply(vert_D12$components, function(x){
  x$output$final$series
})
