library(hexSticker)

image_url <- "E:/Northwestern/12 - Capstone/R Package/SNAG-0001.png"

hexSticker::sticker(image_url,
                    package = "traumaR",
                    p_color = "#990000",
                    p_family = "sans", #sysfonts::font_families() to see all families
                    p_size = 14,
                    p_x = 1.0,
                    p_y = 1.7,
                    s_x = 1.01,
                    s_y = 1.03,
                    s_width = 0.95,
                    h_fill = "lightgrey",
                    h_color = "black",
                    url = 'https://github.com/ultramattyice/traumaR',
                    u_size = 3.5,
                    filename = "E:/Northwestern/12 - Capstone/R Package/traumaR_hex.png")




usethis::use_logo("~/Desktop/NU/R/Logos/tt_hex12.png")
