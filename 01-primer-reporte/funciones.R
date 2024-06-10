crear_scatterplot <- function(data, especies_seleccionadas, isla_seleccionada) {
  # Filter the data for the specified species and island
  filtered_data <- data %>%
    na.omit() %>%
    filter(especie == especies_seleccionadas, isla == isla_seleccionada)
  
  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = largo_pico_mm, y = alto_pico_mm, color = especie, shape = especie)
  ) +
    geom_point() +
    labs(
      x = "Longitud de pico (mm)",
      y = "Profundidad del pico (mm)",
      title = paste("Dimensiones del pico del pingüino -", especies_seleccionadas, "-", isla_seleccionada)
    )
  
  return(plot)
}
