# ~~~~~~~~~~~~~~~~~~
#
# QVGR SAISONBEREINIGUNG MASTERFILE
#
# Stand Februar 2021
# Autoren: Julia knöbl, Markus Fröhlich
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls())

# Pakete laden--------------------------
library(persephone)
library(dplyr)
library(tsbox)
library(data.table)
library(chainSTAT)

# library(tidyr)
# library(DirVSTAT)
# library(tseries)
# library(dataSTAT)



# Tabellen für Saisonbereinigung erstellen -------------
# auf Basis von ADJ_LEVEL
# Code von Julia Knöbl
source("Step1_LoadInput.R")


# Einstellungen Saisonbereigigung ---------
## Arbeitstage generieren =================
td7 <- gen_td(ff = 4, hd = list("01-01", "01-06", "05-01", "easter+1", "easter+39",
                                "easter+50", "easter+60", "08-15", "10-26", "11-01",
                                "12-08", "12-24", "12-25", "12-26", "12-31"),
              weight = c(rep(1,11), 0.5, rep(1,2), 0.5))
td7 <- td7[[3]]

# QNA-Reihen beginnen 1995
td7 <- window(td7, start = c(1995, 1), freq = 4)
td7lY <- td7

# Working day regressor
td5 <- as.data.frame(td7lY)
td5lY <- td5 %>% rowwise() %>% summarize(wd5 = Monday + Tuesday + Wednesday + Thursday +
                                           Friday - (5/2)*Saturday, lpYear) %>% 
  ts(start = c(1995, 1), freq = 4)

# wenn lpYear nicht zu laden geht:
load("TD5lY.Rds")
load("TD7lY.Rds")
td7 <- td7lY[,1:6]
td5 <- td5lY[,"wd5"]

# Bereinigung-------------------------------------------
# Modelle werden mit der neuen Jahresrechnung von Markus Fröhlich geprüft
# unterjährig von QVGR ausgeführt
# Code von Markus Fröhlich


# _ T0101 Entstehung ----------------
source("Step2_Bereinigung_T0101_vol.R")
source("Step2_Bereinigung_T0101_preise.R")
source("Step3_Berechnungen_T0101.R")

# _ T0102 Verwendung -----------------
source("Step2_Bereinigung_T0102_vol.R")
source("Step2_Bereinigung_T0102_nom.R")
source("Step2_Bereinigung_T0102_preise.R")
source("Step3_Berechnungen_T0102.R")

# _ T0103 Verteilung -----------------
source("Step2_Bereinigung_T0103_D11.R")
source("Step2_Bereinigung_T0103_D12.R")
source("Step2_Bereinigung_T0103_rest.R")
source("Step3_Berechnungen_T0103.R")

# _ T0110 Bevölkerung ----------------
source("Step2_Bereinigung_T0110.R")

# _ T0111 Arbeitsvolumen --------------
source("Step2_Bereinigung_T0111_HW.R")
source("Step2_Bereinigung_T0111_JB.R")
source("Step2_Bereinigung_T0111_PS.R")
source("Step3_Berechnungen_T0111.R")

# _ T0117 Konsum ----------------------
source("Step2_Bereinigung_T0117_vol.R")
source("Step2_Bereinigung_T0117_preise.R")
source("Step3_Berechnungen_T0117.R")

# _ T0120 Exporte ----------------------
source("Step2_Bereinigung_T0120.R")
source("Step3_Berechnungen_T0120.R")

# _ T0121 Importe ----------------------
source("Step2_Bereinigung_T0121.R")
source("Step3_Berechnungen_T0121.R")

