#!/usr/bin/env Rscript

#Libraries
library(tidyverse)
library(gridGraphics)

#Load In Data

#Use this if you're running from the command line:
# df <- read.table(file("stdin"), header = FALSE, sep = " ")

#Use this if you're opening this repo as a R project, using relative paths:
df <- read.table("chal_visu_1_q1_data.csv", header = TRUE, sep = ",")

#-------------------
# Part 1: find code in df
#-------------------

plot(df$y,df$x,xlim=c(-100,-300), ylim=c(250,750))
# plot(df$x,df$y,xlim=c(250,750), ylim=c(-100,-300))


grab_grob <- function(){
  grid.echo()
  grid.grab()
}

g <- grab_grob()
grid.newpage()
pushViewport(viewport(angle=270))
grid.draw(g)

