#!/usr/bin/env Rscript

#Libraries
library(tidyverse)
library(pixmap)

#Load In Data

#-------------------
# Part 1:
#-------------------
setwd("~/Documents/data-puzzles/followTheSnake/data-puzzles-assets/computervision/snakes")
image_filename <- 'follow-the-snake-001.png'
system('convert follow-the-snake-001.png follow-the-snake-001.ppm')
# x <- read.pnm("follow-the-snake-001.ppm")
# 
# y <- getChannels(x)
# 
# dim(x@red)
# dim(x@blue)
# dim(x@green)

x <- read.pnm(system.file("follow-the-snake-001.ppm", package="pixmap")[1])
str(x)
# x@size
# dim(x@red)

#If you want to build a matrix using the dimensions of "picture"....    
x@size    
mat1 <- matrix(NA, x@size[1], x@size[2]) 

#If you want to build a matrix directly from "grey".....  
mat <- x@red    

#Take a look at mat
head(mat)

# library('png')
# img <- readPNG("follow-the-snake-001.png")
# img_col <- ncol(img)
# img_row <- nrow(img)
# pix.top.left <- img[1,1,]     # row 1, column 1
# pix.bottom.left <- img[img_row,1,]  # row 144, column 1
# pix.top.right <- img[1,img_col,]    # row 1, column 144
# pix.bottom.right <- img[img_row,img_col,]    # row 1, column 144



