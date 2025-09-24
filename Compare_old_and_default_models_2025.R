#git push origin 'branch-name'

#########################
# TO DO 1:
#########################

# Input-Zeitreihenobjekt definieren (wird in anderem Skript eingelesen)
#indat <- copy(av)
indat <- copy(vtD1)

# Hierarchische Objekte aus den einzelnen Bereinigungs-Skripten klonen um alte/bisherige Einstellungen zu bekommen.

# BeispieL: Step2_Bereinigung_AV_HW.R:
# Mit Skript Step2_Bereinigung_AV_HW.R hierarchisches Objekt erzeugen und dieses dann klonen
# htsobj <- av_HW_SAL$clone()

htsobj <- vert_D12$clone(deep = TRUE)

# bei vert_D11:
# names(htsobj$components) <- paste0("D11_XDC_W2_",names(htsobj$components))
# bei vert_D12:
names(htsobj$components) <- paste0("D11_XDC_W2_",names(htsobj$components))


#########################

# Dann holen wir uns die zu bereinigenden Reihen, und zwar alle, die bisher bereinigt wurden und 
# deshalb im hts-Objekt vorhanden sind.
#
# Dabei muss man aufpassen, falls bisher nicht bereinigte Reihen evt. neu bereinigt werden sollen.
# Dann würde ich diese einfach wieder im hts-Objekt inkludieren, dann sind sie automatisch bei den 
# Komponents dabei.
tsnames <- names(htsobj$components)
htsobj$run()

#########################
# TO DO 2:
#########################
length(tsnames)
# Alle i einzeln durchgehen (so viele, wie es zu bereinigende Reihen gibt, also length(tsnames))
i <- 11
# # Nach bestimmtem Reihennamen suchen
# which(tsnames == "SELFxHWxW2xK")
# i <- 7

#########################
tsnames[i]
oldres <- htsobj$getComponent(tsnames[i])

#########################
## Default-Modell
#########################
newres <- perTramo(indat[,  tsnames[i]], template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = NULL, #log
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = TRUE,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = TRUE) 
newres$run()

# oldres$plot(forecasts=FALSE)
# newres$plot(forecasts=FALSE)
tsname <- tsnames[i]
rmarkdown::render("Diagonistics_QNA.Rmd",
                  params = list(
                    i = i,
                    tsname = tsname,
                    newres=newres,
                    oldres = oldres),
                  output_file=paste0("Diagnostics_QNA.html"))

browseURL("Diagnostics_QNA.html")

