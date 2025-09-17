#git push origin 'branch-name'

#########################
# TO DO 1:
#########################

# Input-Zeitreihenobjekt definieren (wird in anderem Skript eingelesen)
indat <- copy(av)
# indat <- copy(vtD1)

# Hierarchische Objekte aus den einzelnen Bereinigungs-Skripten klonen um alte/bisherige Einstellungen zu bekommen.

# BeispieL: Step2_Bereinigung_AV_HW.R:
# Mit Skript Step2_Bereinigung_AV_HW.R hierarchisches Objekt erzeugen und dieses dann klonen
# htsobj <- av_HW_SAL$clone()

htsobj <- av_HW_SELF$clone()

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

# Alle i einzeln durchgehen (so viele, wie es zu bereinigende Reihen gibt, also length(tsnames))
i <- 1

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
newres <- perTramo(indat[,  tsnames[i]],template = "RSA3", 
                   # Transformation -------------------------------------------------------  
                   transform.function = "None",
                   # Outliers -------------------------------------------------------------
                   outlier.enabled = FALSE, 
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
                   automdl.enabled = FALSE,
                   arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                   arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE) 
# tradingdays.test = "Joint_F"

newres$run()

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
