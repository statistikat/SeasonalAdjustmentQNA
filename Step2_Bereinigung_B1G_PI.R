# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung B1G Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# b1g muss geladen sein 

# Tramo Seat Entstehung ---------------------------
b1gPi <- perHts(
  ## A - Land- und Forstwirtschaft  -------------------
  # no seasonality identifiable 
  A = perTramo(b1g$PI[, "A"] , template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE,
               # usrdef.outliersType = NULL,
               # usrdef.outliersDate = NULL,
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 1, arima.d  = 1, arima.q  = 0,
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## BTE - Industrie -------------------------------------
  # Seasonality probably from the outliers in non-adjusted data
  BTE = perTramo(b1g$PI[, "BTE"] , template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("AO", "AO", 
                                         "LS"),
                 usrdef.outliersDate = c("2009-04-01", "2009-07-01", 
                                         "2023-01-01"),
                 # Trading Days
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = "NA", easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 2,
                 arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## C - Herstellung von Waren -------------------------------------
  # no identifiable seasonality 
  C = perTramo(b1g$PI[, "C"], template = "RSA3", 
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE,
               # usrdef.outliersType = NULL,
               # usrdef.outliersDate = NULL,
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = "NA", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 1, arima.q  = 2,
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## F - Bau --------------------
  `F` = perTramo(b1g$PI[, "F"], template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("TC", "TC"),
                 usrdef.outliersDate = c("2008-04-01", "2009-04-01"),
                 # Trading Days
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = NULL, easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 0,
                 arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  ## G - Handel -----------------------------------
  G = perTramo(b1g$PI[, "G"] , template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "AO",
                                       "LS", "LS",
                                       "LS"),
               usrdef.outliersDate = c("2008-04-01", "2012-10-01",
                                       "2019-01-01", "2022-04-01",
                                       "2023-01-01"),
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               # easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 1, arima.q  = 0,
               arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## H - Verkehr ---------------------------------
  H = perTramo(b1g$PI[, "H"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "TC", 
                                       "AO", "AO", 
                                       "AO"),
               usrdef.outliersDate = c("2008-01-01", "2008-10-01", 
                                       "2011-01-01", "2024-01-01", 
                                       "2025-01-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = NULL, easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 1, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## I - Berherbergung und Gastro ---------------------
  I = perTramo(b1g$PI[, "I"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "LS", 
                                       "LS", "AO", 
                                       "AO"),
               usrdef.outliersDate = c("2009-10-01", "2020-07-01", 
                                       "2022-01-01", "2022-04-01", 
                                       "2022-07-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               # easter.type = "NA", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 0, 
               arima.bp = 1, arima.bd = 0, arima.bq = 1, arima.mu = FALSE),
  ## J - Information und Kommunikation -------------------
  # no seasonality identifiable 
  J = perTramo(b1g$PI[, "J"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE, 
               # usrdef.outliersType = NULL,
               # usrdef.outliersDate = NULL,
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               # easter.type = "NA", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 2, arima.d  = 1, arima.q  = 0, 
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## K - Finanz- und Versicherungswesen --------------------
  # no seasonality identifiable 
  K = perTramo(b1g$PI[, "K"], template = "RSA3", 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE, 
               # usrdef.outliersType = NULL,
               # usrdef.outliersDate = NULL,
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               # easter.type = "NA", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 1, arima.d  = 0, arima.q  = 0, 
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## L Wohnungswesen --------------------
  # no seasonality identifiable 
  L = perTramo(b1g$PI[, "L"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE, 
               # usrdef.outliersType = NULL,
               # usrdef.outliersDate = NULL,
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "Unused", 
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 1, 
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## M_N Unternehmensdienstleistungen -------------------------------
  # no seasonality identifiable 
  M_N = perTramo(b1g$PI[, "M_N"], template = "RSA3", 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("LS", "LS"),
                 usrdef.outliersDate = c("2023-01-01", "2024-01-01"),
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 # easter.type = "NA", easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                 arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## OTQ ------------------------------------------
  OTQ = perTramo(b1g$PI[, "OTQ"], template = "RSA3", 
                 # Transformation 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO", "AO", 
                                         "AO", "AO",
                                         "AO", "AO"),
                 usrdef.outliersDate = c("1999-01-01" ,"1999-10-01", 
                                         "2000-01-01", "2000-10-01", 
                                         "2001-10-01", "2024-07-01"), 
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 # easter.type = "NA", easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  ## RTU Unterhaltung, Kunst, Sport ------------------------------------------
  RTU = perTramo(b1g$PI[, "RTU"], template = "RSA3", 
                 # Transformation 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO", "AO",
                                         "AO", "AO",
                                         "LS"),
                 usrdef.outliersDate = c("1999-01-01","1999-10-01", 
                                         "2020-04-01","2020-10-01", 
                                         "2021-07-01"),
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 easter.type = "NA", easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

b1gPi$run()

output_b1gPi <- lapply(b1gPi$components, function(x){
  x$output$final$series
})




