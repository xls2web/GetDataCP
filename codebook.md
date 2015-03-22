## Data capture process
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc_XYZ
* tGravityAcc_XYZ
* tBodyAccJerk_XYZ
* tBodyGyro_XYZ
* tBodyGyroJerk_XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc_XYZ
* fBodyAccJerk_XYZ
* fBodyGyro_XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals included: 

* _mean_: Mean value
* _std_: Standard deviation

## Data fields description
The `result.txt` data set contains average values of  all mean and standard deviation measurements by subject and activity.

* `label` - a code of an activity - a number from one to 6
* `descr` - a desrcription of the activity - either of LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* `subject` - a number from 1 to 30 identifying a subject from whom measurements were taken
* `tBodyAcc_.mean_X` - average mean value of time domain signal of BodyAcc, X-dimension 
* `tBodyAcc_.mean_Y` - average mean value of time domain signal of BodyAcc, Y-dimension 
* `tBodyAcc_.mean_Z` - average mean value of time domain signal of BodyAcc, Z-dimension 
* `tBodyAcc_.std_X` - average standard deviation of time domain signal of BodyAcc, X-dimension 
* `tBodyAcc_.std_Y` - average standard deviation of time domain signal of BodyAcc, Y-dimension
* `tBodyAcc_.std_Z` - average standard deviation of time domain signal of BodyAcc, Z-dimension
* `tGravityAcc_.mean_X` - average mean value of time domain signal of GravityAcc, X-dimension
* `tGravityAcc_.mean_Y` - average mean value of time domain signal of GravityAcc, Y-dimension
* `tGravityAcc_.mean_Z` - average mean value of time domain signal of GravityAcc, Z-dimension
* `tGravityAcc_.std_X` - average standard deviation  of time domain signal of GravityAcc, X-dimension
* `tGravityAcc_.std_Y` - average standard deviation  of time domain signal of GravityAcc, Y-dimension
* `tGravityAcc_.std_Z` - average standard deviation  of time domain signal of GravityAcc, Z-dimension
* `tBodyAccJerk_.mean_X` - average mean  value of time domain signal of BodyAccJerk, X-dimension
* `tBodyAccJerk_.mean_Y` - average mean value of time domain signal of BodyAccJerk, Y-dimension
* `tBodyAccJerk_.mean_Z` - average mean value of time domain signal of BodyAccJerk, Z-dimension
* `tBodyAccJerk_.std_X` - average standard deviation  of time domain signal of BodyAccJerk, X-dimension
* `tBodyAccJerk_.std_Y` - average standard deviation  of time domain signal of BodyAccJerk, Y-dimension
* `tBodyAccJerk_.std_Z` - average standard deviation  of time domain signal of BodyAccJerk, Z-dimension
* `tBodyGyro_.mean_X` - average mean value of time domain signal of BodyGyro, X-dimension
* `tBodyGyro_.mean_Y` - average mean value of time domain signal of BodyGyro, Y-dimension
* `tBodyGyro_.mean_Z` - average mean value of time domain signal of BodyGyro, Z-dimension
* `tBodyGyro_.std_X` - average standard deviation of time domain signal of BodyGyro, X-dimension
* `tBodyGyro_.std_Y` - average standard deviation of time domain signal of BodyGyro, Y-dimension
* `tBodyGyro_.std_Z` - average standard deviation of time domain signal of BodyGyro, Z-dimension
* `tBodyGyroJerk_.mean_X` - average mean value of time domain signal of BodyGyroJerk, X-dimension
* `tBodyGyroJerk_.mean_Y` - average mean value of time domain signal of BodyGyroJerk, Y-dimension
* `tBodyGyroJerk_.mean_Z` - average mean value of time domain signal of BodyGyroJerk, Z-dimension
* `tBodyGyroJerk_.std_X` - average standard deviation of time domain signal of BodyGyroJerk, X-dimension
* `tBodyGyroJerk_.std_Y` - average standard deviation of time domain signal of BodyGyroJerk, Y-dimension
* `tBodyGyroJerk_.std_Z` - average standard deviation of time domain signal of BodyGyroJerk, Z-dimension
* `tBodyAccMag_.mean` - average value of time domain signal of BodyAccMag
* `tBodyAccMag_.std` - standard deviation of time domain signal of BodyAccMag
* `tGravityAccMag_.mean` - average value of time domain signal of GravityAccMag
* `tGravityAccMag_.std` - standard deviation of time domain signal of GravityAccMag
* `tBodyAccJerkMag_.mean` - average value of time domain signal of BodyAccJerkMag
* `tBodyAccJerkMag_.std` - standard deviation of time domain signal of BodyAccJerkMag
* `tBodyGyroMag_.mean` - average value of time domain signal of BodyGyroMag
* `tBodyGyroMag_.std` - standard deviation of time domain signal of BodyGyroMag
* `tBodyGyroJerkMag_.mean` - average value of time domain signal of BodyGyroJerkMag
* `tBodyGyroJerkMag_.std` - standard deviation of time domain signal of BodyGyroJerkMag
* `fBodyAcc_.mean_X` - average mean of fast fourier transform, BodyAcc, X-dimension
* `fBodyAcc_.mean_Y` - average mean of fast fourier transform, BodyAcc, Y-dimension
* `fBodyAcc_.mean_Z` - average mean of fast fourier transform, BodyAcc, Z-dimension
* `fBodyAcc_.std_X` - average standard deviation of fast fourier transform, BodyAcc, X-dimension
* `fBodyAcc_.std_Y` - average standard deviation of fast fourier transform, BodyAcc, Y-dimension
* `fBodyAcc_.std_Z` - average standard deviation of fast fourier transform, BodyAcc, Z-dimension
* `fBodyAccJerk_.mean_X` - average mean of fast fourier transform, BodyAccJerk, X-dimension
* `fBodyAccJerk_.mean_Y` - average mean of fast fourier transform, BodyAccJerk, Y-dimension
* `fBodyAccJerk_.mean_Z` - average mean of fast fourier transform, BodyAccJerk, Z-dimension
* `fBodyAccJerk_.std_X` - average standard deviation of fast fourier transform, BodyAccJerk, X-dimension
* `fBodyAccJerk_.std_Y` - average standard deviation of fast fourier transform, BodyAccJerk, Y-dimension
* `fBodyAccJerk_.std_Z` - average standard deviation of fast fourier transform, BodyAccJerk, Z-dimension
* `fBodyGyro_.mean_X` - average mean of fast fourier transform, BodyGyro, X-dimension
* `fBodyGyro_.mean_Y` - average mean of fast fourier transform, BodyGyro, Y-dimension
* `fBodyGyro_.mean_Z` - average mean of fast fourier transform, BodyGyro, Z-dimension
* `fBodyGyro_.std_X` - average standard deviation of fast fourier transform, BodyGyro, X-dimension
* `fBodyGyro_.std_Y` - average standard deviation of fast fourier transform, BodyGyro, Y-dimension
* `fBodyGyro_.std_Z` - average standard deviation of fast fourier transform, BodyGyro, Z-dimension
* `fBodyAccMag_.mean` - average mean of fast fourier transform, BodyAccMag
* `fBodyAccMag_.std` - average standard deviation of fast fourier transform, BodyAccMag
* `fBodyBodyAccJerkMag_.mean` - average mean of fast fourier transform, BodyBodyAccJerkMag
* `fBodyBodyAccJerkMag_.std` - average standard deviation of fast fourier transform, BodyBodyAccJerkMag
* `fBodyBodyGyroMag_.mean` - average mean of fast fourier transform, BodyBodyGyroMag
* `fBodyBodyGyroMag_.std` - average standard deviation of fast fourier transform, BodyBodyGyroMag
* `fBodyBodyGyroJerkMag_.mean` - average mean of fast fourier transform, BodyBodyGyroJerkMag
* `fBodyBodyGyroJerkMag_.std` - average standard deviation of fast fourier transform, BodyBodyGyroJerkMag