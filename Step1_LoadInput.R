sapply(c("T101", "T102", "T103", "T110", "T111", "T117", "T120", "T121"), function(t){
  load(file.path("data", paste0(t, "TS.Rds")), envir = .GlobalEnv)
})

