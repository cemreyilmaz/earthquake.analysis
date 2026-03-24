#' Earthquake Database (NOAA)
#'
#' A comprehensive dataset containing historical earthquake records from the
#' NOAA National Centers for Environmental Information (NCEI).
#'
#' @format A data frame with all columns from the original NOAA dataset, including:
#' \describe{
#'   \item{Search.Parameters}{Special grouping}
#'   \item{Year, Mo, Dy, Hr, Mn, Sec}{Time component columns}
#'   \item{Tsu, Vol}{Parameters}
#'   \item{Location.Name}{Geographical descriptors}
#'   \item{Latitude, Longitude}{Decimal coordinates of the epicenter}
#'   \item{Focal.Depth..km.}{Earthquake depth}
#'   \item{Mag}{Earthquake magnitude on the Richter scale}
#'   \item{MMI.Int}{Parameter}
#'   \item{Deaths, Death.Description, Missing, Missing.Description, Injuries, Injuries.Description}{Impact metrics regarding casualties}
#'   \item{Damage...Mil.}{Financial impact in millions of USD}
#'   \item{Damage.Description, Houses.Destroyed, Houses.Destroyed.Description, Houses.Damaged, Houses.Damaged.Description}{Impact metrics regarding material damage}
#'   \item{Total.Deaths, Total.Death.Description, Total.Missing, Total.Missing.Description, Total.Injuries, Total.Injuries.Description, Total.Damage...Mil., Total.Damage.Description, Total.Houses.Destroyed, Total.Houses.Destroyed.Description, Total.Houses.Damaged, Total.Houses.Damaged.Description}{Total impact}
#' }
#' @source \url{https://www.ngdc.noaa.gov/hazard/strong.shtml}
"earthquakes"
