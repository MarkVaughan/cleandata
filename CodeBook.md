#CodeBook

This codebook describes the data set used for this project upon which data cleaning was performed, along with how to produce cleaned data set.

## Data Set Information

The original data set was obtained from the following location.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This involved an experiment with a group of 30 volunteers which monitored their movement pattern which were described as six activities including: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

#Creating the tidy datafile

###Guide to create the tidy data file

1. Download the data set from the link above
2. Download the run_analysis.R from https://github.com/MarkVaughan/cleandata/blob/master/run_analysis.R
3. Extract zip file and place R script inside the UCI HAR Dataset directory
4. Run the R script.

###Cleaning of the data
The script is described in the README.md file located here: https://github.com/MarkVaughan/cleandata/blob/master/README.md

##Description of the variables in the tinydataset.txt file

The tinydataset.txt contains 180 rows and 68 columns

It Contains the following variables:

subjectId: This is an number used to represent each of the particpants in the experiment i.e. 1-30

activity:  This is a number from 1 to 6 to represent each activity

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

TimeBodyAcceleration:

TimeGravityAcceleration:

TimeBodyAccelerationJerk:

TimeBodyGyro:

TimeBodyGyroJerk:

TimeBodyAccelerationMagnitude:

TimeBodyAccelerationJerkMagnitude:

TimeBodyGyroMagnitude:

TimeBodyGyroJerkMagnitude:

FrequencyBodyAcceleration:

FrequencyBodyAccelerationJerk:

FrequencyBodyGyro:

FrequencyBodyAccelerationMagnitude:

FrequencyBodyBodyAccelerationJerkMagnitude:

FrequencyBodyBodyGyroMagnitude:

FrequencyBodyBodyGyroJerkMagnitude:



