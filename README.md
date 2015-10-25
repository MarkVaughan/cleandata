# Getting and Cleaning Data Project


# Objectives

The script run_analysis.R is used to execute the following tasks on the UCI HAR dataset

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Dependencies

The script requires the plyr library to be installed.

# How to Run script run_analysis.R

Download the run_analysis.R script and place in the same directory where UCI HAR dataset has been extracted to.

The output is a file called "tidydataset.txt"

# How To Read the "tidydataset.txt"

It is best to read the "tidydataset.txt" file using the following command:

dt <- read.table("tidydataset.txt", header = TRUE, check.names = FALSE)
