# myfile.R
#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  plumber::forward()
}
#' Plot a histogram
#' @png
#' @get /plot
function(randnum=100){
  rand <- rnorm(100)
  hist(rand)
}
#' @get /mean
normalMean <- function(samples=10){
  data <- rnorm(samples)
  mean(data)
}
#' @post /sum
addTwo <- function(a, b){
  as.numeric(a) + as.numeric(b)
}

