#git push origin 'branch-name'


# indat <- T103TS
#####################################
#  Step2_Bereinigung_T0103_D11_JR2024
#####################################

#  tsnames <- c("D11_XDC_W2_A", "D11_XDC_W2_BTE", "D11_XDC_W2_C", "D11_XDC_W2_F", "D11_XDC_W2_GTI", 
#               "D11_XDC_W2_J", "D11_XDC_W2_K", "D11_XDC_W2_L", "D11_XDC_W2_M_N", "D11_XDC_W2_OTQ", "D11_XDC_W2_RTU")

#####################################
# Step2_Bereinigung_T0103_D12_JR2024
#####################################

# # names(vert_D12$components);dimnames(T103TS)
# tsnames <- c("D12_XDC_W2_A", "D12_XDC_W2_BTE", "D12_XDC_W2_C", "D12_XDC_W2_F", "D12_XDC_W2_GTI",
#   "D12_XDC_W2_J","D12_XDC_W2_K", "D12_XDC_W2_L", "D12_XDC_W2_M_N", "D12_XDC_W2_OTQ", "D12_XDC_W2_RTU")


indat <- T111TS
#####################################
# Step2_Bereinigung_T0111_HW_JR2024
#####################################
# #names(vert_HW_SAL$components);dimnames(T111TS)
# names(vert_HW_SAL$components)
# tsnames <- c("vert_A", "vert_BTE", "vert_C", "vert_F", "vert_GTI", 
#   "vert_J","vert_K", "vert_L", "vert_M_N", "vert_OTQ", "vert_RTU")
# # SAL
# # tsnames <- gsub("vert_", "SAL_HW_W2_",tsnames)
# # SELF
# tsnames <- gsub("vert_", "SELF_HW_W2_",tsnames)

#####################################
# Step2_Bereinigung_T0111_JB_JR2024
#####################################
# SAL
#names(vert_JB_SAL$components)
tsnames <- c("vert_A", "vert_BTE", "vert_C", "vert_F", "vert_GTI",
  "vert_J",
  # "vert_K", 
  "vert_L", "vert_M_N", "vert_OTQ", "vert_RTU")

tsnames <- gsub("vert_", "SAL_JB_W2_",tsnames)
# vert_K wird geteilt berechnet über vert_Ka und vert_Kb
# # vert_Ka
# window(T111TS[, "SAL_JB_W2_K"], end = c(2003,4))
# # vert_Kb
# window(T111TS[, "SAL_JB_W2_K"], start = c(2003,1))

# SELF
#names(vert_JB_SELF$components)
tsnames <- c("vert_A", "vert_BTE", "vert_C", "vert_F", "vert_GTI",
             "vert_J","vert_K", "vert_L", "vert_M_N", "vert_OTQ", "vert_RTU")
tsnames <- gsub("vert_", "SELF_JB_W2_",tsnames)
# vert_OTQ wird geteilt berechnet über vert_OTQa und vert_OTQb
# # vert_OTQa
# window(T111TS[, "SELF_JB_W2_OTQ"], end = c(2011,4))
# # vert_OTQb
# window(T111TS[, "SELF_JB_W2_OTQ"], start = c(2011,1))

#####################################
# Step2_Bereinigung_T0111_PS_JR2024
#####################################
# SAL
tsnames <- c("vert_A", "vert_BTE", "vert_C", "vert_F", "vert_GTI",
             "vert_J","vert_K", "vert_L", "vert_M_N", "vert_OTQ", "vert_RTU")
tsnames <- gsub("vert_", "SAL_PS_W2_",tsnames)

# SELF

tsnames <- c("vert_A", "vert_BTE", "vert_C", "vert_F", "vert_GTI",
             "vert_J","vert_K", "vert_L", "vert_M_N", "vert_OTQ", "vert_RTU")
tsnames <- gsub("vert_", "SELF_PS_W2_",tsnames)
# vert_C wird geteilt berechnet über selfPsCa und selfPsCb

##########
# TO DO 1:
#########################
i <- 1
#########################
##########
# TO DO 2:
#########################
tsnames[i];oldres <- vert_A

#########################
oldres$run()

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

rmarkdown::render("Diagonistics_QNA.Rmd",
                  params = list(
                    i = i,
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

# # Check results of on series, i.e. the components of a hierarchical object.
# 
# 
# hts <- vert_D12
# 
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
