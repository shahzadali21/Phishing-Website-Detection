# import libaries
library(ggplot2)
library(dplyr)
library(gridExtra)
library(corrplot)
library(summarytools)
library(RColorBrewer)


# loading data (.csv)
phishing <- read.csv("D:/Fiverr Related Work/Sravanganta/Phishing Website Detection/Phishing_Deliverable/PhishingDataset/Phishing.csv")

# Look at the structure and the first few rows.
dim(phishing) # to find the dimensions of the dataset(Diabetes)
names(phishing) # Name of each variable in the dataset

str(phishing)
head(phishing)


# Check missing values 
cat("Number of missing value:", sum(is.na(phishing)), "\n")

# Statistical summary 
summary(phishing)
summarytools::descr(phishing)


M <-cor(phishing)
corrplot(M, type="upper", order="hclust", col=brewer.pal(n=8, name="RdYlBu"))



pairs(phishing)

plot(phishing) 


pairs(phishing,                     # Data frame of variables
      labels = colnames(phishing),  # Variable names
      pch = 21,                 # Pch symbol
      bg = rainbow(3)[groups],  # Background color of the symbol (pch 21 to 25)
      col = rainbow(3)[groups], # Border color of the symbol
      main = "Phishing dataset",    # Title of the plot
      row1attop = TRUE,         # If FALSE, changes the direction of the diagonal
      gap = 1,                  # Distance between subplots
      cex.labels = NULL,        # Size of the diagonal text
      font.labels = 1)          # Font style of the diagonal text





