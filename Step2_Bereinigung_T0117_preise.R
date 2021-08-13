# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0117 Konsum Preise
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

kons_price <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  p311 = perTramo(T117TS$impPI_L[, "P311"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("TC", "LS",
                                           "AO", "AO"),
                   usrdef.outliersDate = c("2008-10-01", "1999-01-01",
                                           "2006-10-01", "2005-07-01"),
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
  p312 = perTramo(T117TS$impPI_L[, "P312"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC"),
                   usrdef.outliersDate = c("2006-07-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  p313 = perTramo(T117TS$impPI_L[, "P313"], template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
                   #usrdef.outliersEnabled = TRUE, 
                   #usrdef.outliersType = c("AO"),
                   #usrdef.outliersDate = c("2018-04-01"),
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
  p314 = perTramo(T117TS$impPI_L[, "P314"], template = "RSA3",
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
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # ====================================================================================
  
)

kons_price$run()


################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################

## 

# p312a = perTramo(window(T117TS$impPI_L[, "P312"], end = c(2006,4)), template = "RSA3", 
#                  # Transformation -------------------------------------------------------
#                  transform.function = "Log",
#                  # Outliers -------------------------------------------------------------
#                  outlier.enabled = FALSE,
#                  #usrdef.outliersEnabled = TRUE, 
#                  #usrdef.outliersType = c("TC", "AO", "TC"),
#                  #usrdef.outliersDate = c("2016-10-01", "2018-01-01", 
#                  #                         "2019-07-01"),
#                  # Trading Days ---------------------------------------------------------
#                  # usrdef.varEnabled = FALSE, 
#                  # usrdef.var = NA, usrdef.varType = "Calendar", 
#                  # tradingdays.option = "UserDefined",
#                  # Easter ---------------------------------------------------------------
#                  # easter.type = NA, easter.duration = 6,
#                  # Arima-Model ----------------------------------------------------------
#                  automdl.enabled = FALSE, 
#                  arima.p  = 0, arima.d  = 1, arima.q  = 1, 
#                  arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
# 
# p312b = perTramo(window(T117TS$impPI_L[, "P312"], start = c(2005,1)), template = "RSA3", 
#                       # Transformation -------------------------------------------------------
#                       transform.function = "Log",
#                       # Outliers -------------------------------------------------------------
#                       outlier.enabled = FALSE,
#                       usrdef.outliersEnabled = TRUE, 
#                       usrdef.outliersType = c("TC"),
#                       usrdef.outliersDate = c("2016-07-01"),
#                       # Trading Days ---------------------------------------------------------
#                       # usrdef.varEnabled = FALSE, 
#                       # usrdef.var = NA, usrdef.varType = "Calendar", 
#                       # tradingdays.option = "UserDefined",
#                       # Easter ---------------------------------------------------------------
#                       # easter.type = NA, easter.duration = 6,
#                       # Arima-Model ----------------------------------------------------------
#                       automdl.enabled = FALSE, 
#                       arima.p  = 2, arima.d  = 0, arima.q  = 0, 
#                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
# 
# 
# p312a$run()
# p312b$run()
# 
# p312a_sa <- p312a$output$final$series[, "sa"]
# p312b_sa <- p312b$output$final$series[, "sa"]
# 
# p312a_t <- p312a$output$final$series[, "t"]
# p312b_t <- p312b$output$final$series[, "t"]
# 
# ta <- time(p312a_sa)
# tb <- time(p312b_sa)
# 
# ii <- which(!is.na(match(ta, tb)))
# p312a_sa <- p312a_sa * mean(p312b_sa[1:4])/
#   mean(p312a_sa[ii])
# p312a_t <- p312a_t * mean(p312b_t[1:4])/
#   mean(p312a_t[ii])
# p312a_sa <- window(p312a_sa, end = c(2004, 4))
# p312a_t <- window(p312a_t, end = c(2004, 4))
# #-------------------------------------------------
# 
# plot(T117TS$impPI_L[, "P312"])
# lines(p312a_sa, col = "blue")
# lines(p312b_sa, col = "red")
# 
# 
# p312_sa <- ts_bind(p312a_sa, p312b_sa)
# p312_t <- ts_bind(p312a_t, p312b_t)
# 
# p312 <- cbind(y = T117TS$impPI_L[, "P312"], 
#                    sa = p312_sa, 
#                    t = p312_t, 
#                    s = T117TS$impPI_L[, "P312"]/p312_sa,
#                    i = p312_sa/p312_t)


#-------------------------------------------------------------------------------

T102Adj_impPI_L <- lapply(vcl_price$components, function(x){
  x$output$final$series
})

T102Adj_impPI_L$vcl_AN117 <- vcl_AN117



#################################################

T117Adj_impPI_L <- lapply(kons_price$components, function(x){
  x$output$final$series
})
