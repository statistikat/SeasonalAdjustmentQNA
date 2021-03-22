# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0102 Verwendung NOMINELL
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

#die Reihen, die auch negativ werden können

# Variablen aus MASTER Saisonbereigung.R erforderlich

verw_nom <- perHts(
  verw_N13G = perTramo(T102TS$nom[, "N13G"], template = "RSA3", # nicht saisonal
                        # Transformation -------------------------------------------------------
                        transform.function = "None",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = TRUE,
                        usrdef.outliersEnabled = FALSE, 
                        usrdef.outliersType = c("TC",  "AO", "AO", "AO", "AO"),
                        usrdef.outliersDate = c("2008-01-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                        # Trading Days ---------------------------------------------------------
                        #            usrdef.varEnabled = TRUE, 
                        #            usrdef.var = td7, usrdef.varType = "Calendar", 
                        #            tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = TRUE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  verw_P52 = perTramo(T102TS$nom[, "P52"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "None",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                        usrdef.outliersDate = c("2019-10-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                        # Trading Days ---------------------------------------------------------
                        #             usrdef.varEnabled = TRUE, 
                        #             usrdef.var = td7lY, usrdef.varType = "Calendar", 
                        #             tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

verw_nom$run()


T102Adj_nom <- lapply(verw_nom$components, function(x){
  x$output$final$series
})
