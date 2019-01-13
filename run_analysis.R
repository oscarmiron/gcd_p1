# Getting and Cleaning Data
# Course Project 1

setwd("D:/Oscar/Data Science Specialization/Getting and Cleaning Data/Project 1")

# load libraries to be used.
library(data.table)
library(reshape2)

# Donwload dateset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "dataset.zip", method = "curl")
unzip("dataset.zip")

#Load acitivity_labels and features
path <- getwd() # To be use when reading files in directories
activityLabels <- fread(file.path(path, "UCI HAR Dataset/activity_labels.txt"), 
                        col.names = c("classLabels", "activityName"))
features <- fread(file.path(path, "UCI HAR Dataset/features.txt"), 
                  col.names = c("index", "featureNames"))

# On features extract only featureNames with mean or std
featuresWanted <- grep("(mean|std)\\(\\)", features$featureNames)
measurements <- features[featuresWanted, featureNames]
measurements <- gsub("[()]", "", measurements) # Eliminate ()

# Load test dataset reading only wanted features
test <- fread(file.path(path, "UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
setnames(test, colnames(test), measurements)
testActivities <- fread(file.path(path, "UCI HAR Dataset/test/Y_test.txt"), 
                        col.names = c("Activity"))
testSubjects <- fread(file.path(path, "UCI HAR Dataset/test/subject_test.txt"), 
                      col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test)

# Load train dataset only wanted features
train <- fread(file.path(path, "UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
setnames(train, colnames(train), measurements)
trainActivities <- fread(file.path(path, "UCI HAR Dataset/train/Y_train.txt"), 
                         col.names = c("Activity"))
trainSubjects <- fread(file.path(path, "UCI HAR Dataset/train/subject_train.txt"), 
                       col.names = c("SubjectNum"))
# Merge all train files
train <- cbind(trainSubjects, trainActivities, train)

# Merge the two datasets, train and test
mergedata <- rbind(train, test)

# Change Activity and SubjectNum to factor
mergedata$SubjectNum <- factor(mergedata$SubjectNum)
mergedata$Activity <- factor(mergedata$Activity, 
                             levels = activityLabels$classLabels, 
                             labels = activityLabels$activityName)

# Calculate average of each variable for each activity and each subject
mergedata <- melt(mergedata, id = c("SubjectNum", "Activity"))
mergedata <- dcast(mergedata, SubjectNum + Activity ~ variable, fun.aggregate = mean)

# Write tidy dataset
# For an alternative format file use: fwrite(mergedata, file = "tidy.csv")
write.table(mergedata, "tidy.txt", row.names = FALSE, quote = FALSE)
