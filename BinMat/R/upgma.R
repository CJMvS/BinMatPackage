#' @title Draws a hierarchical clustering tree (UPGMA).
#'
#' @description Creates a UPGMA hierarchical clustering tree
#'
#' @param x Consolidated binarx matrix
#' @param bts Bootstrap replications
#' @param method Distance method. Set to 'binary' (=Jaccard distance) by default
#' @param hclust Clustering method. Set to 'average' (=UPGMA) by default
#' @param size Size of plot.
#' @param lab_size Size of label text.
#'
#'
#' @return UPGMA tree
#' @examples data(BinMatInput_reps)
#' mat = BinMatInput_reps
#' cons = consolidate(mat)
#' clust = upgma(cons)
#'
#' @export

upgma = function(x, bts = 10, size = 0.55, lab_size = 0.55, method = "binary", hclust="average"){

  #x = x[,-1]
  #row.names(x) = x[,1]
  new_names_upgma = substring(row.names(x),0,50)
  row.names(x) = new_names_upgma
  x[x=="?"] = NA
  x = as.data.frame(x)
  result = pvclust::pvclust(t(x), method.dist = method, method.hclust = hclust, nboot = bts) # 'average' method is the UPGMA
  dendro = graphics::plot(result, cex = size, print.num = F, print.pv = T, cex.pv = lab_size)

  return(dendro)
}
