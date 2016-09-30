# run_analysis.R
# final project of Getting and Cleaning Data Project
# start date: 29/09/2016

# TODO: download zip and unzip it
# TODO: Confirm dataset is 561 features


# Step 1: Merges the training and the test sets to create one data set.
xTest <- read.csv("./test/X_test.txt", sep = "", header = FALSE)
xTrain <- read.csv("./train/X_train.txt", sep = "", header = FALSE)
dataset <- rbind (xTest, xTrain)

# Step 2_ Extracts only the measurements on the mean and standard deviation for each measurement.

legends <- read.csv("./features.txt", sep="", header = FALSE)
legends <- as.data.frame(t(legends))[-c(1),]