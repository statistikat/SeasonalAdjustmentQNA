# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0103 Verteilung D11
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

vert_rest <- per_hts(
  vert_D2 = per_tramo(T103TS[, "D2"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2020-01-01","2020-04-01", "2020-07-01",
                                              "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================  
  vert_D3 = per_tramo(T103TS[, "D3"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2016-04-01", "2020-01-01", "2020-04-01", 
                                              "2020-07-01", "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # ===================================================================================== 
  # vert_B2A3G = per_tramo(T103TS[, "B2A3G"], template = "RSA3", 
  #                        # Transformation -------------------------------------------------------  
  #                        transform.function = "Log",
  #                        # Outliers -------------------------------------------------------------
  #                        outlier.enabled = FALSE, 
  #                        usrdef.outliersEnabled = TRUE, 
  #                        usrdef.outliersType = c("AO", "AO", "LS", "AO"),
  #                        usrdef.outliersDate = c("2020-01-01", "2018-10-01",
  #                                                "2008-10-01", "2009-04-01"),
  #                        # Trading Days ---------------------------------------------------------
  #                        #            usrdef.varEnabled = TRUE, 
  #                        #            usrdef.var = td7, usrdef.varType = "Calendar", 
  #                        #            tradingdays.option = "UserDefined",
  #                        # Easter ---------------------------------------------------------------
  #                        #            easter.type = "IncludeEaster", easter.duration = 6,
  #                        # Arima-Model ----------------------------------------------------------
  #                        automdl.enabled = FALSE,
  #                        arima.p  = 1, arima.d  = 0, arima.q  = 0, 
  #                        arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE)
  # ===================================================================================== 
)

# B2A3G = BIP - D1_T - D2X3

vert_rest$run()

# D2 sollte eventuell gestückelt werden

T103Adj_rest <- lapply(vert_rest$components, function(x){
  x$output$final$series
})