#########################
## Varianten ausprobieren
#########################
newres <- perTramo(indat[,  tsnames[i]],  template = "RSA3", 
                   # Transformation -------------------------------------------------------  
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = TRUE, 
                   usrdef.outliersEnabled = TRUE, 
                   usrdef.outliersType = c("AO","LS"),
                   usrdef.outliersDate = c("2007-10-01","2020-04-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE, 
                   # usrdef.var = NA, usrdef.varType = "Calendar", 
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 2, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
newres$run()

# outlier.usedefcv = FALSE,
# outlier.cv = 3.9,

# oldres$plot(forecasts=FALSE)
# newres$plot(forecasts=FALSE)

# newres$plot(forecasts=FALSE,annualComparison=2)
# oldres$plot(forecasts=FALSE,annualComparison=2) 

rmarkdown::render("Diagonistics_QNA.Rmd",
                  params = list(
                    i = i,
                    newres=newres,
                    oldres = oldres),
                  output_file=paste0("Diagnostics_QNA.html"))

browseURL("Diagnostics_QNA.html")

# #############################
# # Outliers checken mit oldres
# #############################
# # funktioniert leider nicht, da gibt es irgendein Problem mit updateParams:
# ## outlier.enabled = FALSE und usrdef.outliersEnabled = TRUE
# # lässt sich nicht richtig auf outlier.enabled = TRUE und usrdef.outliersEnabled = FALSE
# # setzen!!!
# 
# newres <- oldres$clone(deep = TRUE)
# 
# newres$updateParams(outlier.enabled = TRUE, usrdef.outliersEnabled = FALSE,
#                     usrdef.outliersType = NA, usrdef.outliersDate =NA)
# newres$run()
# newres$output$regarima
# 
# rmarkdown::render("Diagonistics_QNA.Rmd",
#                   params = list(
#                     i = i,
#                     newres=newres,
#                     oldres = oldres),
#                   output_file=paste0("Diagnostics_QNA.html"))
# 
# browseURL("Diagnostics_QNA.html")


# # Check results of one series, i.e. the components of a hierarchical object.
# 
# hts <- av_HW_SELF$clone()
# 
# i <- 6
# res <- hts$components[[i]]
# 
# rmarkdown::render("CheckResults_QNA.Rmd",
#                   params = list(
#                     i = i,
#                     res=res),
#                   output_file=paste0("CheckResults_QNA.html"))
# 
# browseURL("CheckResults_QNA.html")
# 
# res$updateParams(outlier.enabled = TRUE)
# res$run()
# rmarkdown::render("CheckResults_QNA.Rmd",
#                   params = list(
#                     i = i,
#                     res=res),
#                   output_file=paste0("CheckResults_QNA.html"))
# 
# browseURL("CheckResults_QNA.html")

##############################
# Für single Objekte
##############################
tsname <- "selfPsCb"
oldres <- selfPsCb$clone()

oldres$run()
i <- 0
#########################
## Default-Modell
#########################
newres <- perTramo(oldres$ts, template = "RSA3", 
                   # Transformation -------------------------------------------------------
                   transform.function = NULL, #log
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = TRUE,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = TRUE) 
newres$run()


rmarkdown::render("Diagonistics_QNA.Rmd",
                  params = list(
                    i = i,
                    tsname = tsname,
                    newres=newres,
                    oldres = oldres),
                  output_file=paste0("Diagnostics_QNA.html"))

browseURL("Diagnostics_QNA.html")


newres <- perTramo(window(av[, "SELFxPSxW2xC"], end = c(2008,4)), template = "RSA3",
                   # Transformation -------------------------------------------------------
                   transform.function = "Log",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = TRUE,
                   usrdef.outliersEnabled = FALSE,
                   usrdef.outliersType = c("LS", "LS"),
                   usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                   # Trading Days ---------------------------------------------------------
                   # usrdef.varEnabled = FALSE,
                   # usrdef.var = NA, usrdef.varType = "Calendar",
                   # tradingdays.option = "UserDefined",
                   # Easter ---------------------------------------------------------------
                   # easter.type = NA, easter.duration = 6,
                   # Arima-Model ----------------------------------------------------------
                   automdl.enabled = FALSE, ######
                   arima.p  = 1, arima.d  = 0, arima.q  = 0,
                   arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE)


newres$run()


rmarkdown::render("Diagonistics_QNA.Rmd",
                  params = list(
                    i = i,
                    tsname = tsname,
                    newres=newres,
                    oldres = oldres),
                  output_file=paste0("Diagnostics_QNA.html"))

browseURL("Diagnostics_QNA.html")

# residuals_tests_names <- sprintf("diagnostics.%s",
#                                  c("qs","qs.on.i", "ftest", "ftest.on.i",
#                                    "residual.all", "residual.end",
#                                    "residualtd","residualtd.on.i"))


quality_report <- av_HW_SAL$generateQrTable()
write.csv2(quality_report, "QR_av_HW_SAL.csv")

quality_report <- av_HW_SELF$generateQrTable()
write.csv2(quality_report, "QR_av_HW_SELF.csv")

quality_report <- av_JB_SAL$generateQrTable()
write.csv2(quality_report, "QR_av_JB_SAL.csv")

quality_report <- av_JB_SELF$generateQrTable()
write.csv2(quality_report, "QR_av_JB_SELF.csv")

quality_report <- avxPSxSAL$generateQrTable()
write.csv2(quality_report, "QR_avxPSxSAL.csv")

quality_report <- avxPSxSELF$generateQrTable()
write.csv2(quality_report, "QR_avxPSxSELF.csv")

quality_report <- vert_D11$generateQrTable()
write.csv2(quality_report, "QR_vert_D11.csv")

quality_report <- vert_D12$generateQrTable()
write.csv2(quality_report, "QR_vert_D12.csv")




