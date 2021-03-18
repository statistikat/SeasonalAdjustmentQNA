# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0111 Arbeitsvolumen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich



# umbenennen damit es nachher wieder passt

names(T111Adj_HW_SAL) <- gsub("vert_", "", names(T111Adj_HW_SAL))
names(T111Adj_HW_SELF) <- gsub("vert_", "", names(T111Adj_HW_SELF))
names(T111Adj_JB_SAL) <- gsub("vert_", "", names(T111Adj_JB_SAL))
names(T111Adj_JB_SELF) <- gsub("vert_", "", names(T111Adj_JB_SELF))
names(T111Adj_PS_SAL) <- gsub("vert_", "", names(T111Adj_PS_SAL))
names(T111Adj_PS_SELF) <- gsub("vert_", "", names(T111Adj_PS_SELF))

# Indirekt bereinigte nominelle Reihen --------------

T111Y <- lapply(c("JB", "HW", "PS"), function(m){
  sal <- get(paste0("T111Adj_", m, "_SAL"))
  self <- get(paste0("T111Adj_", m, "_SELF"))
  temp <- list(SAL = do.call(cbind, lapply(sal, `[`, i = ,j = "sa")),
               SELF = do.call(cbind, lapply(self, `[`, i = ,j = "sa")))
  temp$EMP <- `colnames<-`(temp$SAL + temp$SELF[, colnames(temp$SAL)] , colnames(temp$SAL))
  return(temp)
}) %>%
  `names<-`(c("JB", "HW", "PS"))


# Summen --------------------------------------

T111Y_sums <- lapply(T111Y, function(m){
  lapply(m, function(a){
  temp <- data.table(a)
  temp[, `:=`("_T" = A + BTE+ `F` + GTI + J + K + L + M_N + OTQ + RTU)] %>%
    ts(start = 1995, frequency = 4)
  })
}) 


