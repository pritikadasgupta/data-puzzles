#!/usr/bin/env Rscript

#Libraries
library(tidyverse)
# library(caTools)
# install.packages('animation')
library(animation)
#Load In Data

#Use this if you're running from the command line:
# df <- read.table(file("stdin"), header = FALSE, sep = " ")

#Use this if you're opening this repo as a R project, using relative paths:
df <- read.table("chal_visu_1_q3_data.csv", header = TRUE, sep = ",")

plot(df$x,df$y)

df1 <-df[order(df$mystery_feature),]
plot(df1$x,df1$y)
tab <- table(df1$mystery_feature)
tab[1]

#Creating countdown .png files from 10 to "GO!"
png(file="example%02d.png", width=200, height=200)
for(i in 1:length(tab)){
  df2 <- df1[which(df1$mystery_feature==(i-1)),]
  plot(df2$x,df2$y)
}
dev.off()

# Converting .png files in one .gif image using ImageMagick
unlink("example.gif")
system("convert -delay 10 *.png example.gif")
# Remove .png files from working directory
file.remove(list.files(pattern=".png"))


#second way to make gif using animation
saveGIF({
  for(i in 1:length(tab)){
    df2 <- df1[which(df1$mystery_feature==(i-1)),]
    plot(df2$x,df2$y)
  }
}, movie.name = "chal_visu_1_q3.gif", interval = 0.01, ani.width = 450, ani.height = 450)
