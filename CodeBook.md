# CodeBook

This codebook describes the variables, data and work performed to clean up the data.

The data set record human activity recognition using smartphones.

The data set was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Background

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag 
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Features are normalized and bounded within [-1,1].

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* as well as other related variables.

## The Tidy Data Set

A dataframe comprises the identifier of the subject, activity label as well as the 561 feature vectors were formed by merging the training and test data sets. 

A new and smaller dataframe is formed my extracting only the measurements on the mean and standard deviation for each measurement. For example tBodyAcc-mean()-X and tBodyAcc-std()-X measures the mean and the standard deviation of the variable tBodyAcc in the direction of X.

Descriptive activity names were used to name the activities in the data set.

The data set is further tidied by averaging each variable for each activity and each subject. 

The heading of each variable is cleaned by removing characters such as "-","()" as well as white space. However, Capital letters are maintained for better readability.

The final data set comprises the following 81 variables:

* subject - identifier of the subject; integer values from 1 through 30.
* activity - factor variables with labels "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing" and "laying".
* tBodyAccmeanX
* tBodyAccmeanY
* tBodyAccmeanZ
* tBodyAccstdX
* tBodyAccstdY
* tBodyAccstdZ
* tGravityAccmeanX
* tGravityAccmeanY
* tGravityAccmeanZ
* tGravityAccstdX
* tGravityAccstdY
* tGravityAccstdZ
* tBodyAccJerkmeanX
* tBodyAccJerkmeanY
* tBodyAccJerkmeanZ
* tBodyAccJerkstdX
* tBodyAccJerkstdY
* tBodyAccJerkstdZ
* tBodyGyromeanX
* tBodyGyromeanY
* tBodyGyromeanZ
* tBodyGyrostdX
* tBodyGyrostdY
* tBodyGyrostdZ
* tBodyGyroJerkmeanX
* tBodyGyroJerkmeanY
* tBodyGyroJerkmeanZ
* tBodyGyroJerkstdX
* tBodyGyroJerkstdY
* tBodyGyroJerkstdZ
* tBodyAccMagmean
* tBodyAccMagstd
* tGravityAccMagmean
* tGravityAccMagstd
* tBodyAccJerkMagmean
* tBodyAccJerkMagstd
* tBodyGyroMagmean
* tBodyGyroMagstd
* tBodyGyroJerkMagmean
* tBodyGyroJerkMagstd
* fBodyAccmeanX
* fBodyAccmeanY
* fBodyAccmeanZ
* fBodyAccstdX
* fBodyAccstdY
* fBodyAccstdZ
* fBodyAccmeanFreqX
* fBodyAccmeanFreqY
* fBodyAccmeanFreqZ
* fBodyAccJerkmeanX
* fBodyAccJerkmeanY
* fBodyAccJerkmeanZ
* fBodyAccJerkstdX
* fBodyAccJerkstdY
* fBodyAccJerkstdZ
* fBodyAccJerkmeanFreqX
* fBodyAccJerkmeanFreqY
* fBodyAccJerkmeanFreqZ
* fBodyGyromeanX
* fBodyGyromeanY
* fBodyGyromeanZ
* fBodyGyrostdX
* fBodyGyrostdY
* fBodyGyrostdZ
* fBodyGyromeanFreqX
* fBodyGyromeanFreqY
* fBodyGyromeanFreqZ
* fBodyAccMagmean
* fBodyAccMagstd
* fBodyAccMagmeanFreq
* fBodyBodyAccJerkMagmean
* fBodyBodyAccJerkMagstd
* fBodyBodyAccJerkMagmeanFreq
* fBodyBodyGyroMagmean
* fBodyBodyGyroMagstd
* fBodyBodyGyroMagmeanFreq
* fBodyBodyGyroJerkMagmean
* fBodyBodyGyroJerkMagstd
* fBodyBodyGyroJerkMagmeanFreq




