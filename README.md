# A Guide to Tidy Data Set
* This document explains the process in obtaining the final data set from raw data. 

## Data
* The data set was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* This data set records human activity recognition using smartphones.
* The downloaded data set was unzipped and relevant data files were saved into the working directory for easing reading into R.

## Reading Data into R and Merging
* The variable denoting the human subjects where measurements were collected were read from the files "subject_train.txt" and "subject_test.txt". These were merged into a vector named "subject" using rbind.
* The activities performed by the subjects were read from "y_train.txt" and "y_test.txt" which formed the vector "activity".
* The measurements collected from the accelerometer and gyroscope were read from the files "X_train.txt" and "X_test.txt". A dataframe named "dat" were formed by merging these data and names of each variable were added in from the "features.txt" file.

## Dataframe
* A dataframe with all measurements was constructed using cbind to bind the vectors "subject", "activity" as well as the dataframe "dat".
* This dataframe is already labelled with descriptive variable names.

## Subset the Dataframe
* To extract only the measurements on the mean and standard deviation for each measurement.
* grep is used to identify the columns with mean and std in each variable names. 
* An index vector identifying the relevant columns was formed and used to subset the dataframe, resulting in the required dataframe "df".

## Naming Activities
* Data in the column activity are integers where "1" represents "walking" , "2" represents "walking_upstairs", "3" represents "walking_downstairs", "4" represents "sitting", "5" represents "standing" and "6" represents "laying".
* To replace these integers by its descriptive name, the activity data were converted into factors and labelled accordingly.

## Creating a second, independent tidy data set with the average of each variable for each activity and each subject.
* The aggregate function is used to compute the average of each variable for each activity and each subject. A new dataframe, "dfavg" is formed with the aggregate function. 
* The column names of this new data set was tidied using gsub to remove "-", "()" as well as whitespace. 
* Please note that Capital letters were maintained for better readability. I find astringoflowercaseletters difficult to read.
* The dataframe "dfavg" is then exported as "tidydata.txt" using write.table. 