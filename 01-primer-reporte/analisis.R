# Análisis Pingüinos

# Cargar las librerías
library(tidyverse)
library(datos)

# Funciones
source("funciones.R")

# Leer el conjunto de datos limpios
datos <- pinguinos

# Datos descriptivos
summary(datos)

# Calcular la longitud media del pico para diferentes especies e islas usando dplyr
datos %>%
  filter(especie == "Adelia") %>%
  group_by(isla) %>%
  summarize(media_largo_pico = round(mean(largo_pico_mm, na.rm = TRUE), 2))

# Utilice la función en funciones.R
crear_scatterplot(datos, "Adelia", "Torgersen")