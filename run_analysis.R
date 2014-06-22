#This is an R Script that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#common functions used:
  # paste() = concatenates strings

#Set working directory
setwd("~/Coursera/data-science-course/3-getting-and-cleaning-data/coursera_gettingandcleaningdata_project")

#Import needed libraries
library(plyr)
library(reshape2)

#Set global variables used in the rest of the script
inputDataDir = "./UCI_HAR_Dataset"
outputDataDir = "./output"
testSubDir = "test"
trainSubDir = "train"
wantedFeaturesRegEx = "mean|std"

#Read in raw data
activityLabels = read.csv(paste(inputDataDir,"activity_labels.txt", sep="/"), sep="", col.names=c('id', 'activity_name'), header=FALSE)
features = read.csv(paste(inputDataDir,"features.txt", sep="/"), sep="", col.names=c('id', 'feature_name'), header=FALSE)
testData = cbind(subject=read.table(paste(inputDataDir,testSubDir,"subject_test.txt", sep="/"), col.names="subject_id"),
                 y=read.table(paste(inputDataDir,testSubDir,"Y_test.txt", sep="/"), col.names="activity_id"),
                 x=read.table(paste(inputDataDir,testSubDir,"X_test.txt", sep="/")))
trainData = cbind(subject=read.table(paste(inputDataDir,trainSubDir,"subject_train.txt", sep="/"), col.names="subject_id"),
                 y=read.table(paste(inputDataDir,trainSubDir,"Y_train.txt", sep="/"), col.names="activity_id"),
                 x=read.table(paste(inputDataDir,trainSubDir,"X_train.txt", sep="/")))

#Clean up features names so they can be used in the rest of the r script
features$feature_name = gsub('[-,]', '_', features$feature_name) # replace - and , with _
features$feature_name = gsub('[()]', '', features$feature_name) # remove '()'
features$feature_name = gsub("tBody", "time_body_", features$feature_name) # rename tBody to time_body_
features$feature_name = gsub("tGravity", "time_gravity_", features$feature_name) # rename tGravity  time_gravity_
features$feature_name = gsub("fBody", "fft_body_", features$feature_name) # rename fBody to fft_body_
features$feature_name = gsub("fGravity", "fft_gravity_", features$feature_name) # rename fGravity to fft_gravity_
features$feature_name = tolower(features$feature_name) # all feature names to lowercase

#Merge Test and Train Data by the subject_id
tidyOutputData = rbind(testData, trainData)

#Limit the tidyOutputData data frame to only those columns with features that are Means and Standard Deviations
tidyOutputData = tidyOutputData[,c(1, 2, grep(wantedFeaturesRegEx, features$feature_name) + 2)]

#Set Column Names of the tidyOutputData to the clean Feature Name
names(tidyOutputData) = c("subject_id", "activity_id", features$feature_name[grep(wantedFeaturesRegEx, features$feature_name)])

#Merge actibityLabel data with the tidyOutputData and remove the activity_id 
tidyOutputData = merge(activityLabels, tidyOutputData, by.x="id", by.y="activity_id")
tidyOutputData = tidyOutputData[,!(names(tidyOutputData) %in% c("id"))]

#Calculate the tidyMeanOutputData with the melt and ddply function
tidyMeanOutputData = ddply(melt(tidyOutputData, id.vars=c("subject_id", "activity_name")), .(subject_id, activity_name), summarise, mean=mean(value))

#Output the data.frames into text files in the output directory
write.csv(tidyMeanOutputData, file=paste(outputDataDir, "tidy_mean_ouput.txt", sep="/"), row.names=FALSE)
write.csv(tidyOutputData, file=paste(outputDataDir, "tidy_output.txt", sep="/"), row.names=FALSE)
