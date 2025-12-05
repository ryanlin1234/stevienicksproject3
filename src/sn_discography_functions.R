# Function: is_above_average
# Description: Calculates if a specific album's energy is higher than the overall average energy.
# Output: Returns TRUE if album_energy is greater than overall_average, otherwise FALSE.

is_above_average <- function(album_energy, overall_average) {
  if (album_energy > overall_average) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

# Function: make_simple_label
# Description: Shortens album names that are longer than 15 characters for cleaner visualizations.
# Output: Returns the original name if shorter than 15 characters, or a shortened version with "..." if long.
make_simple_label <- function(album_name) {
  album_text <- as.character(album_name)
  if (nchar(album_text) > 15) {
    short_name <- substr(album_text, 1, 12)
    return(paste0(short_name, "..."))
  } else {
    return(album_text)
  }
}

