# einlesen wifo

# To do before publish: 
# ein paket erstellen, in dem die benötigten Funktionen aus DirVSTAT sind
# - chainlinkAO
# - chainlinkDF



objekte <- c("T101", "T102", "T103", "T110", "T111", "T117", "T120", "T121")

sapply(objekte, function(t){
  load(file.path("data", paste0(t, "TS.Rds")), envir = .GlobalEnv)
})

