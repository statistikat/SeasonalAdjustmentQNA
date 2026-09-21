
get_new_outliers <- function(res) {
  
  user_outliers <- res$params$regarima$regression$userdef$outliers$Final
  
  # keine User-Outlier vorhanden
  if (is.null(user_outliers) ||
      length(user_outliers) == 1 && is.na(user_outliers)[1] ||
      !is.data.frame(user_outliers)) {
    
    user_names <- character(0)
    
  } else {
    
    d <- as.Date(user_outliers$date)
    
    user_names <- paste0(
      user_outliers$type,
      " (",
      c("I", "II", "III", "IV")[
        (as.integer(format(d, "%m")) - 1) %/% 3 + 1
      ],
      "-",
      format(d, "%Y"),
      ")"
    )
  }
  
  coef_outliers <- grep(
    "^(AO|LS|TC)",
    rownames(res$output$regarima$regression.coefficients),
    value = TRUE
  )
  
  setdiff(coef_outliers, user_names)
}
# get_new_outliers(oldres)

# for(i in seq_along(tsnames)) {
# cat(i,":",tsnames[i],"\n")
# oldres <- htsobj$getComponent(tsnames[i])
# print(get_new_outliers(oldres))
# cat("\n")
# }
