library(dplyr)
library(magick)
library(hexSticker)
library(colorspace)

# Colores
color1 <- "#18BC9C"
color2 <- "#F8766D"
color3 <- "#7CAE00"
color4 <- "#C77CFF"

# Carga de la imagen
img <- image_read("img/logos/virus.png")
# Modificación de la imagen
img <- img %>%
    image_convert("png") %>%
    image_transparent(color = "white", fuzz = 20)

# Creación del hex sticker
sticker <- sticker(img,
    package = "Epidemiología", p_size = 17, p_y = 1.45,
    s_x = 1, s_y = 0.85,
    s_width = 1.5, s_height = 1.5,
    h_fill = color1, h_color = darken(color1, 0.2),
    url = "aprendeconalf.es",
    u_size = 9,
    u_color = "white",
    filename = "img/logos/sticker.png"
)

plot(sticker)
