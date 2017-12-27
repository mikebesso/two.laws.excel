#' @export
ExportDataFrameToExcel <- function(){
}

#' @export
ExportDataFramesToExcel <- function(){
}


#' @export
ImportDataFrameFromExcelWorkbook <- function(path, whichSheet){

  AssertFileExists(path)

  DataFrames <- rio::import(
    file = path,
    setclass = "tibble",
    which = whichSheet
  )

  return(DataFrames)

}

#' @export
ImportDataFramesFromExcelWorkbook <- function(path, whichSheets){

  AssertFileExists(path)

  DataFrames <- rio::import_list(
    file = path,
    setclass = "tibble",
    which = whichSheets
  )

  return(DataFrames)

}

#' @export
ImportDataFramesFromExcelWorkbooks <- function(path, whichSheets, rbind = FALSE, rbindLabel = "_file", rbindFill = TRUE){

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
