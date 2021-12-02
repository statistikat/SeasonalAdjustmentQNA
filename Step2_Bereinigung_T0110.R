# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0110 Bevölkerung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T110TS muss geladen sein
# T111 muss bereinigt sein


pb_SAL = perTramo(T110TS[, "SAL_PS_W0__T"], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("TC", "AO",
                                           "TC", "TC"),
                   usrdef.outliersDate = c("2020-04-01", "2020-07-01",
                                           "2021-01-01", "2008-01-01"),
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

# Die Selbstständigen sind nach Inland und Inländerkonzept gleich. 
# Die Werte in Tabelle 110 sind die gleichen wie die Summe aus T111, aber in Absolutzahlen, daher * 1e3 und gerundet.


T110Y <- ts_c(SAL_PS_W0__T = pb_SAL$output$final$series[, "sa"],
              SELF_PS_W0__T = round(T111Y_sums$PS$SELF[,"_T"] * 1e3))
T110Y <- ts_c(T110Y, 
              EMP_PS_W0__T = T110Y[, "SAL_PS_W0__T"]  + T110Y[, "SELF_PS_W0__T"],
              POP = T110TS[, "POP"])
