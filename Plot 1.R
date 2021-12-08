#**********************************************************************************
# Step 1: get needed libraries
#**********************************************************************************

library(data.table) # it helps to load fast large text file
library(dplyr)#load dplyr

#**********************************************************************************
# Step 2: create directories
#**********************************************************************************

if(!file.exists("./projectData")){
  dir.create("./projectData")
}

#**********************************************************************************
# Step 3: download the dataset
#         Get data from link
#         data might update, check if downloaded already, do if not
#         data is zipped, unzip
#**********************************************************************************


dataFile <- "ExploringData_Week4_PeerReview"

if (!file.exists(dataFile)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  print("downloading....")
  download.file(fileURL, destfile = pdataFile, method="curl")
  print("done download")
}

if (!file.exists("UCI HAR Dataset")) { 
  print("unzipping file")
  unzip(zipfile = "projectData/Dataset.zip",exdir="./data")
  print("done unzip") #need to learn logging in R
}





dataDF <- read.table("C:/Users/Tumisang/Desktop/data/household_power_consumption.txt", sep = ";", header = TRUE)
head(dataDF)
dim(dataDF)
DateData <- subset(dataDF , dataDF$Date == "1/2/2007" | dataDF$Date == "2/2/2007")
head(DateData)
dim(DateData)