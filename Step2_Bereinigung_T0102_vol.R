# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereinigung T0102 Verwendung Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

T102TS0 <- copy(T102TS)

# Eurofighter wird eliminiert 
euroFight <- ts(c(0, 0, 106, 276, 0, 266, 0, 363, 0, 0, 90, 0), start = c(2007, 1),
                freq = 4)
T102TS0$vol[c(51, 52, 54, 56, 59) , 17] <- T102TS$vol[c(51, 52, 54, 56, 59) , 17] - 
  euroFight[c(3, 4, 6, 8, 11)]
T102TS0$vol[c(51, 52, 54, 56, 59) , 27] <- T102TS$vol[c(51, 52, 54, 56, 59) , 27] - 
  euroFight[c(3, 4, 6, 8, 11)]


# Variablen aus MASTER Saisonbereigung.R erforderlich

vcl_vol <- perHts(
  vcl_AN111 = perTramo(T102TS$vol[, "AN111"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("TC", "AO", "AO", "AO", "AO"),
                        usrdef.outliersDate = c("2008-01-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                        # Trading Days ---------------------------------------------------------
                        #            usrdef.varEnabled = TRUE, 
                        #            usrdef.var = td7, usrdef.varType = "Calendar", 
                        #            tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vcl_AN112 = perTramo(T102TS$vol[, "AN112"], template = "RSA3", 
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE,
                        usrdef.outliersEnabled = TRUE, 
                        usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                        usrdef.outliersDate = c("2003-01-01","2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                        # Trading Days ---------------------------------------------------------
                        #             usrdef.varEnabled = TRUE, 
                        #             usrdef.var = td7lY, usrdef.varType = "Calendar", 
                        #             tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vcl_AN115 = perTramo(T102TS$vol[, "AN115"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        #usrdef.outliersEnabled = TRUE, 
                        #usrdef.outliersType = c("AO"),
                        #usrdef.outliersDate = c("2008-04-01"),
                        # Trading Days ---------------------------------------------------------
                        #            usrdef.varEnabled = TRUE, 
                        #            usrdef.var = td7, usrdef.varType = "Calendar", 
                        #            tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                        arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vcl_AN117 = perTramo(T102TS$vol[, "AN117"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        #             usrdef.outliersEnabled = TRUE, 
                        #             usrdef.outliersType = c("AO","LS"),
                        #             usrdef.outliersDate = c("2018-10-01", "2014-01-01"),
                        # Trading Days ---------------------------------------------------------
                        #            usrdef.varEnabled = TRUE, 
                        #            usrdef.var = td7, usrdef.varType = "Calendar", 
                        #            tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #            easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                        arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vcl_P61 = perTramo(T102TS$vol[, "P61"], template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "LS", 
                                              "AO", "AO", "AO", "AO"),
                      usrdef.outliersDate = c("2009-01-01", "2008-10-01",
                                              "2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = TRUE, 
                      usrdef.var = td7lY, usrdef.varType = "Calendar", 
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vcl_P62 = perTramo(T102TS$vol[, "P62"], template = "RSA3",
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS","AO","AO", "AO", "AO"),
                      usrdef.outliersDate = c("2009-01-01","2020-01-01", "2020-04-01",  "2020-07-01", "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      #usrdef.varEnabled = TRUE, 
                      #usrdef.var = td7lY, usrdef.varType = "Calendar", 
                      #tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vcl_P71 = perTramo(T102TS0$vol[, "P71"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("LS", "AO"),
                      usrdef.outliersDate = c("2009-01-01", "2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      usrdef.varEnabled = TRUE, 
                      usrdef.var = td7, usrdef.varType = "Calendar", 
                      tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, ######
                      arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vcl_P72 = perTramo(T102TS$vol[, "P72"], template = "RSA3", 
                      # Transformation ------------------------------------------------------- 
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO"),
                      usrdef.outliersDate = c("2020-04-01"),
                      # Trading Days ---------------------------------------------------------
                      #            usrdef.varEnabled = TRUE, 
                      #            usrdef.var = td7, usrdef.varType = "Calendar", 
                      #            tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      #            easter.type = "IncludeEaster", easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE, 
                      arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                      arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # =====================================================================================
  vcl_P31_S14 = perTramo(T102TS$vol[, "P31_S14"], template = "RSA3", 
                          # Transformation -------------------------------------------------------  
                          transform.function = "Log",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                          usrdef.outliersDate = c("2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                          # Trading Days ---------------------------------------------------------
                          #            usrdef.varEnabled = TRUE, 
                          #            usrdef.var = td7, usrdef.varType = "Calendar", 
                          #            tradingdays.option = "UserDefined",
                          # Easter ---------------------------------------------------------------
                          #            easter.type = "IncludeEaster", easter.duration = 6,
                          # Arima-Model ----------------------------------------------------------
                          automdl.enabled = FALSE,
                          arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                          arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  # vcl_P31_S15 wird gestückelt !!
  
  # =====================================================================================
  vcl_P31_S13 = perTramo(T102TS$vol[, "P31_S13"], template = "RSA3",
                          # Transformation -------------------------------------------------------
                          transform.function = "Log",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          usrdef.outliersEnabled = TRUE, 
                          usrdef.outliersType = c("AO"),
                          usrdef.outliersDate = c("2001-10-01"),
                          # Trading Days ---------------------------------------------------------
                          #             usrdef.varEnabled = TRUE, 
                          #             usrdef.var = td7, usrdef.varType = "Calendar", 
                          #             tradingdays.option = "UserDefined",
                          # Easter ---------------------------------------------------------------
                          #               easter.type = "IncludeEaster", easter.duration = 6,
                          # Arima-Model ----------------------------------------------------------
                          automdl.enabled = FALSE, 
                          arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                          arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =======================================================================================
  vcl_P32_S13 = perTramo(T102TS$vol[, "P32_S13"], template = "RSA3",
                          # Transformation -------------------------------------------------------
                          transform.function = "Log",
                          # Outliers -------------------------------------------------------------
                          outlier.enabled = FALSE, 
                          #usrdef.outliersEnabled = TRUE, 
                          #usrdef.outliersType = c("AO"),
                          #usrdef.outliersDate = c("2019-10-01"),
                          # Trading Days ---------------------------------------------------------
                          #             usrdef.varEnabled = TRUE, 
                          #             usrdef.var = td7, usrdef.varType = "Calendar", 
                          #             tradingdays.option = "UserDefined",
                          # Easter ---------------------------------------------------------------
                          #               easter.type = "IncludeEaster", easter.duration = 6,
                          # Arima-Model ----------------------------------------------------------
                          automdl.enabled = FALSE, 
                          arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                          arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =======================================================================================
  vcl_N1131G = perTramo(T102TS$vol[, "N1131G"], template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("AO"),
                         usrdef.outliersDate = c("2008-04-01"),
                         # Trading Days ---------------------------------------------------------
                         #             usrdef.varEnabled = TRUE, 
                         #             usrdef.var = td7, usrdef.varType = "Calendar", 
                         #             tradingdays.option = "UserDefined",
                         # Easter ---------------------------------------------------------------
                         #easter.type = "IncludeEaster", easter.duration = 6,
                         # Arima-Model ----------------------------------------------------------
                         automdl.enabled = FALSE, 
                         arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                         arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ======================================================================================
  vcl_N1132G = perTramo(T102TS$vol[, "N1132G"], template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         #usrdef.outliersEnabled = TRUE, 
                         #usrdef.outliersType = c("AO"),
                         #usrdef.outliersDate = c("2008-04-01"),
                         # Trading Days ---------------------------------------------------------
                         #             usrdef.varEnabled = TRUE, 
                         #             usrdef.var = td7, usrdef.varType = "Calendar", 
                         #             tradingdays.option = "UserDefined",
                         # Easter ---------------------------------------------------------------
                         #easter.type = "IncludeEaster", easter.duration = 6,
                         # Arima-Model ----------------------------------------------------------
                         automdl.enabled = FALSE, 
                         arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                         arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  # ======================================================================================
  vcl_N11OG = perTramo(T102TS0$vol[, "N11OG"], template = "RSA3",
                        # Transformation -------------------------------------------------------
                        transform.function = "Log",
                        # Outliers -------------------------------------------------------------
                        outlier.enabled = FALSE, 
                        #usrdef.outliersEnabled = TRUE, 
                        #usrdef.outliersType = c("AO"),
                        #usrdef.outliersDate = c("2008-04-01"),
                        # Trading Days ---------------------------------------------------------
                        #             usrdef.varEnabled = TRUE, 
                        #             usrdef.var = td7, usrdef.varType = "Calendar", 
                        #             tradingdays.option = "UserDefined",
                        # Easter ---------------------------------------------------------------
                        #easter.type = "IncludeEaster", easter.duration = 6,
                        # Arima-Model ----------------------------------------------------------
                        automdl.enabled = FALSE, 
                        arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                        arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  
)

vcl_vol$run()


################################################################################
# Reihen, die Stückweise bereinigt wurden........................

################################################################################

##        P31_S15:

vcl_P31_S15a = perTramo(window(T102TS$vol[, "P31_S15"], end = c(2007, 4)), template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("AO"),
                         usrdef.outliersDate = c("1999-10-01"),
                         # Trading Days ---------------------------------------------------------
                         #            usrdef.varEnabled = TRUE, 
                         #            usrdef.var = td7lY, usrdef.varType = "Calendar", 
                         #            tradingdays.option = "UserDefined",
                         # Easter ---------------------------------------------------------------
                         #            easter.type = "IncludeEaster", easter.duration = 6,
                         # Arima-Model ----------------------------------------------------------
                         automdl.enabled = FALSE, 
                         arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                         arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE)

vcl_P31_S15b = perTramo(window(T102TS$vol[, "P31_S15"], start = c(2007, 1)), template = "RSA3",
                         # Transformation -------------------------------------------------------
                         transform.function = "Log",
                         # Outliers -------------------------------------------------------------
                         outlier.enabled = FALSE, 
                         usrdef.outliersEnabled = TRUE, 
                         usrdef.outliersType = c("AO", "AO", "AO", "AO"),
                         usrdef.outliersDate = c("2020-01-01", "2020-04-01", "2020-07-01", "2020-10-01"),
                         # Trading Days ---------------------------------------------------------
                         #            usrdef.varEnabled = TRUE, 
                         #            usrdef.var = td7lY, usrdef.varType = "Calendar", 
                         #            tradingdays.option = "UserDefined",
                         # Easter ---------------------------------------------------------------
                         #            easter.type = "IncludeEaster", easter.duration = 6,
                         # Arima-Model ----------------------------------------------------------
                         automdl.enabled = FALSE, 
                         arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                         arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)


vcl_P31_S15a$run()
vcl_P31_S15b$run()

vcl_P31_S15a_sa <- vcl_P31_S15a$output$final$series[, 2]
vcl_P31_S15b_sa <- vcl_P31_S15b$output$final$series[, 2]

vcl_P31_S15a_t <- vcl_P31_S15a$output$final$series[, 3]
vcl_P31_S15b_t <- vcl_P31_S15b$output$final$series[, 3]

ta <- time(vcl_P31_S15a_sa)
tb <- time(vcl_P31_S15b_sa)

ii <- which(!is.na(match(ta, tb)))
vcl_P31_S15a_sa <- vcl_P31_S15a_sa * mean(vcl_P31_S15b_sa[1:4])/
  mean(vcl_P31_S15a_sa[ii])
vcl_P31_S15a_t <- vcl_P31_S15a_t * mean(vcl_P31_S15b_t[1:4])/
  mean(vcl_P31_S15a_t[ii])
vcl_P31_S15a_sa <- window(vcl_P31_S15a_sa, end = c(2006, 4))
vcl_P31_S15a_t <- window(vcl_P31_S15a_t, end = c(2006, 4))
#-------------------------------------------------

#plot(T102TS$vol[, "P31_S15"])
#lines(vcl_P31_S15a_sa, col = "blue")
#lines(vcl_P31_S15b_sa, col = "red")
vcl_P31_S15_sa <- ts(c(vcl_P31_S15a_sa, vcl_P31_S15b_sa),
                     start = start(vcl_P31_S15a_sa),
                     freq = frequency(vcl_P31_S15a_sa))
vcl_P31_S15_t <- ts(c(vcl_P31_S15a_t, vcl_P31_S15b_t),
                    start = start(vcl_P31_S15a_t),
                    freq = frequency(vcl_P31_S15a_t))

vcl_P31_S15 <- cbind(y = T102TS$vol[, "P31_S15"], sa = vcl_P31_S15_sa, 
                     t = vcl_P31_S15_t, s = T102TS$vol[, "P31_S15"]/vcl_P31_S15_sa,
                     i = vcl_P31_S15_sa/vcl_P31_S15_t)
#-------------------------------------------------------------------------------

T102Adj_vol <- lapply(vcl_vol$components, function(x){
  x$output$final$series
})

T102Adj_vol$vcl_P31_S15 <- vcl_P31_S15


# Eurofighter "rückabwickeln"
T102Adj_vola <- copy(T102Adj_vol)
T102Adj_vola$vcl_P71[c(51, 52, 54, 56, 59) , 1] <- T102Adj_vol$vcl_P71[c(51, 52, 54, 56, 59) , 1] + 
  euroFight[c(3, 4, 6, 8, 11)]
T102Adj_vola$vcl_P71[c(51, 52, 54, 56, 59) , 2] <- T102Adj_vol$vcl_P71[c(51, 52, 54, 56, 59) , 2] + 
  euroFight[c(3, 4, 6, 8, 11)]
T102Adj_vola$vcl_P71[, 5] <- T102Adj_vola$vcl_P71[, 2] / T102Adj_vola$vcl_P71[, 3]

T102Adj_vola$vcl_N11OG[c(51, 52, 54, 56, 59) , 1] <- T102Adj_vol$vcl_N11OG[c(51, 52, 54, 56, 59) , 1] + 
  euroFight[c(3, 4, 6, 8, 11)]
T102Adj_vola$vcl_N11OG[c(51, 52, 54, 56, 59) , 2] <- T102Adj_vol$vcl_N11OG[c(51, 52, 54, 56, 59) , 2] + 
  euroFight[c(3, 4, 6, 8, 11)]
T102Adj_vola$vcl_N11OG[, 5] <- T102Adj_vola$vcl_N11OG[, 2] / T102Adj_vola$vcl_N11OG[, 3]