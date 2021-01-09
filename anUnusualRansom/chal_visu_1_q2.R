#!/usr/bin/env Rscript

#Libraries
library(tidyverse)

#Load In Data

#Use this if you're running from the command line:
# df <- read.table(file("stdin"), header = FALSE, sep = " ")

#Use this if you're opening this repo as a R project, using relative paths:
df <- read.table("chal_visu_1_q2_data.csv", header = TRUE, sep = ",")

pairs(df)
