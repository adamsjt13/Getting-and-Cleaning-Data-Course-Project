This codebook's purpose is to describe the data contained in the output file, "data_submit.txt", of run_analysis.R. 

The original data and detailed information can be found by following the links located in the README.md of this repository. The original data was gathered using the accelerometer and gyroscope of a Samsung Galaxy S smartphone. The data 
was then modified using run_analysis.R as described in the README.md of this repository. The modified data can be found in the "data_submit.txt" file created after running the R script. The data set in "data_submit.txt" has 180 rows and 
68 columns. The rows represent the average of each variable, with mean() or std() in the name, from the original data set for each individual tested while performing each one of the six activities. The columns will be described below.

#Columns:

"Activity" - provides a description of the activity being performed when the measurements were taken
"Subject" - provides a numerical id for each person who was tested, total of 30 participants

Each of the following columns contain the average for each subject performing each activity:

*'t' and 'f' prefixes stand for time and frequency domains respectively
*'acc' and 'gyro' portion refers to the accelerometer and gyroscope measurement data respectively
*'X', 'Y', and 'Z' suffixes denote the dimension in which the measurement was obtained
* 'mean' and 'std' refer to the mean and standard deviation respectively
 
"tBodyAcc.mean.X"          
"tBodyAcc.mean.Y"         
"tBodyAcc.mean.Z"           
"tBodyAcc.std.X" 
"tBodyAcc.std.Y"            
"tBodyAcc.std.Z"           
"tGravityAcc.mean.X"        
"tGravityAcc.mean.Y"        
"tGravityAcc.mean.Z"        
"tGravityAcc.std.X"        
"tGravityAcc.std.Y"         
"tGravityAcc.std.Z"         
"tBodyAccJerk.mean.X"       
"tBodyAccJerk.mean.Y"      
"tBodyAccJerk.mean.Z"       
"tBodyAccJerk.std.X"        
"tBodyAccJerk.std.Y"        
"tBodyAccJerk.std.Z"        
"tBodyGyro.mean.X"          
"tBodyGyro.mean.Y"          
"tBodyGyro.mean.Z"          
"tBodyGyro.std.X"          
"tBodyGyro.std.Y"           
"tBodyGyro.std.Z"           
"tBodyGyroJerk.mean.X"      
"tBodyGyroJerk.mean.Y"     
"tBodyGyroJerk.mean.Z"      
"tBodyGyroJerk.std.X"       
"tBodyGyroJerk.std.Y"       
"tBodyGyroJerk.std.Z"      
"tBodyAccMag.mean"          
"tBodyAccMag.std"           
"tGravityAccMag.mean"       
"tGravityAccMag.std"       
"tBodyAccJerkMag.mean"      
"tBodyAccJerkMag.std"       
"tBodyGyroMag.mean"         
"tBodyGyroMag.std"         
"tBodyGyroJerkMag.mean"     
"tBodyGyroJerkMag.std"      
"fBodyAcc.mean.X"           
"fBodyAcc.mean.Y"          
"fBodyAcc.mean.Z"           
"fBodyAcc.std.X"            
"fBodyAcc.std.Y"            
"fBodyAcc.std.Z"           
"fBodyAccJerk.mean.X"       
"fBodyAccJerk.mean.Y"       
"fBodyAccJerk.mean.Z"       
"fBodyAccJerk.std.X"       
"fBodyAccJerk.std.Y"        
"fBodyAccJerk.std.Z"        
"fBodyGyro.mean.X"          
"fBodyGyro.mean.Y"         
"fBodyGyro.mean.Z"          
"fBodyGyro.std.X"           
"fBodyGyro.std.Y"           
"fBodyGyro.std.Z"          
"fBodyAccMag.mean"          
"fBodyAccMag.std"           
"fBodyBodyAccJerkMag.mean"  
"fBodyBodyAccJerkMag.std"  
"fBodyBodyGyroMag.mean"     
"fBodyBodyGyroMag.std"      
"fBodyBodyGyroJerkMag.mean" 
"fBodyBodyGyroJerkMag.std"

