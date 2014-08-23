## Description
The data contains the average of values of variables which were originally mean and standard deviation values of accelerometer and gyroscope readings collected as follows.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Study design
The original data set was collected as follows. This data was downloaded for the purpose of processing from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The original features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

##Units of measurement
Accelerometer readings are in terms of g-force (9.8 ms/s^2)

Unit for gyroscope measurements is IMU (Inertial Measurement Unit)

##Codebook

The data frame contains 180 observations for 81 variables

Subject:                 Subject number
Activity:                 Activity description           Possible values are  WALKING WALKING_UPSTAIRS
 WALKING_DOWNSTAIRS SITTING STANDING LAYING
 TimeBodyAccMeanX:                 Time domain signal for accelerometer along axis X Mean
TimeBodyAccMeanY:                 Time domain signal for accelerometer along axis Y Mean
TimeBodyAccMeanZ:                 Time domain signal for accelerometer along axis Z Mean
TimeBodyAccStdX:                 Time domain signal for accelerometer along axis X Standard deviation 
TimeBodyAccStdY:                 Time domain signal for accelerometer along axis Y Standard deviation
TimeBodyAccStdZ:                 Time domain signal for accelerometer along axis Z Standard deviation
TimeGravityAccMeanX:                 Time domain signal for accelerometer subtracting gravity along axis X Mean
TimeGravityAccMeanY:                 Time domain signal for accelerometer subtracting gravity along axis Y Mean
TimeGravityAccMeanZ:                 Time domain signal for accelerometer subtracting gravity along axis Z Mean
TimeGravityAccStdX:                 Time domain signal for accelerometer subtracting gravity along axis X 
Standard deviation
TimeGravityAccStdY:                 Time domain signal for accelerometer subtracting gravity along axis Y Standard deviation
TimeGravityAccStdZ:                 Time domain signal for accelerometer subtracting gravity along axis Z Standard deviation
TimeBodyAccJerkMeanX:                 Time domain Jerk signal for accelerometer along axis X Mean
TimeBodyAccJerkMeanY:                 Time domain Jerk signal for accelerometer along axis Y Mean
TimeBodyAccJerkMeanZ:                 Time domain Jerk signal for accelerometer along axis Z Mean
TimeBodyAccJerkStdX:                 Time domain Jerk signal for accelerometer along axis X Standard deviation
TimeBodyAccJerkStdY:                 Time domain Jerk signal for accelerometer along axis Y Standard deviation
TimeBodyAccJerkStdZ:                 Time domain Jerk signal for accelerometer along axis Z Standard deviation
TimeBodyGyroMeanX:                 Time domain signal for gyroscope along axis X Mean
TimeBodyGyroMeanY:                 Time domain signal for gyroscope along axis Y Mean
TimeBodyGyroMeanZ:                 Time domain signal for gyroscope along axis Z Mean
TimeBodyGyroStdX:                 Time domain signal for gyroscope along axis X Standard deviation
TimeBodyGyroStdY:                 Time domain signal for gyroscope along axis Y Standard deviation
TimeBodyGyroStdZ:                 Time domain signal for gyroscope along axis Z Standard deviation
TimeBodyGyroJerkMeanX:                 Time domain Jerk signal for gyroscope along axis X Mean
TimeBodyGyroJerkMeanY:                 Time domain Jerk signal for gyroscope along axis Y Mean
TimeBodyGyroJerkMeanZ:                 Time domain Jerk signal for gyroscope along axis Z Mean
TimeBodyGyroJerkStdX:                 Time domain Jerk signal for gyroscope along axis X Standard deviation
TimeBodyGyroJerkStdY:                 Time domain Jerk signal for gyroscope along axis Y Standard deviation
TimeBodyGyroJerkStdZ:                 Time domain Jerk signal for gyroscope along axis Z Standard deviation
TimeBodyAccMagMean:                 Time domain signal for acclerometer magnitude Mean
TimeBodyAccMagStd:                 Time domain signal for acclerometer magnitude Standard deviation
TimeGravityAccMagMean:                 Time domain signal for acclerometer subtracting gravity magnitude mean
TimeGravityAccMagStd:                 Time domain signal for acclerometer subtracting gravity magnitude Standard deviation
TimeBodyAccJerkMagMean:                 Time domain Jerk signal for acclerometer magnitude Mean
TimeBodyAccJerkMagStd:                 Time domain Jerk signal for acclerometer magnitude standard deviation
TimeBodyGyroMagMean:                 Time domain signal for gyroscope magnitude Mean
TimeBodyGyroMagStd:                 Time domain signal for gyroscope magnitude Standard deviation
TimeBodyGyroJerkMagMean:                 Time domain Jerk signal for gyroscope magnitude Mean
TimeBodyGyroJerkMagStd:                 Time domain Jerk signal for gyroscope magnitude Standard deviation
FFTBodyAccMeanX:                 Fast fourier transform domain signal for accelerometer along axis X Mean
FFTBodyAccMeanY:                 Fast fourier transform domain signal for accelerometer along axis Y Mean
FFTBodyAccMeanZ:                 Fast fourier transform domain signal for accelerometer along axis Z Mean
FFTBodyAccStdX:                 Fast fourier transform domain signal for accelerometer along axis X Standard deviation 
FFTBodyAccStdY:                 Fast fourier transform domain signal for accelerometer along axis Y Standard deviation
FFTBodyAccStdZ:                 Fast fourier transform domain signal for accelerometer along axis Z Standard deviation
FFTBodyAccMeanFreqX:                 Fast fourier transform domain signal for accelerometer subtracting gravity along axis X Mean
FFTBodyAccMeanFreqY:                 Fast fourier transform domain signal for accelerometer subtracting gravity along axis Y Mean
FFTBodyAccMeanFreqZ:                 Fast fourier transform domain signal for accelerometer subtracting gravity along axis Z Mean
FFTBodyAccJerkMeanX:                 Fast fourier transform domain Jerk signal for accelerometer along axis X Mean
FFTBodyAccJerkMeanY:                 Fast fourier transform domain Jerk signal for accelerometer along axis Y Mean
FFTBodyAccJerkMeanZ:                 Fast fourier transform domain Jerk signal for accelerometer along axis Z Mean
FFTBodyAccJerkStdX:                 Fast fourier transform domain Jerk signal for accelerometer along axis Standard deviation
FFTBodyAccJerkStdY:                 Fast fourier transform domain Jerk signal for accelerometer along axis Y Standard deviation
FFTBodyAccJerkStdZ:                 Fast fourier transform domain Jerk signal for accelerometer along axis Z Standard deviation
FFTBodyAccJerkMeanFreqX:                 Fast fourier transform domain Jerk signal for accelerometer along axis X Mean frequency
FFTBodyAccJerkMeanFreqY:                 Fast fourier transform domain Jerk signal for accelerometer along axis Y Mean frequency
FFTBodyAccJerkMeanFreqZ:                 Fast fourier transform domain Jerk signal for accelerometer along axis Z Mean frequency
FFTBodyGyroMeanX:                 Fast fourier transform domain signal for gyroscope along axis X Mean
FFTBodyGyroMeanY:                 Fast fourier transform domain signal for gyroscope along axis Y Mean
FFTBodyGyroMeanZ:                 Fast fourier transform domain signal for gyroscope along axis Z Mean
FFTBodyGyroStdX:                 Fast fourier transform domain signal for gyroscope along axis X Standard deviation
FFTBodyGyroStdY:                 Fast fourier transform domain signal for gyroscope along axis Y Standard deviation
FFTBodyGyroStdZ:                 Fast fourier transform domain signal for gyroscope along axis Z Standard deviation
FFTBodyGyroMeanFreqX:                 Fast fourier transform domain Jerk signal for gyroscope along axis X Mean frequency
FFTBodyGyroMeanFreqY:                 Fast fourier transform domain Jerk signal for gyroscope along axis Y Mean frequency
FFTBodyGyroMeanFreqZ:                 Fast fourier transform domain Jerk signal for gyroscope along axis Z Mean frequency
FFTBodyAccMagMean:                 Fast fourier transform domain signal for acclerometer magnitude Mean
FFTBodyAccMagStd:                 Fast fourier transform domain signal for acclerometer magnitude Standard deviation
FFTBodyAccMagMeanFreq:                 Fast fourier transform domain signal for acclerometer magnitude Mean frequency
FFTBodyAccJerkMagMean:                 Fast fourier transform domain Jerk signal for acclerometer magnitude Mean
FFTBodyAccJerkMagStd:                 Fast fourier transform domain Jerk signal for acclerometer magnitude Standard deviation
FFTBodyAccJerkMagMeanFreq:                 Fast fourier transform domain Jerk signal for acclerometer magnitude Mean frequency
FFTBodyGyroMagMean:                 Fast fourier transform domain signal for gyroscope magnitude Mean
FFTBodyGyroMagStd:                 Fast fourier transform domain signal for gyroscope magnitude Standard deviation
FFTBodyGyroMagMeanFreq:                 Fast fourier transform domain signal for acclerometer magnitude Mean frequency
FFTBodyGyroJerkMagMean:                 Fast fourier transform domain Jerk signal for gyroscope magnitude Mean
FFTBodyGyroJerkMagStd:                 Fast fourier transform domain Jerk signal for gyroscope magnitude Standard deviation
FFTBodyGyroJerkMagMeanFreq:                 Fast fourier transform domain Jerk signal for gyroscope magnitude Mean frequency