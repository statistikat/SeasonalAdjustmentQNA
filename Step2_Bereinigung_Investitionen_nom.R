# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung Investitionen Nom
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# invest muss geladen sein 



# Tramo Seat Investitionen ---------------------------

investNom <- perHts(
  ## N13G Wertgegenständer ---------------------------------------------------
  # No seasonality so warning can be ignored
  N13G = perTramo(invest$V[, "N13G"] , template = "RSA3",
                   # Transformation
                   transform.function = "None",
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
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## N12G Lagerveränderung ---------------------------------------------------
  N12G = perTramo(invest$V[, "N12G"], template = "RSA3",
                   # Transformation
                   transform.function = "None",
                   # Outliers
                   outlier.enabled = FALSE,
                   usrdef.outliersEnabled = TRUE,
                   usrdef.outliersType = c("AO", "LS",
                                           "AO", "LS"),
                   usrdef.outliersDate = c("2021-07-01", "2021-10-01", 
                                           "2022-04-01", "2023-07-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = FALSE,
                   arima.p  = 1, arima.d  = 0, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

investNom$run()

output_investNom <- lapply(investNom$components, function(x){
  x$output$final$series
})
