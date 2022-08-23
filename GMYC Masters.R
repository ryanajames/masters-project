rm(list = ls())
#REMEMBER TO setwd FOR YOUR OWN DEVICE; and ensure that the csv files are stored there. Go to the tab Session -> Set Working Directory -> Choose Directory and choose the folder where you have saved your csv files
#this commands verifies that the working directory has been set correctly
getwd ()

install.packages("ape")
install.packages("phangorn")
install.packages("phytools")
install.packages("phangorn",repos="https://cloud.r-project.org",quiet=TRUE)
install.packages("phytools",repos="https://cloud.r-project.org",quiet=TRUE)
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggtree")
BiocManager::install("treeio")
install.packages("paran")
install.packages("splits", repos="http://R-Forge.R-project.org", type="source")
library(ape)
library(phangorn)
library(phytools)
library(ggtree)
install.packages("pillar", type="binary")
library(pillar)
install.packages("tidytree")
library(tidytree)
library(treeio)
library(paran)
library(splits)


tr <- read.beast(file.choose())
s_gmyc <- gmyc(tr@phylo, method = "single")
summary(s_gmyc)
plot(s_gmyc)