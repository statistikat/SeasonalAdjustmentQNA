release <- F
# if release = T take released data from github repo, for development take unpublished data from upstream project

if(release){
  dataPath <- file.path("data")
} else{
  dataPath <- file.path("..", "data_unpublished")
}

sapply(c("b1g", "bip", "konsum", "invest", "ah", "vtD1", "av"), function(t) {
  assign(t, readRDS(file.path(dataPath, paste0(t, ".Rds"))), envir = .GlobalEnv)
})


# sapply(c("vtD1", "av"), function(t) {
#   assign(t, readRDS(file.path(dataPath, paste0(t, ".Rds"))), envir = .GlobalEnv)
# })
