#' @title Outputs group names specified in the input file for the creation of an nMDS plot.
#'
#' @description Returns group names in the uploaded consolidated binary data
#'
#' @param x Consolidated binary matrix with grouping information in column 2.
#'
#' @return Scree plot.
#'
#' @examples mat = BinMatInput_ordination
#' group_names(mat)
#'
#' @export

group_names = function(x){

  grps = as.factor(x[,2])
  print(levels(grps))

}
