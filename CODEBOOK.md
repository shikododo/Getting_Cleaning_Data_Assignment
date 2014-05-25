# Codebook for assignment of the course "getting and cleaning data" on Coursera.

## The following codebook refers only to the final tidy data produced by running the script "run_analysis.R".

### The final data set contains 180 rows and 68 columns ###

## ID Variables ##

* subject_id: column 1 - refers to the individual who shares this data row
* activity: column 2 - refers to the activity being done by each individual while recording data
The combination of subject_id and activity is unique. Each row contains a unique combination of both variables. The whole dataset contains 30 subjects X 6 activity types

## Means of extracted features ##
These are the means of each feature for each subject and activity type.
* 'mean_of_tBodyAcc-mean-X': column 3 - Mean of the time (raw) body acceleration means recorded for each individual per each activity on the X axis
* 'mean_of_tBodyAcc-mean-Y': column 4 - Mean of the time (raw) body acceleration means recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyAcc-mean-Z': column 5 - Mean of the time (raw) body acceleration means recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyAcc-std-X': column 6 - Mean of the time (raw) body acceleration standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_tBodyAcc-std-Y': column 7 - Mean of the time (raw) body acceleration standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyAcc-std-Z': column 8 - Mean of the time (raw) body acceleration standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_tGravityAcc-mean-X': column 9 - Mean of the time (raw) gravity acceleration means recorded for each individual per each activity on the X axis
* 'mean_of_tGravityAcc-mean-Y': column 10 - Mean of the time (raw) gravity acceleration means recorded for each individual per each activity on the Y axis
* 'mean_of_tGravityAcc-mean-Z': column 11 - Mean of the time (raw) gravity acceleration means recorded for each individual per each activity on the Z axis
* 'mean_of_tGravityAcc-std-X': column 12 - Mean of the time (raw) gravity acceleration standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_tGravityAcc-std-Y': column 13 - Mean of the time (raw) gravity acceleration standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_tGravityAcc-std-Z': column 14 - Mean of the time (raw) gravity acceleration standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyAccJerk-mean-X': column 15 - Mean of the time (raw) body acceleration jerk means recorded for each individual per each activity on the X axis
* 'mean_of_tBodyAccJerk-mean-Y': column 16 - Mean of the time (raw) body acceleration jerk means recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyAccJerk-mean-Z': column 17 - Mean of the time (raw) body acceleration jerk means recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyAccJerk-std-X': column 18 - Mean of the time (raw) body acceleration jerk standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_tBodyAccJerk-std-Y': column 19 - Mean of the time (raw) body acceleration jerk standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyAccJerk-std-Z': column 20 - Mean of the time (raw) body acceleration jerk standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyGyro-mean-X': column 21 - Mean of the time (raw) body gyroscopic means recorded for each individual per each activity on the X axis 
* 'mean_of_tBodyGyro-mean-Y': column 22 - Mean of the time (raw) body gyroscopic means recorded for each individual per each activity on the Y axis 
* 'mean_of_tBodyGyro-mean-Z': column 23 - Mean of the time (raw) body gyroscopic means recorded for each individual per each activity on the Z axis 
* 'mean_of_tBodyGyro-std-X': column 24 - Mean of the time (raw) body gyroscopic standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_tBodyGyro-std-Y': column 25 - Mean of the time (raw) body gyroscopic standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyGyro-std-Z': column 26 - Mean of the time (raw) body gyroscopic standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyGyroJerk-mean-X': column 27 - Mean of the time (raw) body gyroscopic jerk means recorded for each individual per each activity on the X axis
* 'mean_of_tBodyGyroJerk-mean-Y': column 28 - Mean of the time (raw) body gyroscopic jerk means recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyGyroJerk-mean-Z': column 29 - Mean of the time (raw) body gyroscopic jerk means recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyGyroJerk-std-X': column 30 - Mean of the time (raw) body gyroscopic jerk standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_tBodyGyroJerk-std-Y': column 31 - Mean of the time (raw) body gyroscopic jerk standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_tBodyGyroJerk-std-Z': column 32 - Mean of the time (raw) body gyroscopic jerk standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_tBodyAccMag-mean': column 33 - Mean of the time (raw) body acceleration MAG means recorded for each individual per each activity
* 'mean_of_tBodyAccMag-std': column 34 - Mean of the time (raw) body acceleration MAG standard deviations recorded for each individual per each activity
* 'mean_of_tGravityAccMag-mean': column 35 - Mean of the time (raw) gravity MAG means recorded for each individual per each activity
* 'mean_of_tGravityAccMag-std': column 36 - Mean of the time (raw) gravity MAG standard deviations recorded for each individual per each activity
* 'mean_of_tBodyAccJerkMag-mean': column 37 - Mean of the time (raw) body acceleration jerk MAG means recorded for each individual per each activity
* 'mean_of_tBodyAccJerkMag-std': column 38 - Mean of the time (raw) body acceleration jerk MAG standard deviations recorded for each individual per each activity
* 'mean_of_tBodyGyroMag-mean': column 39 - Mean of the time (raw) body gyroscopic MAG means recorded for each individual per each activity
* 'mean_of_tBodyGyroMag-std': column 40 - Mean of the time (raw) body gyroscopic MAG standard deviations recorded for each individual per each activity
* 'mean_of_tBodyGyroJerkMag-mean': column 41 - Mean of the time (raw) body gyroscopic jerk MAG means recorded for each individual per each activity 
* 'mean_of_tBodyGyroJerkMag-std': column 42 - Mean of the time (raw) body gyroscopic jerk MAG standard deviations recorded for each individual per each activity
* 'mean_of_fBodyAcc-mean-X': column 43 -  Mean of the filtered (processed) body acceleration means recorded for each individual per each activity on the X axis
* 'mean_of_fBodyAcc-mean-Y': column 44 -  Mean of the filtered (processed) body acceleration means recorded for each individual per each activity on the Y axis
* 'mean_of_fBodyAcc-mean-Z': column 45 -  Mean of the filtered (processed) body acceleration means recorded for each individual per each activity on the Z axis
* 'mean_of_fBodyAcc-std-X': column 46 -  Mean of the filtered (processed) body acceleration standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_fBodyAcc-std-Y': column 47 -  Mean of the filtered (processed) body acceleration standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_fBodyAcc-std-Z': column 48 -  Mean of the filtered (processed) body acceleration standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_fBodyAccJerk-mean-X': column 49 -  Mean of the filtered (processed) body acceleration jerk means recorded for each individual per each activity on the X axis
* 'mean_of_fBodyAccJerk-mean-Y': column 50 -  Mean of the filtered (processed) body acceleration jerk means recorded for each individual per each activity on the Y axis
* 'mean_of_fBodyAccJerk-mean-Z': column 51 -  Mean of the filtered (processed) body acceleration jerk means recorded for each individual per each activity on the Z axis
* 'mean_of_fBodyAccJerk-std-X': column 52 -  Mean of the filtered (processed) body acceleration jerk standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_fBodyAccJerk-std-Y': column 53 -  Mean of the filtered (processed) body acceleration jerk standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_fBodyAccJerk-std-Z': column 54 -  Mean of the filtered (processed) body acceleration jerk standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_fBodyGyro-mean-X': column 55 - Mean of the filtered (processed) body gyroscopic means recorded for each individual per each activity on the X axis 
* 'mean_of_fBodyGyro-mean-Y': column 56 - Mean of the filtered (processed) body gyroscopic means recorded for each individual per each activity on the Y axis 
* 'mean_of_fBodyGyro-mean-Z': column 57 - Mean of the filtered (processed) body gyroscopic means recorded for each individual per each activity on the Z axis 
* 'mean_of_fBodyGyro-std-X': column 58 - Mean of the filtered (processed) body gyroscopic standard deviations recorded for each individual per each activity on the X axis
* 'mean_of_fBodyGyro-std-Y': column 59 - Mean of the filtered (processed) body gyroscopic standard deviations recorded for each individual per each activity on the Y axis
* 'mean_of_fBodyGyro-std-Z': column 60 - Mean of the filtered (processed) body gyroscopic standard deviations recorded for each individual per each activity on the Z axis
* 'mean_of_fBodyAccMag-mean': column 61 - Mean of the filtered (processed) body acceleration MAG means recorded for each individual per each activity
* 'mean_of_fBodyAccMag-std': column 62 - Mean of the filtered (processed) body acceleration MAG standard deviations recorded for each individual per each activity
* 'mean_of_fBodyAccJerkMag-mean': column 63 - Mean of the filtered (processed) body acceleration jerk MAG means recorded for each individual per each activity
* 'mean_of_fBodyAccJerkMag-std': column 64 - Mean of the filtered (processed) body acceleration jerk MAG standard deviations recorded for each individual per each activity
* 'mean_of_fBodyGyroMag-mean': column 65 - Mean of the filtered (processed) body gyroscopic MAG means recorded for each individual per each activity
* 'mean_of_fBodyGyroMag-std': column 66 - Mean of the filtered (processed) body gyroscopic MAG standard deviations recorded for each individual per each activity
* 'mean_of_fBodyGyroJerkMag-mean': column 67 - Mean of the filtered (processed) body gyroscopic jerk MAG means recorded for each individual per each activity  
* 'mean_of_fBodyGyroJerkMag-std': column 68 - Mean of the filtered (processed) body gyroscopic jerk MAG standard deviations recorded for each individual per each activity


For further inormation about different sources and processing steps performed on the data please refer to README.md and features_info.txt
