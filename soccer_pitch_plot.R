soccer_pitch_plot <- function(event_data) {
  ggsoccer::ggplot_pitch() +
    geom_point(data = event_data, aes(x = x, y = y, color = event_type), size = 3) +
    labs(
      title = "Soccer Event Visualization",
      x = "Pitch Length",
      y = "Pitch Width"
    ) +
    theme_minimal()
}
