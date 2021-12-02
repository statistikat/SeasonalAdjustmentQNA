# ~~~~~~~~~~~~~~~~~~
#
# QVGR SAISONBEREINIGUNG MASTERFILE
#
# Stand April 2021
# Autoren: Julia Knöbl, Markus Fröhlich
# qvgr@statistik.gv.at
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls())
setwd("SeasonalAdjustmentQNA")
# Pakete laden--------------------------
# wenn noch nicht installiert (bei Bedarf evtl. aktualisieren)
# devtools::install_github("statistikat/persephone")
# devtools::install_github("statistikat/chainSTAT")

library(persephone)
library(chainSTAT)
library(dplyr)
library(tsbox)
library(data.table)


# Tabellen für Saisonbereinigung laden -------------
# Variablendokumenation in README.md
source("Step1_LoadInput.R")

# Trading Days laden ---------
load("TD5lY.Rds")
load("TD7lY.Rds")
td7 <- td7lY[,1:6]
td5 <- td5lY[,"wd5"]

# Bereinigung-------------------------------------------
# Modelle werden einmal jährlich upgedated, Außreißer nach Bedarf gesetzt.


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

# _ T0110 Bevölkerung und T0111 Arbeitsvolumen --------------
source("Step2_Bereinigung_T0111_HW.R")
source("Step2_Bereinigung_T0111_JB.R")
source("Step2_Bereinigung_T0111_PS.R")
source("Step3_Berechnungen_T0111.R")
source("Step2_Bereinigung_T0110.R")

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

