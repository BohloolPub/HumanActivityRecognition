Code Book
========================

Describes the variables, the data, and any transformations or work that are performed to clean up the data

Feature Selection: 
------------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

Tidy Data (tidy_har_data.txt) Fields:
----------------------------------------
subject : 1, 2, 3, ... , 30

activity : walking, walking_upstairs, walking_downstairs, sitting, standing, laying

V1  tBodyAcc-mean()-X

V2  tBodyAcc-mean()-Y

V3  tBodyAcc-mean()-Z

V4  tBodyAcc-std()-X

V5  tBodyAcc-std()-Y

V6  tBodyAcc-std()-Z

V7  tGravityAcc-mean()-X

V8  tGravityAcc-mean()-Y

V9  tGravityAcc-mean()-Z

V10 tGravityAcc-std()-X

V11 tGravityAcc-std()-Y

V12 tGravityAcc-std()-Z

V13 tBodyAccJerk-mean()-X

V14 tBodyAccJerk-mean()-Y

V15 tBodyAccJerk-mean()-Z

V16 tBodyAccJerk-std()-X

V17 tBodyAccJerk-std()-Y

V18 tBodyAccJerk-std()-Z

V19 tBodyGyro-mean()-X

V20 tBodyGyro-mean()-Y

V21 tBodyGyro-mean()-Z

V22 tBodyGyro-std()-X

V23 tBodyGyro-std()-Y

V24 tBodyGyro-std()-Z

V25 tBodyGyroJerk-mean()-X

V26 tBodyGyroJerk-mean()-Y

V27 tBodyGyroJerk-mean()-Z

V28 tBodyGyroJerk-std()-X

V29 tBodyGyroJerk-std()-Y

V30 tBodyGyroJerk-std()-Z

V31 tBodyAccMag-mean()

V32 tBodyAccMag-std()

V33 tGravityAccMag-mean()

V34 tGravityAccMag-std()

V35 tBodyAccJerkMag-mean()

V36 tBodyAccJerkMag-std()

V37 tBodyGyroMag-mean()

V38 tBodyGyroMag-std()

V39 tBodyGyroJerkMag-mean()

V40 tBodyGyroJerkMag-std()

V41 fBodyAcc-mean()-X

V42 fBodyAcc-mean()-Y

V43 fBodyAcc-mean()-Z

V44 fBodyAcc-std()-X

V45 fBodyAcc-std()-Y

V46 fBodyAcc-std()-Z

V47 fBodyAccJerk-mean()-X

V48 fBodyAccJerk-mean()-Y

V49 fBodyAccJerk-mean()-Z

V50 fBodyAccJerk-std()-X

V51 fBodyAccJerk-std()-Y

V52 fBodyAccJerk-std()-Z

V53 fBodyGyro-mean()-X

V54 fBodyGyro-mean()-Y

V55 fBodyGyro-mean()-Z

V56 fBodyGyro-std()-X

V57 fBodyGyro-std()-Y

V58 fBodyGyro-std()-Z

V59 fBodyAccMag-mean()

V60 fBodyAccMag-std()

V61 fBodyBodyAccJerkMag-mean()

V62 fBodyBodyAccJerkMag-std()

V63 fBodyBodyGyroMag-mean()

V64 fBodyBodyGyroMag-std()

V65 fBodyBodyGyroJerkMag-mean()

V66 fBodyBodyGyroJerkMag-std()
