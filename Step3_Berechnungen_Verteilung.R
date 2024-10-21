# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen Verteilung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Vorraussetzung: 
# - Step2_Bereinigung_B1G_vol.R
# - Step2_Bereinigung_B1G_PI.R
# - Step2_Bereinigung_BIP_Steuern_vol.R
# - Step2_Bereinigung_BIP_Steuern_PI.R


# Indirekt bereinigte nominelle Reihen --------------

vtY <- list(D11 = do.call(cbind,lapply(output_vtD11, `[`, i = ,j = "sa")),
            D12 = do.call(cbind,lapply(output_vtD12, `[`, i = ,j = "sa")))
vtY$D1 <- `colnames<-`(vtY$D11 + vtY$D12, colnames(vtY$D11))



avPsY <- list(SAL = do.call(cbind,lapply(output_ps_sal, `[`, i = ,j = "sa")),
             SELF = do.call(cbind,lapply(output_ps_self, `[`, i = ,j = "sa")))


avHwY <- list(SAL = do.call(cbind,lapply(output_hw_sal, `[`, i = ,j = "sa")),
              SELF = do.call(cbind,lapply(output_hw_self, `[`, i = ,j = "sa")))

avJbY <- list(SAL = do.call(cbind,lapply(output_jb_sal, `[`, i = ,j = "sa")),
              SELF = do.call(cbind,lapply(output_jb_self, `[`, i = ,j = "sa")))
