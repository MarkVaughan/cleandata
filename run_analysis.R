# Assumptions:
# UCI HAR Data set is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and 
# extracted to a folder on your computer. This script should be copied to the "UCI HAR Dataset" folder and executed from there.

# Objectives of run_analysis.R script
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# load plyr library for part 5
require(plyr) 

# Load data sets inside Test Folder
#  x_test contains feature data
#  y_test contains activity type
#  subj_test contains contains the id of the subject
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subj_test <- read.table("./test/subject_test.txt")

# Load data sets inside Training Folder
#  x_train contains feature data
#  y_train contains activity type
#  subj_train contains the id of the subject
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subj_train <- read.table("./train/subject_train.txt")

# Load data sets for activity_labels.txt and features.txt in main folder
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# This section will combine each of the training and test data sets by rows using rbind

xcomb <- rbind(x_train,x_test)
ycomb <- rbind(y_train,y_test)
subj_comb <- rbind(subj_train,subj_test)

#apply the correct names to each of the data sets.
names(subj_comb) <- c("subjectId")
names(ycomb) <- c("activity")
names(xcomb) <- features$V2

# combine subj_comb, ycomb, and xcomb by column using cbind  to form an overall data set

DataSet <- cbind(subj_comb,ycomb,xcomb)

# Extracts only the measurements on the mean and standard deviation for each measurement

# Extract only the variables from features that contain "mean" or "std" in it's name using regular expression. Note meanFreq is not included.

meanstdNames <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
meanstdsubset <- c("subjectId","activity",as.character(meanstdNames))
DataSet <- DataSet[,meanstdsubset]

# 3. Uses descriptive activity names to name the activities in the data set.

DataSet$activity <- as.factor(activity_labels$V2[DataSet$activity])

# 4. Appropriately labels the data set with descriptive variable names. 

# remove brackets i.e. () from variable names
names(DataSet) <- gsub('\\(|\\)',"",names(DataSet))

# Expand the variable names so meanings are clearer

names(DataSet)<-gsub("^t", "Time", names(DataSet))
names(DataSet)<-gsub("^f", "Frequency", names(DataSet))
names(DataSet)<-gsub("Acc", "Acceleration", names(DataSet))
names(DataSet)<-gsub("Mag", "Magnitude", names(DataSet))
names(DataSet)<-gsub("mean", "Mean", names(DataSet))
names(DataSet)<-gsub("std", "StandardDeviation", names(DataSet))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyDataSet <- aggregate(. ~subjectId + activity, DataSet, mean)

write.table(tidyDataSet,file ="tidydata.txt",row.names = FALSE)
