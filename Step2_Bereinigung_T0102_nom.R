# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0102 Verwendung NOMINELL
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Nur Reihen, die auch negativ werden können, werden nominell bereingt (Nettozugang an Wertsachen und Lager)

# T102TS muss geladen sein

verw_nom <- perHts(
  verw_N13G = perTramo(T102TS$nom[, "N13G"], template = "RSA3", # nicht saisonal --> sa == orig !!!
                        # Transformation -------------------------------------------------------
                        transform.function = "None",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = TRUE,
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
                        automdl.enabled = TRUE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 2,
                        arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # ====================================================================================
  verw_P52 = perTramo(T102TS$nom[, "P52"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "None",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = FALSE, 
                        # usrdef.outliersType = c("AO"),
                        # usrdef.outliersDate = c("2023-04-01"),
                        # Trading Days ---------------------------------------------------------
                        # usrdef.varEnabled = FALSE, 
                        # usrdef.var = NA, usrdef.varType = "Calendar", 
                        # tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        # easter.type = NA, easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 0, arima.d  = 0, arima.q  = 1, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

verw_nom$run()


T102Adj_nom <- lapply(verw_nom$components, function(x){
  x$output$final$series
})
