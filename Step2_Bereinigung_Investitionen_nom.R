# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung Investitionen Nom
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# invest muss geladen sein 



# Tramo Seat Investitionen ---------------------------

investNom <- perHts(
  ## N111G Wohnbauinvestitionen -------------------------------------
  N13G = perTramo(invest$V[, "N13G"] , template = "RSA3",
                   # Transformation
                   transform.function = "None",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = TRUE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## N112G Nicht-Wohnbauinvestitionen -------------------------------------
  N12G = perTramo(invest$V[, "N12G"], template = "RSA3",
                   # Transformation
                   transform.function = "None",
                   # Outliers
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   # usrdef.outliersType = c("AO", "AO",
                   #                         "AO", "LS"),
                   # usrdef.outliersDate = c("1999-10-01", "2000-10-01",
                   #                         "2020-04-01", "2021-01-01"),
                   # Trading Days
                   usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter
                   easter.type = NULL, easter.duration = 6,
                   # Arima-Model
                   automdl.enabled = TRUE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1,
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# RUN ----------

investNom$run()

output_investNom <- lapply(investNom$components, function(x){
  x$output$final$series
})
