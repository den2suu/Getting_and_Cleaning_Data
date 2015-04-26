***
CodeBook
***
## Description of variables
The final data consist of four variables which are subjects, activities, features and average_value.


### subjects
Identical numbers of volunteers who participated in the study.
natural number 1 ~ 30

### activities
Status of six activities

1. walking
2. walking_upstairs
3. walking_downstairs
4. sitting
5. standing
6. laying

### features
Extracting mean and std of sensor signals collected by accelerometers and gyroscope of smartphone.
* tBodyAcc.mean.X          
* tBodyAcc.mean.Y  
* tBodyAcc.mean.Z          
* tBodyAcc.std.X           
* tBodyAcc.std.Y           
* tBodyAcc.std.Z           
* tGravityAcc.mean.X
* tGravityAcc.mean.Y        
* tGravityAcc.mean.Z       
* tGravityAcc.std.X         
* tGravityAcc.std.Y         
* tGravityAcc.std.Z        
* tBodyAccJerk.mean.X       
* tBodyAccJerk.mean.Y
* tBodyAccJerk.mean.Z
* tBodyAccJerk.std.X
* tBodyAccJerk.std.Y
* tBodyAccJerk.std.Z
* tBodyGyro.mean.X
* tBodyGyro.mean.Y
* tBodyGyro.mean.Z
* tBodyGyro.std.X
* tBodyGyro.std.Y
* tBodyGyro.std.Z
* tBodyGyroJerk.mean.X
* tBodyGyroJerk.mean.Y
* tBodyGyroJerk.mean.Z
* tBodyGyroJerk.std.X
* tBodyGyroJerk.std.Y
* tBodyGyroJerk.std.Z
* tBodyAccMag.mean
* tBodyAccMag.std
* tGravityAccMag.mean
* tGravityAccMag.std
* tBodyAccJerkMag.mean
* tBodyAccJerkMag.std
* tBodyGyroMag.mean
* tBodyGyroMag.std
* tBodyGyroJerkMag.mean
* tBodyGyroJerkMag.std
* fBodyAcc.mean.X
* fBodyAcc.mean.Y
* fBodyAcc.mean.Z
* fBodyAcc.std.X
* fBodyAcc.std.Y
* fBodyAcc.std.Z
* fBodyAcc.meanFreq.X
* fBodyAcc.meanFreq.Y
* fBodyAcc.meanFreq.Z
* fBodyAccJerk.mean.X
* fBodyAccJerk.mean.Y
* fBodyAccJerk.mean.Z
* fBodyAccJerk.std.X
* fBodyAccJerk.std.Y
* fBodyAccJerk.std.Z
* fBodyAccJerk.meanFreq.X   
* fBodyAccJerk.meanFreq.Y  
* fBodyAccJerk.meanFreq.Z
* fBodyGyro.mean.X
* fBodyGyro.mean.Y
* fBodyGyro.mean.Z
* fBodyGyro.std.X
* fBodyGyro.std.Y
* fBodyGyro.std.Z
* fBodyGyro.meanFreq.X
* fBodyGyro.meanFreq.Y
* fBodyGyro.meanFreq.Z
* fBodyAccMag.mean         
* fBodyAccMag.std          
* fBodyAccMag.meanFreq
* fBodyAccJerkMag.mean
* fBodyAccJerkMag.std
* fBodyAccJerkMag.meanFreq
* fBodyGyroMag.mean
* fBodyGyroMag.std
* fBodyGyroMag.meanFreq
* fBodyGyroJerkMag.mean
* fBodyGyroJerkMag.std
* fBodyGyroJerkMag.meanFreq

### average_value
Calculating average of each features variable for each subject and each activity.




