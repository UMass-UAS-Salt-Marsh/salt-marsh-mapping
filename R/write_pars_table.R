#' Write a parameter table
#' 
#' Given a parameter name the corresponds to tab-delimited file, write a data frame to it.
#' 
#' @param data Data frame to write
#' @param name Parameter name
#' @importFrom utils write.table
#' @keywords internal


write_pars_table <- function(data, name) {
   
   
   if(!name %in% names(the))
      stop('Parameter ', name, ' not in ', file.path(the$parsdir, the$parsfile))
   f <- file.path(the$parsdir, the[[name]])
   if(!file.exists(f))
      stop('Parameter file ', f, ' not found')
   write.table(data, f, sep = '\t', row.names = FALSE, quote = FALSE)
}