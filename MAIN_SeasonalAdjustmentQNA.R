# ~~~~~~~~~~~~~~~~~~
#
# QVGR SAISONBEREINIGUNG MASTERFILE
#
# Stand Mai 2022
# Autoren: Julia Schieber-Knöbl, Angelika Meraner, Markus Fröhlich
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


## Entstehung ----------------
source("Step2_Bereinigung_B1G_vol.R")
source("Step2_Bereinigung_B1G_PI.R")
source("Step2_Bereinigung_BIP_Steuern_vol.R")
source("Step2_Bereinigung_BIP_Steuern_PI.R")
source("Step2_Bereinigung_D2D3.R")

source("Step3_Berechnungen_Entstehung.R")

## Verwendung -----------------
### Konsum --------------------
source("Step2_Bereinigung_Konsum_vol.R")
source("Step2_Bereinigung_Konsum_PI.R")

source("Step3_Berechnungen_Konsum.R")

### Investitionen --------------------
source("Step2_Bereinigung_Investitionen_vol.R")
source("Step2_Bereinigung_Investitionen_nom.R")
source("Step2_Bereinigung_Investitionen_PI.R")

source("Step3_Berechnungen_Investitionen.R")

### Außenhandel ---------------------
source("Step2_Bereinigung_Außenhandel_vol.R")
source("Step2_Bereinigung_Außenhandel_PI.R")

source("Step3_Berechnungen_Außenhandel.R")

## Verteilung -----------------
source("Step2_Bereinigung_VT_D11.R")
source("Step2_Bereinigung_VT_D12.R")

## Bevölkerung und Arbeitsvolumen --------------
source("Step2_Bereinigung_VT_HW.R")
source("Step2_Bereinigung_VT_JB.R")
source("Step2_Bereinigung_VT_PS.R")


source("Step3_Berechnungen_Verteilung.R")


