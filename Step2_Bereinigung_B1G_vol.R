# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung B1G Volumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# b1g muss geladen sein 

# Tramo Seat Entstehung ---------------------------
b1gVol <- perHts(
  ## A - Land- und Forstwirtschaft 
  # ist getrennt siehe unten
  ## BTE - Industrie -------------------------------------
  BTE = perTramo(b1g$L[, "BTE"] , template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "LS",
                                       "AO"),
               usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                       "2020-04-01"),
               # Trading Days
               usrdef.varEnabled = TRUE,
               usrdef.var = td5, usrdef.varType = "Calendar",
               tradingdays.option = "UserDefined",
               # Easter
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 1, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## C - Herstellung von Waren -------------------------------------
  C = perTramo(b1g$L[, "C"], template = "RSA3", 
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "LS",
                                       "AO"),
               usrdef.outliersDate = c("2008-10-01", "2009-01-01",
                                       "2020-04-01"),
               # Trading Days
               usrdef.varEnabled = TRUE,
               usrdef.var = td5, usrdef.varType = "Calendar",
               tradingdays.option = "UserDefined",
               # Easter
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 1, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## F - Bau --------------------
  # ist getrennt siehe unten
  ## G - Handel -----------------------------------
  # ist getrennt siehe unten
  ## H - Verkehr ---------------------------------
  H = perTramo(b1g$L[, "H"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "LS",
                                       "AO", "AO",
                                       "AO", "AO",
                                       "AO", "AO",
                                       "AO"),
               usrdef.outliersDate = c("2003-01-01", "2009-01-01", 
                                       "2020-04-01", "2020-07-01",
                                       "2020-10-01", "2021-01-01",
                                       "2021-04-01", "2022-02-01",
                                       "2022-07-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = NULL, easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## I - Berherbergung und Gastro ---------------------
  I = perTramo(b1g$L[, "I"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("LS", "AO",
                                       "AO", "AO",
                                       "AO", "AO",
                                       "AO", "AO",
                                       "AO"),
               usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                       "2020-07-01", "2020-10-01",
                                       "2021-01-01", "2021-04-01",
                                       "2021-07-01", "2021-10-01",
                                       "2022-01-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 1, arima.d  = 0, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## J - Information und Kommunikation -------------------
  J = perTramo(b1g$L[, "J"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "AO"),
               usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## K - Finanz- und Versicherungswesen --------------------
  K = perTramo(b1g$L[, "K"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "LS"),
               usrdef.outliersDate = c("2008-10-01", "2023-01-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "Unused",
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 1, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## L Wohnungswesen --------------------
  # not seasonal
  L = perTramo(b1g$L[, "L"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
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
               easter.type = "Unused", 
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 0, arima.d  = 1, arima.q  = 1, 
               arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  ## M_N Unternehmensdienstleistungen -------------------------------
  M_N = perTramo(b1g$L[, "M_N"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("LS", "AO",
                                       "LS", "LS"),
               usrdef.outliersDate = c("2009-01-01", "2020-04-01",
                                       "2020-04-01", "2023-01-01"),
               # Trading Days 
               usrdef.varEnabled = TRUE,
               usrdef.var = td5lY, usrdef.varType = "Calendar",
               tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "Unused", 
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 1, arima.d  = 0, arima.q  = 3, 
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  ## OTQ ------------------------------------------
  OTQ = perTramo(b1g$L[, "OTQ"], template = "RSA3", 
               # Transformation 
               transform.function = "Log",
               # Outliers 
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE, 
               usrdef.outliersType = c("AO", "AO",
                                       "LS", "AO"),
               usrdef.outliersDate = c("2003-07-01", "2003-10-01",
                                       "2020-01-01", "2020-04-01"),
               # Trading Days 
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter 
               easter.type = "IncludeEaster", easter.duration = 6,
               # Arima-Model 
               automdl.enabled = FALSE, 
               arima.p  = 3, arima.d  = 0, arima.q  = 0, 
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE),
  ## RTU Unterhaltung, Kunst, Sport ------------------------------------------
  RTU = perTramo(b1g$L[, "RTU"], template = "RSA3", 
                 # Transformation 
                 transform.function = "Log",
                 # Outliers 
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE, 
                 usrdef.outliersType = c("AO", "LS",
                                         "LS", "AO",
                                         "LS", "AO",
                                         "AO", "LS",
                                         "AO", "LS"),
                 usrdef.outliersDate = c("2014-07-01", "2019-10-01",
                                         "2020-01-01", "2020-04-01",
                                         "2020-04-01", "2020-10-01",
                                         "2021-01-01", "2021-07-01",
                                         "2021-10-01", "2022-04-01"),
                 # Trading Days 
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter 
                 easter.type = "NA", easter.duration = 6,
                 # Arima-Model 
                 automdl.enabled = FALSE, 
                 arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  )

# RUN ----------

b1gVol$run()

output_b1gVol <- lapply(b1gVol$components, function(x){
  x$output$final$series
})

# Reihen die 2010 getrennt werden --------------

b1gVol2010 <- perHts(
  ## F - Bau --------------------
  `F` = perTramo(b1g$L[, "F"] %>% window(start = 2010), template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("AO"),
               usrdef.outliersDate = c("2020-04-01"),
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 0, arima.q  = 2,
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  ## G - Handel -----------------------------------
  G = perTramo(b1g$L[, "G"] %>% window(start = 2010), template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("LS", "AO"),
               usrdef.outliersDate = c("2020-01-01", "2020-04-01"),
               # Trading Days
               usrdef.varEnabled = TRUE,
               usrdef.var = td5, usrdef.varType = "Calendar",
               tradingdays.option = "UserDefined",
               # Easter
               easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 1, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)
)

b1gVol2010zr <- perHts(
  ## F - Bau --------------------
  `F` = perTramo(b1g$L[, "F"] %>% window(end = c(2010,4)), template = "RSA3",
                 # Transformation
                 transform.function = "Log",
                 # Outliers
                 outlier.enabled = FALSE,
                 usrdef.outliersEnabled = TRUE,
                 usrdef.outliersType = c("AO"),
                 usrdef.outliersDate = c("2008-01-01"),
                 # Trading Days
                 usrdef.varEnabled = FALSE,
                 # usrdef.var = NA, usrdef.varType = "Calendar",
                 # tradingdays.option = "UserDefined",
                 # Easter
                 easter.type = "IncludeEaster", easter.duration = 6,
                 # Arima-Model
                 automdl.enabled = FALSE,
                 arima.p  = 0, arima.d  = 1, arima.q  = 1,
                 arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  ## G - Handel -----------------------------------
  G = perTramo(b1g$L[, "G"] %>% window(end = c(2010,4)), template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c( "AO", "AO"),
               usrdef.outliersDate = c("2002-07-01", "2008-10-01"),
               # Trading Days
               usrdef.varEnabled = TRUE,
               usrdef.var = td5, usrdef.varType = "Calendar",
               tradingdays.option = "UserDefined",
               # Easter
               easter.type = "NA", easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 1, arima.d  = 0, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE)
)

# Reihen die 2012 getrennt werden --------------

b1gVol2012 <- perHts(
  ## A - Land- und Forstwirtschaft -------------------------------------
  A = perTramo(b1g$L[, "A"] %>% window(start = 2012), template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = FALSE,
               usrdef.outliersType = NA,
               usrdef.outliersDate = NA,
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 2, arima.d  = 0, arima.q  = 0,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)


b1gVol2012zr <- perHts(
  ## A - Land- und Forstwirtschaft -------------------------------------
  A = perTramo(b1g$L[, "A"] %>% window(end = c(2012,4)), template = "RSA3",
               # Transformation
               transform.function = "Log",
               # Outliers
               outlier.enabled = FALSE,
               usrdef.outliersEnabled = TRUE,
               usrdef.outliersType = c("AO"),
               usrdef.outliersDate = c("2012-01-01"),
               # Trading Days
               usrdef.varEnabled = FALSE,
               # usrdef.var = NA, usrdef.varType = "Calendar",
               # tradingdays.option = "UserDefined",
               # Easter
               easter.type = NULL, easter.duration = 6,
               # Arima-Model
               automdl.enabled = FALSE,
               arima.p  = 0, arima.d  = 0, arima.q  = 1,
               arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
)

# Reihen Zusammen Stückeln --------------------------

## 2010 -----------------------
b1gVol2010$run()
b1gVol2010zr$run()

# Achtung hier noch schauen!!
output_b1gVol <- c(output_b1gVol, lapply(names(b1gVol2010$components), function(x){
  ts_bind(b1gVol2010$components[[x]]$output$final$series[,c("y", "sa", "t")],
          b1gVol2010zr$components[[x]]$output$final$series[,c("y", "sa", "t")])%>%
    ts_c(s = .[, "y"]/.[,"sa"],
         i = .[, "sa"]/.[, "t"])
}) %>%
  `names<-`(names(b1gVol2010$components)))


## 2012 ----------------

b1gVol2012$run()
b1gVol2012zr$run()



output_b1gVol$A <- ts_bind(b1gVol2012$output$final$series[,c("y", "sa", "t")],
                           b1gVol2012zr$output$final$series[,c("y", "sa", "t")]) %>%
  ts_c(s = .[, "y"]/.[,"sa"],
       i = .[, "sa"]/.[, "t"])


