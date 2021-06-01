# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0110 Bevölkerung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T110TS muss geladen sein


pb_SAL = perTramo(T110TS[, "SAL_PS_W0__T"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "None",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO","AO","AO","AO", "AO"),
                   usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", 
                                           "2020-10-01", "2021-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, 
                   arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)

pb_SAL$run()
T110Adj_sa <- list()

T110Adj_sa$SAL_PS_W0__T <- pb_SAL$output$final$series


pb_SELF = perTramo(T110TS[, "SELF_PS_W0__T"], template = "RSA3", 
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE, 
                    usrdef.outliersType = c("LS"),
                    usrdef.outliersDate = c("1996-01-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, 
                    arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                    arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE)

pb_SELF$run()

T110Adj_sa$SELF_PS_W0__T <- pb_SELF$output$final$series


T110Y <- do.call(cbind,lapply(T110Adj_sa, `[`, i = ,j = "sa"))

T110Y <- ts_c(T110Y, 
              EMP_PS_W0__T = T110Y[, "SAL_PS_W0__T"]  + T110Y[, "SELF_PS_W0__T"],
              POP = T110TS[, "POP"])
