#' @param input Either a single data.frame or a list of data.frame's (e.g., from
#'     different speies). The data.frame has to have, in addition to any other 
#'     columns, columns named exactly "decimalLatitude" and "decimalLongitude".
#' @param mapdatabase The map database to use in mapping. What you choose here 
#' 		determines what you can choose in the region parameter. One of: county, 
#' 		state, usa, world, world2, france, italy, or nz. 
#' @param region The region of the world to map. From the maps package, run 
#' 		\code{sort(unique(map_data("world")$region))} to see region names for the
#' 		world database layer, or e.g., \code{sort(unique(map_data("state")$region))}
#' 		for the state layer.
#' @param geom The geom to use, one of geom_point or geom_jitter. Don't 
#' 		quote them. 
#' @param jitter If you use jitterposition, the amount by which to jitter 
#' 		points in width, height, or both. 
#' @param customize Further arguments passed on to ggplot. 
#' @return Map (using ggplot2 package) of points on a map or tiles on a map.
#' @details gbifmap takes care of cleaning up the data.frame (removing NA's, etc.) 
#' 		returned from rgbif functions, and creating the map. This function
#' 		gives a simple map of your data.  You can look at the code behing the 
#' 		function itself if you want to build on it to make a map according 
#' 		to your specfications.
#'   	
#'    Note that this function removes values that are impossible on the globe, 
#'    and those rows that have both lat and long as NA or zeros.
