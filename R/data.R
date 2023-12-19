#' World map of sovereign states
#'
#' World map of sovereign states based on Natural Earth data, modified to include Gaza and the West Bank as separate entities,
#' and to include Crimea as a part of Ukraine.
#' Also includes a few other minor modifications, like the separation of Abyie on the Sudan-South Sudan border,
#' separating Western Sahara from Morocco, and merging of North and South Cyprus.
#'
#' @format ## `world_map`
#' Simple feature collection with 200 features and 12 fields
#' \describe{
#'  \item{sov_a3}{Natural Earth alpha-3 code for sovereign states}
#'  \item{sovereignt}{Name of sovereign state}
#'  \item{type}{Type of entity}
#'  \item{admin}{Name of administrative region}
#'  \item{adm0_a3}{Natural Earth alpha-3 code for administrative region}
#'  \item{iso_a3}{ISO 3166-1 alpha-3 code for administrative region}
#'  \item{un_a3}{ISO 3166-1 alpha-3 code for administrative region}
#'  \item{wb_a3}{ISO 3166-1 alpha-3 code for administrative region}
#'  \item{continent}{Continent}
#'  \item{region_un}{UN region}
#'  \item{subregion}{UN subregion}
#'  \item{region_wb}{World Bank region}
#'  \item{geometry}{Geometry column}
#' }
#'
#' @details
#' The `geometry` column contains spatial information in the form of polygons
#' @usage data(world_map)
#'
#' @source <https://www.naturalearthdata.com/download/50m/cultural/ne_50m_admin_0_sovereignty.zip>
#'
#' @examples
#' \dontrun{
#'   # Load necessary packages
#'   library(sf)
#'
#'   # Load the dataset
#'   data(world_map)
#'
#'   # Plot the world map
#'   plot(st_geometry(world_map), col = "lightblue")
#' }
#'
#' @keywords datasets
#' @name world_map
#' @docType data
NULL
