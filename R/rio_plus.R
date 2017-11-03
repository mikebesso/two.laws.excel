#' @export
ExportDataFrameToExcel <- function(){
}

#' @export
ExportDataFramesToExcel <- function(){
}


#' @export
ImportDataFramesFromExcel <- function(path, whichSheets, rbind = FALSE, rbindLabel = "_file", rbindFill = TRUE){

  AssertFileExists(path)

  DataFrames <- rio::import_list(
    file = path,
    setclass = "tibble",
    which = whichSheets,
    rbind = rbind,
    rbind_label = rbindLabel,
    rbind_fill = rbindFill
  )

  return(DataFrames)

}
