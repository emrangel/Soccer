library(ggplot2)
library(dplyr)
library(ggimage)



##Saving 12.4 x 8.2 in image##
help("geom_image")

##Primero leer los data frames

#equipos <- read.csv("C:/Users/Mateo/Desktop/Rstudio/Dislike/Fut/Soccer/Datos/equipos", row.names=1)
#View(equipos)
#Teams <- read.csv("C:/Users/Mateo/Desktop/Rstudio/Dislike/Fut/Soccer/Datos/Teams", row.names=1)
#View(Teams)
#Importante que el directorio del trabajo sea donde están los escudos 

##Gráfico xG y xGA mean
{

  Graf=ggplot(equipos, aes(x = xG, y = xGA), col.axis = "red") +
    ggtitle(label = "Análisis de xG vs xGA" ,subtitle = "Comparativa xG y xGA") +
    geom_image(aes(image = badge), size = 0.04,) +
    #geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


    geom_vline(aes(xintercept = mean(xGA)), color = "gray", linetype = "dashed") +
    geom_hline(aes(yintercept = mean(GolesR)), color = "gray", linetype = "dashed") +
    labs(y = "xGA",
         x = "xG",
         caption = "Fuente: Wyscout  Elaborado por: Erick Rangel")+
    theme(legend.position="none") +
    theme(plot.title = element_text(hjust = 0.5, size=14, colour = "white"),
          plot.subtitle = element_text(hjust = 0.5,
                                       size=10,colour = "white"),
          plot.caption = element_text(hjust = 0.5,
                                      size=10,colour = "white"),
          axis.text.x = element_text( colour="white"),
          axis.text.y = element_text(colour="white"),
          axis.title.x = element_text(colour = "white"),
          axis.title.y = element_text(colour = "white"),
          panel.background = element_rect("#182849"),
          plot.background = element_rect(fill = "#182849"),
          panel.border = element_rect(fill = NA, color = "white"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank())

  plot(Graf)
}

ggsave("Graf.png", width = 12.4, height = 8.2)


###xG y Goles lineal

{
  Graf2=ggplot(equipos, aes(x = xG, y = Goles), col.axis = "red") +
    ggtitle(label = "Análisis de xG" ,subtitle = "Comparativa xG y Goles") +
    geom_image(aes(image = badge), size = 0.04,) +
    geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


    ##geom_vline(aes(xintercept = mean(xGA)), color = "red", linetype = "dashed") +
    ##geom_hline(aes(yintercept = mean(GolesR)), color = "red", linetype = "dashed") +
    labs(y = "Goles",
         x = "xG",
         caption = "Fuente: Wyscout  Elaborado por: Erick Rangel")+
    theme(legend.position="none") +
    theme(plot.title = element_text(hjust = 0.5, size=14, colour = "white"),
          plot.subtitle = element_text(hjust = 0.5,
                                       size=10,colour = "white"),
          plot.caption = element_text(hjust = 0.5,
                                      size=10,colour = "white"),
          axis.text.x = element_text( colour="white"),
          axis.text.y = element_text(colour="white"),
          axis.title.x = element_text(colour = "white"),
          axis.title.y = element_text(colour = "white"),
          panel.background = element_rect("#182849"),
          plot.background = element_rect(fill = "#182849"),
          panel.border = element_rect(fill = NA, color = "white"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank())

  plot(Graf2)
}

ggsave("Graf2.png", width = 12.4, height = 8.2)


##Gráfico xGA y GolesR


{  Graf1=ggplot(equipos, aes(x = xGA, y = GolesR), col.axis = "red") +
    ggtitle(label = "Análisis de xGA" ,subtitle = "Comparativa xGA y Goles Recibidos") +
    geom_image(aes(image = badge), size = 0.04,) +
    geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


    ##geom_vline(aes(xintercept = mean(xGA)), color = "red", linetype = "dashed") +
    ##geom_hline(aes(yintercept = mean(GolesR)), color = "red", linetype = "dashed") +
    labs(y = "Goles Recibidos",
         x = "xGA totales",
         caption = "Fuente: Wyscout  Elaborado por: Erick Rangel")+
    theme(legend.position="none") +
    theme(plot.title = element_text(hjust = 0.5, size=14, colour = "white"),
          plot.subtitle = element_text(hjust = 0.5,
                                       size=10,colour = "white"),
          plot.caption = element_text(hjust = 0.5,
                                      size=10,colour = "white"),
          axis.text.x = element_text( colour="white"),
          axis.text.y = element_text(colour="white"),
          axis.title.x = element_text(colour = "white"),
          axis.title.y = element_text(colour = "white"),
          panel.background = element_rect("#182849"),
          plot.background = element_rect(fill = "#182849"),
          panel.border = element_rect(fill = NA, color = "white"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank())

  plot(Graf1)

}

ggsave("Graf1.png", width = 12.4, height = 8.2)

