calc_avg_rating <- function(player_data) {
  if (!"player" %in% names(player_data) || !"rating" %in% names(player_data)) {
    stop("Input data must contain 'player' and 'rating' columns.")
  }
  player_data %>%
    group_by(player) %>%
    summarize(avg_rating = mean(rating, na.rm = TRUE)) %>%
    arrange(desc(avg_rating))
}
