# This script is written to fulfill assginment of "Getting and Cleaning Data" on Coursera
# The script requires the assignment data to be present in the same folder (please refer to README.md for more details)
# The package "reshape2" must be already installed
# Code written by: Mohamed Sabry Bakry
# Version 1.0
# 25-May-2014 15:40 PM

library(reshape2)
#Read the metadata, which are "features" , "activity labels", "subject (test and train)", "y (test and train, those are the activity types)" 
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
y_test <- read.table("test\\y_test.txt")
subject_test <- read.table("test\\subject_test.txt")
y_train <- read.table("train\\y_train.txt")
subject_train <- read.table("train\\subject_train.txt")

#read data (test and train).
x_test <- read.table("test\\x_test.txt")
x_train <- read.table("train\\x_train.txt")

#merges data as following:
#each row in the subjects file (whether test or train) corresponds to each
#row in the x file (whether test or train), and also each row in the y file (activity
#type). So, we can simply cbind all the three files to get a file with 563 variables
#variable 1 is the subject id, variable 2 is the activity type (not label) and the next 
#561 variables are the features (we can get their labels from the rows of the file "features.txt"
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)
#merges the two data sets
all_data <- rbind(test_data,train_data)
#sets the columns names appropriately
colnames(all_data) <- c("subject_id","activity",as.character(features[,2]))
#define positions of the columns which contain either the word "mean()" or "std()"
mycols <- grep("std[()]|mean[()]",colnames(all_data))
#extract only data of mean and std, in addition to the subject ids and activities
final_data <- all_data[,c(1,2,mycols)]
#adds the activity labels to the dataset, and reposition the newly added column and label it
final_data <- merge(final_data, activity_labels, by.x = "activity", by.y="V1")
final_data <- final_data[,c(2,69,3:68)]
colnames(final_data)[2] <- "activity"
#Prepare the tidy dataset and write it to a csv file
melt_data <- melt(final_data, id=c("subject_id","activity"),measure.vars=colnames(final_data)[-c(1,2)])
tidy_data <- dcast(melt_data, subject_id+activity ~ variable, mean)
#remove unnecessary characters from the columns names
colnames(tidy_data)[3:68] <- gsub("[()]","",colnames(tidy_data)[3:68])
colnames(tidy_data)[63:68] <- gsub("^fBody","f",colnames(tidy_data)[63:68])
colnames(tidy_data)[3:68] <- paste("mean_of_",colnames(tidy_data)[3:68],sep="")
#write the final tidy file
write.csv(tidy_data, "tidy_data.txt", quote=F, row.names=F)