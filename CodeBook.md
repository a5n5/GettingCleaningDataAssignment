#CodeBook.md

## This codebook describes the data and the different variables

## UCI HAR Dataset description:  
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## Variable desciption:  
* SubjectID: One of the 30 subjects  
* activityName: One of the 6 activities  
* "TimeBodyAccelerometerMean()-X": The mean ofMean time of Body by Accelometer along X  
* "TimeBodyAccelerometerMean()-Y": The mean ofMean time of Body by Accelometer along Y  
* "TimeBodyAccelerometerMean()-Z": The mean ofMean time of Body by Accelometer along Z  
* "TimeBodyAccelerometerSTD()-X": The mean ofStd Deviation time of Body by Accelometer along X  
* "TimeBodyAccelerometerSTD()-Y": The mean ofStd Deviation time of Body by Accelometer along Y  
* "TimeBodyAccelerometerSTD()-Z": The mean ofStd Deviation time of Body by Accelometer along Z  
* "TimeGravityAccelerometerMean()-X": The mean ofMean time of Gravity by Accelometer along X  
* "TimeGravityAccelerometerMean()-Y": The mean ofMean time of Gravity by Accelometer along Y  
* "TimeGravityAccelerometerMean()-Z": The mean ofMean time of Gravity by Accelometer along Z  
* "TimeGravityAccelerometerSTD()-X": The mean ofStd Deviation time of Gravity by Accelometer along X  
* "TimeGravityAccelerometerSTD()-Y": The mean ofStd Deviation time of Gravity by Accelometer along Y  
* "TimeGravityAccelerometerSTD()-Z": The mean ofStd Deviation time of Gravity by Accelometer along Z  
* "TimeBodyAccelerometerJerkMean()-X": The mean ofMean time of Body jerk by Accelometer along X  
* "TimeBodyAccelerometerJerkMean()-Y": The mean ofMean time of Body jerk by Accelometer along Y  
* "TimeBodyAccelerometerJerkMean()-Z": The mean ofMean time of Body jerk by Accelometer along Z  
* "TimeBodyAccelerometerJerkSTD()-X": The mean ofStd Deviation time of Body jerk by Accelometer along X  
* "TimeBodyAccelerometerJerkSTD()-Y": The mean ofStd Deviation time of Body jerk by Accelometer along Y  
* "TimeBodyAccelerometerJerkSTD()-Z": The mean ofStd Deviation time of Body jerk by Accelometer along Z  
* "TimeBodyGyroscopeMean()-X": The mean ofMean time of Body by Gyroscope along X  
* "TimeBodyGyroscopeMean()-Y": The mean ofMean time of Body by Gyroscope along Y  
* "TimeBodyGyroscopeMean()-Z": The mean ofMean time of Body by Gyroscope along Z  
* "TimeBodyGyroscopeSTD()-X": The mean ofStd Deviation time of Body by Gyroscope along X  
* "TimeBodyGyroscopeSTD()-Y": The mean ofStd Deviation time of Body by Gyroscope along Y  
* "TimeBodyGyroscopeSTD()-Z": The mean ofStd Deviation time of Body by Gyroscope along Z  
* "TimeBodyGyroscopeJerkMean()-X": The mean ofMean of time of body by Gyroscope along X  
* "TimeBodyGyroscopeJerkMean()-Y": The mean ofMean of time of body by Gyroscope along Y  
* "TimeBodyGyroscopeJerkMean()-Z": The mean ofMean of time of body by Gyroscope along Z  
* "TimeBodyGyroscopeJerkSTD()-X": The mean ofStd Deviation of time of body by Gyroscope along X  
* "TimeBodyGyroscopeJerkSTD()-Y": The mean ofStd Deviation of time of body by Gyroscope along Y  
* "TimeBodyGyroscopeJerkSTD()-Z": The mean ofStd Deviation of time of body by Gyroscope along Z  
* "TimeBodyAccelerometerMagnitudeMean()": The mean ofMean of time body magnitude by Accelometer  
* "TimeBodyAccelerometerMagnitudeSTD()": The mean ofStd Deviation of time body magnitude by Accelometer  
* "TimeGravityAccelerometerMagnitudeMean()": The mean ofMean of time gravity magnitude by Accelometer  
* "TimeGravityAccelerometerMagnitudeSTD()": The mean ofStd Deviation of time gravity magnitude by Accelometer  
* "TimeBodyAccelerometerJerkMagnitudeMean()": The mean ofMean of time body jerk magnitudy by Accelerometer  
* "TimeBodyAccelerometerJerkMagnitudeSTD()": The mean ofStd Deviation of time body jerk magnitudy by Accelerometer  
* "TimeBodyGyroscopeMagnitudeMean()": The mean ofMean of time body magnitude by gyroscope  
* "TimeBodyGyroscopeMagnitudeSTD()": The mean ofStd Deviation of time body magnitude by Gyrsoscope  
* "TimeBodyGyroscopeJerkMagnitudeMean()": The mean ofMean of time body jerk magnitude by Gyroscope  
* "TimeBodyGyroscopeJerkMagnitudeSTD()": The mean ofStd Deviation of time body jerk magnitude by Gyroscope  
* "FrequencyBodyAccelerometerMean()-X": The mean ofMean of frequency of body by Accelerometer along X  
* "FrequencyBodyAccelerometerMean()-Y": The mean ofMean of frequency of body by Accelerometer along Y  
* "FrequencyBodyAccelerometerMean()-Z": The mean ofMean of frequency of body by Accelerometer along Z  
* "FrequencyBodyAccelerometerSTD()-X": The mean ofStd Deviation of frequency of body by Accelerometer along X  
* "FrequencyBodyAccelerometerSTD()-Y": The mean ofStd Deviation of frequency of body by Accelerometer along Y  
* "FrequencyBodyAccelerometerSTD()-Z": The mean ofStd Deviation of frequency of body by Accelerometer along Z  
* "FrequencyBodyAccelerometerMeanFreq()-X": The mean ofMean of Frequency of body frequency by Accelerometer along X  
* "FrequencyBodyAccelerometerMeanFreq()-Y": The mean ofMean of Frequency of body frequency by Accelerometer along Y  
* "FrequencyBodyAccelerometerMeanFreq()-Z": The mean ofMean of Frequency of body frequency by Accelerometer along Z  
* "FrequencyBodyAccelerometerJerkMean()-X": The mean ofMean of frequency of body jerk by Accelerometer along X  
* "FrequencyBodyAccelerometerJerkMean()-Y": The mean ofMean of frequency of body jerk by Accelerometer along Y  
* "FrequencyBodyAccelerometerJerkMean()-Z": The mean ofMean of frequency of body jerk by Accelerometer along Z  
* "FrequencyBodyAccelerometerJerkSTD()-X": The mean ofStd Deviation of frequency of body jerk by Accelerometer along X  
* "FrequencyBodyAccelerometerJerkSTD()-Y": The mean ofStd Deviation of frequency of body jerk by Accelerometer along Y  
* "FrequencyBodyAccelerometerJerkSTD()-Z": The mean ofStd Deviation of frequency of body jerk by Accelerometer along Z  
* "FrequencyBodyAccelerometerJerkMeanFreq()-X": The mean ofMean of frequency of body jerk frequency by Accelerometer along X  
* "FrequencyBodyAccelerometerJerkMeanFreq()-Y": The mean ofMean of frequency of body jerk by Accelerometer along Y  
* "FrequencyBodyAccelerometerJerkMeanFreq()-Z": The mean ofMean of frequency of body jerk by Accelerometer along Z  
* "FrequencyBodyGyroscopeMean()-X": The mean ofMean of body frequency by Gyroscope along X  
* "FrequencyBodyGyroscopeMean()-Y": The mean ofMean of body frequency by Gyroscope along Y  
* "FrequencyBodyGyroscopeMean()-Z": The mean ofMean of body frequency by Gyroscope along Z  
* "FrequencyBodyGyroscopeSTD()-X": The mean ofStd Deviation of body frequency by Gyroscope along X  
* "FrequencyBodyGyroscopeSTD()-Y": The mean ofStd Deviation of body frequency by Gyroscope along Y  
* "FrequencyBodyGyroscopeSTD()-Z": The mean ofStd Deviation of body frequency by Gyroscope along Z  
* "FrequencyBodyGyroscopeMeanFreq()-X": The mean ofMean frequency of body frequency by Gyroscope along X  
* "FrequencyBodyGyroscopeMeanFreq()-Y": The mean ofMean frequency of body frequency by Gyroscope along Y  
* "FrequencyBodyGyroscopeMeanFreq()-Z": The mean ofMean frequency of body frequency by Gyroscope along Z  
* "FrequencyBodyAccelerometerMagnitudeMean()": The mean ofMean of body frequency magnitude by Accelerometer  
* "FrequencyBodyAccelerometerMagnitudeSTD()": The mean ofStd Deviation of body frequency magnitude by Accelerometer  
* "FrequencyBodyAccelerometerMagnitudeMeanFreq()": The mean ofMean of frequency of body frequency magnitude by Acceloremeter  
* "FrequencyBodyAccelerometerJerkMagnitudeMean()": The mean ofMean of frequency of body jerk magnitude by Acceloremeter  
* "FrequencyBodyAccelerometerJerkMagnitudeSTD()": The mean ofStd Deviation of frequency of body jerk magnitude by Acceloremeter  
* "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()": The mean ofMean of body frequency jerk magnitude frequency by Acceloremeter  
* "FrequencyBodyGyroscopeMagnitudeMean()": The mean ofMean of body frequency magnitude by Gyroscope  
* "FrequencyBodyGyroscopeMagnitudeSTD()": The mean ofStd Deviation of body frequency magnitude by Gyroscope  
* "FrequencyBodyGyroscopeMagnitudeMeanFreq()": The mean ofMean of frequency of body frequency magnitude by Gyroscope  
* "FrequencyBodyGyroscopeJerkMagnitudeMean()": The mean ofMean of frequency of body jerk magnitude by Gyroscope  
* "FrequencyBodyGyroscopeJerkMagnitudeSTD()": The mean ofStd Deviation of frequency of body jerk magnitude by Gyroscope  
* "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()": The mean ofMean of body frequency jerk magnitude frequency by Gyroscope  

