# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0103 Verteilung D11
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T103TS muss geladen sein

vert_rest <- perHts(
  #vert_D2 = perTramo(T103TS[, "D2"], template = "RSA3", 
  #                    # Transformation -------------------------------------------------------  
  #                    transform.function = "Log",
  #                    # Outliers -------------------------------------------------------------
  #                    outlier.enabled = FALSE, 
  #                    usrdef.outliersEnabled = TRUE, 
  #                    usrdef.outliersType = c("TC"),
  #                    usrdef.outliersDate = c("2020-04-01"),
  #                    # Trading Days ---------------------------------------------------------
  #                    # usrdef.varEnabled = FALSE, 
  #                    # usrdef.var = NA, usrdef.varType = "Calendar", 
  #                    # tradingdays.option = "UserDefined",
  #                    # Easter ---------------------------------------------------------------
  #                    # easter.type = NA, easter.duration = 6,
  #                    # Arima-Model ----------------------------------------------------------
  #                    automdl.enabled = FALSE,
  #                    arima.p  = 0, arima.d  = 1, arima.q  = 1, 
  #                    arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================  
  vert_D3 = perTramo(T103TS[, "D3"], template = "RSA3", 
                      # Transformation -------------------------------------------------------  
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "AO",
                                              "AO", "TC",
                                              "LS", "AO"),
                      usrdef.outliersDate = c("2002-10-01", "2009-07-01",
                                              "2016-04-01", "2020-01-01",
                                              "2020-04-01", "2020-07-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 0, arima.d  = 0, arima.q  = 3,
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)
)

vert_rest$run()

T103Adj_rest <- lapply(vert_rest$components, function(x){
  x$output$final$series
})


################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################


vert_D2a = perTramo(window(T103TS[, "D2"], end = c(2013, 4)), template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        usrdef.outliersEnabled = TRUE,
                        usrdef.outliersType = c("AO", "AO"),
                        usrdef.outliersDate = c("2004-10-01", "2013-10-01"),
                        # Trading Days ---------------------------------------------------------
                        # usrdef.varEnabled = FALSE, 
                        # usrdef.var = NA, usrdef.varType = "Calendar", 
                        # tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        # easter.type = NA, easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 2, arima.d  = 0, arima.q  = 0, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)

vert_D2b = perTramo(window(T103TS[, "D2"], start = c(2013, 1)), template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("TC"),
                        usrdef.outliersDate = c("2020-04-01"),
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


vert_D2a$run()
vert_D2b$run()

vert_D2a_sa <- vert_D2a$output$final$series[, "sa"]
vert_D2b_sa <- vert_D2b$output$final$series[, "sa"]

vert_D2a_t <- vert_D2a$output$final$series[, "t"]
vert_D2b_t <- vert_D2b$output$final$series[, "t"]

ta <- time(vert_D2a_sa)
tb <- time(vert_D2b_sa)

ii <- which(!is.na(match(ta, tb)))
vert_D2a_sa <- vert_D2a_sa * mean(vert_D2b_sa[1:4])/
  mean(vert_D2a_sa[ii])
vert_D2a_t <- vert_D2a_t * mean(vert_D2b_t[1:4])/
  mean(vert_D2a_t[ii])
vert_D2a_sa <- window(vert_D2a_sa, end = c(2012, 4))
vert_D2a_t <- window(vert_D2a_t, end = c(2012, 4))
#-------------------------------------------------

#plot(T103TS[, "D2"])
#lines(vert_D2a_sa, col = "blue")
#lines(vert_D2b_sa, col = "red")
vert_D2_sa <- ts_bind(vert_D2a_sa, vert_D2b_sa)
vert_D2_t <- ts_bind(vert_D2a_t, vert_D2b_t)

vert_D2 <- cbind(y = T103TS[, "D2"], 
                     sa = vert_D2_sa, 
                     t = vert_D2_t, 
                     s = T103TS[, "D2"]/vert_D2_sa,
                     i = vert_D2_sa/vert_D2_t)



T103Adj_rest$D2 <- vert_D2
