###Library
#library(magick)
#library(hrbrthemes)
#library(here)
library(readxl)
library(ggplot2)
library(dplyr)
library(ggimage)



##Saving 12.4 x 8.2 in image##
help("geom_image")

##equipos <- read.csv("C:/Users/Mateo/Desktop/Rstudio/Dislike//Soccer/Datos Conmebol/equiposcon.csv", row.names=1)
#Importante que el directorio del trabajo sea donde están los escudos 


##Gráfico xG y xGA mean

{
  
  Graf<-ggplot(equipos, aes(x = xGP, y = xGAP), col.axis = "red") +
    ggtitle(label = "Análisis xG vs xGA" ,subtitle = "Comparativa Promedio por Partido") +
    geom_image(aes(image = badge), size = 0.05,) +
    #geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


    geom_vline(aes(xintercept = mean(xGP)), color = "gray", linetype = "dashed") +
    geom_hline(aes(yintercept = mean(xGAP)), color = "gray", linetype = "dashed") +
    labs(y = "xGA",
         x = "xG",
         caption = "Fuente: Opta, @emrangel.\nDescarga Baloa & Onefootball")+
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


ggsave("CON1.png", width = 12.4, height = 8.2)


###xG y Goles

{
Graf2=ggplot(equipos, aes(x = xGP, y = GolesP), col.axis = "red") +
    ggtitle(label = "Análisis xG vs Goles" ,subtitle = "Comparativa Promedio por Partido") +
    geom_image(aes(image = badge), size = 0.04,) +
    geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


    ##geom_vline(aes(xintercept = mean(xGA)), color = "red", linetype = "dashed") +
    ##geom_hline(aes(yintercept = mean(GolesR)), color = "red", linetype = "dashed") +
    labs(y = "Goles",
         x = "xG",
         caption = "Fuente: Opta, @emrangel.\nDescarga Baloa & Onefootball")+
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

ggsave("CON2.png", width = 12.4, height = 8.2)


##Gráfico xGA y GolesR


{
Graf1=ggplot(equipos, aes(x = xGAP, y = GolesRP), col.axis = "red") +
  ggtitle(label = "Análisis xGA vs Goles Recibidos" ,subtitle = "Comparativa Promedio por Partido") +
  geom_image(aes(image = badge), size = 0.04,) +
  geom_abline(intercept = 0, slope = 1, color = "gray", linetype = "dashed")+


  ##geom_vline(aes(xintercept = mean(xGA)), color = "red", linetype = "dashed") +
  ##geom_hline(aes(yintercept = mean(GolesR)), color = "red", linetype = "dashed") +
  labs(y = "Goles Recibidos",
       x = "xGA",
       caption = "Fuente: Opta, @emrangel\n Descarga Baloa & Onefootball")+
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

ggsave("CON3.png", width = 12.4, height = 8.2)

##Save data

write.csv(equipos, "equiposcon.csv")
  
