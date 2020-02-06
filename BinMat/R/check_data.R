#' @title Checks binary matrix for unwanted characters.
#'
#' @description Checks for unwanted values.
#'
#' @param x A CSV file containing replicate pairs of binary data.
#'
#' @return Index positions where unwanted values occur.
#'
#' @examples data(BinMatInput_reps)
#' mat = BinMatInput_reps
#' check_data(mat)
#'
#' @export

check_data = function(x){
  #row.names(x) <- x[[1]]
  #x[,1] <- NULL
  x[,] <- sapply(x[,], as.numeric)
  answer = which(x != 0 & x != 1 & x != "?", arr.ind = T)
  if(length(answer) > 0) print(answer)
  else {writeLines("None found.")}

}


