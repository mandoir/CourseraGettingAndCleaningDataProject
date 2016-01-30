# Getting and Cleaning Data Course Project

## Code Book

Information about study design is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Dataset for project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals, and are included in the final tidy data set for this project, are: 

mean(): Mean value
std(): Standard deviation

### Final variables

- Subject: ID (integer)
- Activity: name of activity (string)

Means of parameters by subject and activity, with improved descriptive titles (numeric)
                                
 [3] "timeBodyAccelerometerMeanX"                 
 [4] "timeBodyAccelerometerMeanY"                 
 [5] "timeBodyAccelerometerMeanZ"                 
 [6] "timeBodyAccelerometerSDX"                   
 [7] "timeBodyAccelerometerSDY"                   
 [8] "timeBodyAccelerometerSDZ"                   
 [9] "timeGravityAccelerometerMeanX"              
[10] "timeGravityAccelerometerMeanY"              
[11] "timeGravityAccelerometerMeanZ"              
[12] "timeGravityAccelerometerSDX"                
[13] "timeGravityAccelerometerSDY"                
[14] "timeGravityAccelerometerSDZ"                
[15] "timeBodyAccelerometerJerkMeanX"             
[16] "timeBodyAccelerometerJerkMeanY"             
[17] "timeBodyAccelerometerJerkMeanZ"             
[18] "timeBodyAccelerometerJerkSDX"               
[19] "timeBodyAccelerometerJerkSDY"               
[20] "timeBodyAccelerometerJerkSDZ"               
[21] "timeBodyGyroscopeMeanX"                     
[22] "timeBodyGyroscopeMeanY"                     
[23] "timeBodyGyroscopeMeanZ"                     
[24] "timeBodyGyroscopeSDX"                       
[25] "timeBodyGyroscopeSDY"                       
[26] "timeBodyGyroscopeSDZ"                       
[27] "timeBodyGyroscopeJerkMeanX"                 
[28] "timeBodyGyroscopeJerkMeanY"                 
[29] "timeBodyGyroscopeJerkMeanZ"                 
[30] "timeBodyGyroscopeJerkSDX"                   
[31] "timeBodyGyroscopeJerkSDY"                   
[32] "timeBodyGyroscopeJerkSDZ"                   
[33] "timeBodyAccelerometerMagnitudeMean"         
[34] "timeBodyAccelerometerMagnitudeSD"           
[35] "timeGravityAccelerometerMagnitudeMean"      
[36] "timeGravityAccelerometerMagnitudeSD"        
[37] "timeBodyAccelerometerJerkMagnitudeMean"     
[38] "timeBodyAccelerometerJerkMagnitudeSD"       
[39] "timeBodyGyroscopeMagnitudeMean"             
[40] "timeBodyGyroscopeMagnitudeSD"               
[41] "timeBodyGyroscopeJerkMagnitudeMean"         
[42] "timeBodyGyroscopeJerkMagnitudeSD"           
[43] "frequencyBodyAccelerometerMeanX"            
[44] "frequencyBodyAccelerometerMeanY"            
[45] "frequencyBodyAccelerometerMeanZ"            
[46] "frequencyBodyAccelerometerSDX"              
[47] "frequencyBodyAccelerometerSDY"              
[48] "frequencyBodyAccelerometerSDZ"              
[49] "frequencyBodyAccelerometerJerkMeanX"        
[50] "frequencyBodyAccelerometerJerkMeanY"        
[51] "frequencyBodyAccelerometerJerkMeanZ"        
[52] "frequencyBodyAccelerometerJerkSDX"          
[53] "frequencyBodyAccelerometerJerkSDY"          
[54] "frequencyBodyAccelerometerJerkSDZ"          
[55] "frequencyBodyGyroscopeMeanX"                
[56] "frequencyBodyGyroscopeMeanY"                
[57] "frequencyBodyGyroscopeMeanZ"                
[58] "frequencyBodyGyroscopeSDX"                  
[59] "frequencyBodyGyroscopeSDY"                  
[60] "frequencyBodyGyroscopeSDZ"                  
[61] "frequencyBodyAccelerometerMagnitudeMean"    
[62] "frequencyBodyAccelerometerMagnitudeSD"      
[63] "frequencyBodyAccelerometerJerkMagnitudeMean"
[64] "frequencyBodyAccelerometerJerkMagnitudeSD"  
[65] "frequencyBodyGyroscopeMagnitudeMean"        
[66] "frequencyBodyGyroscopeMagnitudeSD"          
[67] "frequencyBodyGyroscopeJerkMagnitudeMean"    
[68] "frequencyBodyGyroscopeJerkMagnitudeSD" 

