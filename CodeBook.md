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

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)


