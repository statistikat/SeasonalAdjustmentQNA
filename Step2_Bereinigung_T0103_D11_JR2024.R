# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0103 Verteilung D11
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Identifier |	Log/level detection |	Outliers detection |	Calendar effects |	ARIMA
#       RSA0 |	NA |	NA |	NA |	Airline(+mean)
#       RSA1 |	automatic |	AO/LS/TC |	NA |	Airline(+mean)
#       RSA2 |	automatic |	AO/LS/TC |	2 td vars + Easter |	Airline(+mean)
#       RSA3 |	automatic |	AO/LS/TC |	NA |	automatic
#       RSA4 |	automatic |	AO/LS/TC |	2 td vars + Easter |	automatic
#       RSA5 |	automatic |	AO/LS/TC |	7 td vars + Easter |	automatic
#    RSAfull |	automatic |	AO/LS/TC |	automatic |	automatic

spec <- singleSpec(par=paraM_EH, ind=serNum, tsM = kjh_eh, td0 = tdAT7)

# Arima-Modell
vert_A$output$regarima
# Koeffizienten: 
# signifikant wenn T-Stat ca >= 4 bzw. <= -4
vert_A$output$regarima$regression.coefficients
# Residuen:
# normalverteilt, unabhängig, homoskedastisch (linear
vert_A$output$regarima$residuals.stat
# Diagnostics:
# Stable seasonality: will p.value = 0
# Residual seasonality: will großen p.value 
vert_A$output$diagnostics
# Nur bei x12
vert_A$output$decomposition$mstats

tsnames <- c("D11_XDC_W2_A", "D11_XDC_W2_BTE", "D11_XDC_W2_C", "D11_XDC_W2_F", "D11_XDC_W2_GTI", 
             "D11_XDC_W2_J", "D11_XDC_W2_K", "D11_XDC_W2_L", "D11_XDC_W2_M_N", "D11_XDC_W2_OTQ", "D11_XDC_W2_RTU")



i <- 1
defres <- perTramo(T103TS[,  tsnames[i]], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = NULL, #log
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = TRUE,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = TRUE) 
defres$run()

# Arima-Modell
defres$output$regarima
# Koeffizienten: 
# signifikant wenn T-Stat ca >= 4 bzw. <= -4
defres$output$regarima$regression.coefficients
# Residuen:
# normalverteilt, unabhängig, homoskedastisch (linear
defres$output$regarima$residuals.stat
# Diagnostics:
# Stable seasonality: will p.value = 0
# Residual seasonality: will großen p.value 
defres$output$diagnostics
# Nur bei x12
defres$output$decomposition$mstats


# T103TS muss geladen sein
# test
vert_D11 <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  # 1
  vert_A = perTramo(T103TS[,  tsnames[i]], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("2008-04-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  # 2
  vert_BTE = perTramo(T103TS[, "D11_XDC_W2_BTE"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "LS",
                                              "LS", "LS"),
                      usrdef.outliersDate = c("2002-01-01", "2009-04-01", 
                                              "2009-07-01", "2020-01-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      #tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 3
  vert_C = perTramo(T103TS[, "D11_XDC_W2_C"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "LS",
                                            "LS", "LS"),
                    usrdef.outliersDate = c("2002-01-01", "2009-04-01", 
                                            "2009-07-01", "2020-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    #tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  # 4
  vert_F = perTramo(T103TS[, "D11_XDC_W2_F"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "None",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO","AO","LS","TC"),
                    usrdef.outliersDate = c("2020-04-01","2023-10-01","2023-01-01","2008-01-01"),
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
  vert_GTI = perTramo(T103TS[, "D11_XDC_W2_GTI"] , template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "TC",
                                              "TC", "TC",
                                              "LS"),
                      usrdef.outliersDate = c("2020-04-01", "2021-01-01",
                                              "2020-01-01", "2008-01-01",
                                              "2021-04-01"),
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
  vert_J = perTramo(T103TS[, "D11_XDC_W2_J"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS", "AO",
                                            "LS"),
                    usrdef.outliersDate = c("2007-07-01", "2010-01-01",
                                            "2000-10-01"),
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
  # =====================================================================================
  # 7
  vert_K = perTramo(T103TS[, "D11_XDC_W2_K"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO",
                                            "AO", "AO"),
                    usrdef.outliersDate = c("2024-01-01", "2014-10-01",
                                            "2008-01-01", "2014-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE, 
                    # usrdef.var = NA, usrdef.varType = "Calendar", 
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  # 8
  vert_L = perTramo(T103TS[, "D11_XDC_W2_L"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE, 
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("AO", "AO", 
                                            "AO", "AO",
                                            "AO"),
                    usrdef.outliersDate = c("2009-01-01", "2011-01-01",
                                            "2012-01-01", "2013-01-01",
                                            "2014-10-01"),
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
  vert_M_N = perTramo(T103TS[, "D11_XDC_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS","LS", 
                                              "LS", "AO",
                                              "AO", "LS",
                                              "AO", "AO"),
                      usrdef.outliersDate = c("1998-07-01", "2007-01-01",
                                              "2008-01-01", "2012-01-01",
                                              "2020-01-01", "2020-04-01",
                                              "2020-10-01", "2021-01-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  # 10
  vert_OTQ = perTramo(T103TS[, "D11_XDC_W2_OTQ"], template = "RSA3", 
                      # Transformation -------------------------------------------------------        
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE,
                      usrdef.outliersType = c("AO", "AO"),
                      usrdef.outliersDate = c("2001-01-01", "2001-07-01"),
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
  # =====================================================================================
  # 11
  vert_RTU = perTramo(T103TS[, "D11_XDC_W2_RTU"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE,
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS","AO",
                                              "AO"),
                      usrdef.outliersDate = c("2020-04-01", "2006-01-01", "2007-10-01"),
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
)

vert_D11$run()

T103Adj_D11 <- lapply(vert_D11$components, function(x){
  x$output$final$series
})
