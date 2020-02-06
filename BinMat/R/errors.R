#' @title Calculates Jaccard and Euclidean error rates.
#'
#' @description Calculates the Jaccard and Euclidean error rates.
#'
#' @param x Consolidated binary matrix
#'
#' @return JE (Jaccard Error), EE (Euclidean Error)
#'
#' @examples data(BinMatInput_reps)
#' mat = BinMatInput_reps
#' cons = consolidate(mat)
#' errors(cons)
#'
#' @export

errors = function(x){

  mismatch_err = matrix(nrow=nrow(x), ncol = 1)
  jacc_err = matrix(nrow=nrow(x), ncol = 1)


  for(i in 1:nrow(x)) {
    # find the number of 1s, Os and question marks
    ones = length(which(x[i,] == 1))
    zeroes = length(which(x[i,] == 0))
    questions = length(which(x[i,] == "?"))
    sum_bands = ones + questions

    mismatch_err[i,] = (questions/(questions + ones + zeroes))
    jacc_err[i,] = (questions/(questions + ones))

  }

  error_table = data.frame("Errors" = matrix(ncol = 1, nrow = 8))
  error_table[1,] = "Average Euclidean Error:"
  error_table[2,] = round(base::mean(mismatch_err[,1]),4)
  error_table[3,] = "Euclidean error St. dev:"
  error_table[4,] = round(stats::sd(mismatch_err[,1]),4)
  error_table[5,] = "Average Jaccard:"
  error_table[6,] = round(base::mean(jacc_err[,1]),4)
  error_table[7,] = "Jaccard error St.dev:"
  error_table[8,] = round(stats::sd(jacc_err[,1]),4)

return(error_table)

}
