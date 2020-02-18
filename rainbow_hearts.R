library(ggplot2)
library(egg)

hearty <- function(x)2-2*sin(x) + sin(x)*(sqrt(abs(cos(x))))/(sin(x)+1.4)

red <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "red", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()

ora <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "orange", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()

yel <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "yellow", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()

gre <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "green", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()

blu <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "skyblue", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()

pur <- ggplot()+ 
  stat_function(data = data.frame(x= seq(0, 2*pi, length.out= 200)), 
                aes(x=x),fun= hearty,  geom= "area",fill = "purple", alpha= 0.5) + 
  coord_polar(start=-pi/2)+ theme_bw()


figures <- egg::ggarrange(red, ora, yel, gre, blu, pur, nrow = 1)

ggsave("hearts.png", figures, width = 25, height = 9, units = "cm", dpi= 600)