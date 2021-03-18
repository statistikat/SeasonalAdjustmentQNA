# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Berechnungen T0101 Entstehung
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# Variablen aus MASTER Saisonbereigung.R erforderlich

# Volumen ----
T101Adj_vol <- lapply(ent_vol$components, function(x){
  x$output$final$series
})
# d21 wird geteilt wegen Bruch
T101Adj_vol$D21 <- ent_D21

names(T101Adj_vol) <- gsub("ent_", "", names(T101Adj_vol))

# Preise --------
T101Adj_impPI_L <- lapply(ent_price$components, function(x){
  x$output$final$series
})


names(T101Adj_impPI_L) <- gsub("ent_", "", names(T101Adj_impPI_L))

# Indirekt bereinigte nominelle Reihen --------------

T101Y <- list(vol = do.call(cbind,lapply(T101Adj_vol, `[`, i = ,j = "sa")),
              impPI_L = do.call(cbind,lapply(T101Adj_impPI_L, `[`, i = ,j = "sa")))
T101Y$nom <- `colnames<-`(T101Y$vol*T101Y$impPI_L[, colnames(T101Y$vol)] / 100, colnames(T101Y$vol))


T101Y$vjp <- lapply(names(T101Adj_vol), function(x){
  T101TS$vjp[,x]/T101Adj_vol[[x]][, "s"]
}) %>%
  `names<-`(names(T101Adj_vol)) %>%
  do.call(cbind, .)


# T101nom_sa <- mapply(function(x, y) {
#   x[, 2] * y[, 2]/100
# }, x = T101Adj_vol, y = T101Adj_impPI_L)

# Trend rechnet das WIFO
# T101nom_t <- mapply(function(x, y) {
#   x[, 3] * y[, 3]/100
# }, x = T101Adj_vol, y = T101Adj_impPI_L)


# _ Summen --------------------------------------

T101Y_neu <- lapply(c("nom", "vjp"), function(b){
  temp <- T101Y[[b]]
  sums <- cbind(GTI = rowSums(temp[, c("G", "H", "I")]),
                GVA = rowSums(temp[, c("A", "BTE", "F", "G", "H", "I", "J", "K", "L", "M_N", "OTQ", "RTU")]),
                D21X31 = temp[, "D21"] - temp[, "D31"],
                YA1 = 0)
  out <- ts_c(BIP = sums[, "GVA"] + sums[, "D21X31"],
              temp,
              sums)
  return(out)
}) %>%
  `names<-`(c("nom", "vjp"))


T101Y_neu$vol <- chainlinkDF(T101Y_neu)

lapply(colnames(T101Y_neu$nom), function(x){
  cbind(nom = T101Y_neu$nom[,x],
        vol = T101Y_neu$vol[,x]) %>%
    dygraphs::dygraph(main = x)
})



T101Y_sums <- list(nom = T101Y_neu$nom[, c("BIP", "GVA", "A", "C", "BTE", "F", "G", "H", "I", "J", "K", "L", "M_N", "OTQ", "RTU", "D21", "D31", "D21X31", "YA1")],
                   vol = T101Y_neu$vol[, c("BIP", "GVA", "A", "C", "BTE", "F", "GTI", "J", "K", "L", "M_N", "OTQ", "RTU", "D21", "D31", "D21X31", "YA1")])
  


# Arbeitstagsbereinigt ------------------------------------------------

# bei multiplikativer Verknüpfung (log)
# td_fac <- 1 + Obj$output$regarima$model$effects[, 2] + Obj$output$regarima$model$effects[, 3]
# Y_cal <- y/td_fac

# Bei additiver Verknüpfung:
#   
#   td_fac <- Obj$output$regarima$model$effects[, 2] + Obj$output$regarima$model$effects[, 3]
# Y_cal <- y - td_fac

T101_td_fac <- lapply(ent_vol$components, function(x){
  td_fac <- 1 + x$output$regarima$model$effects[, "tde"] + x$output$regarima$model$effects[, "ee"]
}) %>%
  do.call(cbind, .)
colnames(T101_td_fac) <- gsub("ent_", "", colnames(T101_td_fac))

# d21 hat keine TD effekte, dehalb nimm den 1 von D31!
T101_td_fac <- ts_c(T101_td_fac, D21 = T101_td_fac[, "D31"])


T101W <- lapply(c("vol", "vjp"), function(x){
  `colnames<-`(T101TS[[x]][, colnames(T101_td_fac)] / T101_td_fac, colnames(T101_td_fac))
}) %>%
  `names<-`(c("vol", "vjp"))

T101W$nom <- `colnames<-`(T101W$vol*T101TS$impPI_L[, colnames(T101W$vol)] / 100, colnames(T101W$vol))


# _ Summen --------------------------------------

T101W_neu <- lapply(c("nom", "vjp"), function(b){
  temp <- T101W[[b]]
  sums <- cbind(GTI = rowSums(temp[, c("G", "H", "I")]),
                GVA = rowSums(temp[, c("A", "BTE", "F", "G", "H", "I", "J", "K", "L", "M_N", "OTQ", "RTU")]),
                D21X31 = temp[, "D21"] - temp[, "D31"],
                YA1 = 0)
  out <- ts_c(BIP = sums[, "GVA"] + sums[, "D21X31"],
              temp,
              sums)
  return(out)
}) %>%
  `names<-`(c("nom", "vjp"))


T101W_neu$vol <- chainlinkDF(T101W_neu)

lapply(colnames(T101W$vol), function(x){
  cbind(vol1 = T101W$vol[,x],
        vol2 = T101W_neu$vol[,x]) %>%
    dygraphs::dygraph(main = x)
})



T101W_sums <- list(nom = T101W_neu$nom[, c("BIP", "GVA", "A", "C", "BTE", "F", "G", "H", "I", "J", "K", "L", "M_N", "OTQ", "RTU", "D21", "D31", "D21X31", "YA1")],
                   vol = T101W_neu$vol[, c("BIP", "GVA", "A", "C", "BTE", "F", "GTI", "J", "K", "L", "M_N", "OTQ", "RTU", "D21", "D31", "D21X31", "YA1")])
