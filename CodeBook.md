Coursera
Getting and Cleaning Data
Project 1

CODE BOOK
Code book for the file tidy.cvs. File format csv
For backgroung information see file README.md
The file contains 180 obs. of  68 variables

VARIABLES

"SubjectNum"
	Subject identifier, integer, ranges from 1 to 30

"Activity"
Activity identifier, string with 6 possible values:
WALKING: subject was walking
WALKING_UPSTAIRS: subject was walking upstairs
WALKING_DOWNSTAIRS: subject was walking downstairs
SITTING: subject was sitting
STANDING: subject was standing
LAYING: subject was laying

Measurements
All measurements are floating-point values, normalised and bounded within [-1,1]. Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s?ý) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s?û). Measurements are made in the time (variable prefix with t) and in the frequency domanin (variable prefix with f). The measuments are:

"tBodyAcc-mean-X"
"tBodyAcc-mean-Y"
"tBodyAcc-mean-Z"
"tBodyAcc-std-X"
"tBodyAcc-std-Y"
"tBodyAcc-std-Z"
"tGravityAcc-mean-X"
"tGravityAcc-mean-Y"
"tGravityAcc-mean-Z"
"tGravityAcc-std-X"
"tGravityAcc-std-Y"
"tGravityAcc-std-Z"
"tBodyAccJerk-mean-X"
"tBodyAccJerk-mean-Y"
"tBodyAccJerk-mean-Z"
"tBodyAccJerk-std-X"       
"tBodyAccJerk-std-Y"
"tBodyAccJerk-std-Z"
"tBodyGyro-mean-X"
"tBodyGyro-mean-Y"
"tBodyGyro-mean-Z"
"tBodyGyro-std-X"
"tBodyGyro-std-Y"
"tBodyGyro-std-Z"
"tBodyGyroJerk-mean-X"
"tBodyGyroJerk-mean-Y"
"tBodyGyroJerk-mean-Z"
"tBodyGyroJerk-std-X"
"tBodyGyroJerk-std-Y"
"tBodyGyroJerk-std-Z"
"tBodyAccMag-mean"
"tBodyAccMag-std"
"tGravityAccMag-mean"
"tGravityAccMag-std"
"tBodyAccJerkMag-mean"
"tBodyAccJerkMag-std"
"tBodyGyroMag-mean"
"tBodyGyroMag-std"
"tBodyGyroJerkMag-mean"
"tBodyGyroJerkMag-std"
"fBodyAcc-mean-X"
"fBodyAcc-mean-Y"
"fBodyAcc-mean-Z"
"fBodyAcc-std-X"
"fBodyAcc-std-Y"
"fBodyAcc-std-Z"
"fBodyAccJerk-mean-X"
"fBodyAccJerk-mean-Y"
"fBodyAccJerk-mean-Z"
"fBodyAccJerk-std-X"
"fBodyAccJerk-std-Y"
"fBodyAccJerk-std-Z"
"fBodyGyro-mean-X"
"fBodyGyro-mean-Y"
"fBodyGyro-mean-Z"
"fBodyGyro-std-X"
"fBodyGyro-std-Y"
"fBodyGyro-std-Z"
"fBodyAccMag-mean"
"fBodyAccMag-std"
"fBodyBodyAccJerkMag-mean"
"fBodyBodyAccJerkMag-std"
"fBodyBodyGyroMag-mean"
"fBodyBodyGyroMag-std"
"fBodyBodyGyroJerkMag-mean"
"fBodyBodyGyroJerkMag-std"

