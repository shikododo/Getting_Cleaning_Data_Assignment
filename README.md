# Project of "Getting and Cleaning Data" course on Coursera

The script runa_analysis.R performs the following steps as required by the assignment:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

To run the script, 8 files are essential:
features.txt: contains a list of 561 featurees used in both datasets. Each row in this file corresponds to a column in the x dataset
activity_labels.txt: Labels of the 6 activities during which the data was recorded. Each row contains a key and a label for the activity
test\\x_test.txt: test data of the 561 features (different summaries). The test dataset contains 2947 observations for 9 subjects. Each subject has many records for different activity types.
test\\y_test.txt: Activities performed for each observation in the x_test file. Each row is the key of an activity type
test\\subject_test.txt: Subject ids for each observation of the x_test file
train\\x_train.txt: train data of the 561 features (different summaries). The train dataset contains 7352 observations for 21 subjects. Each subject has many records for different activity types.
train\\y_train.txt: Activities performed for each observation in the x_train file. Each row is the key of an activity type
train\\subject_train.txt: Subject ids for each observation of the x_train file

## To run the script, the package "reshape2" must be already installed ##


The original source of data is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Information about this dataset can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Instructions for this assignment can be found at: https://class.coursera.org/getdata-003/human_grading/view/courses/972136/assessments/3/submissions


##The script will process the files as following:##

- Reads the 8 files mentioned above into 8 data frames
- merges the three dataframes of (subject_test, y_test, x_test) into one dataframe called test_data. This dataframe now contains the subject id as the first column, activity type key as the second column, and the next 561 columns are the features.
- merges the three dataframes of (subject_train, y_train, x_train) into one dataframe called train_data. This dataframe now contains the subject id as the first column, activity type key as the second column, and the next 561 columns are the features.
- merges both dataframes (test_data and train_data) into one dataframe called all_data
- corrects the columns' names for the large merged dataframe. The first column will be labeled "subjec_id", the second one "activity" and the next 561 columns (which are the features) will be labelled from the dataframe "features".
- Extracts only features which contain the words "mean()" or "std()". Those are the variables which contain mean and standard deviations as indicated in the assignment. Other variables will be dropped.
- Extracted data will be put into a new data frame called "final_data".
- Gets the activity keys labels instead of the keys (From the data frame "activity_labels") and inserts it in the data frame final_data.
- Now the data frame "final_data" contains 68 columns, column 1 is the subject ID, column 2 is the label of activity type, columns 3 to 68 are the selected features which contain means and standard deviations.
- The script uses the package reshape2 to melt data, and then uses dcast to produce a new data frame (tidy_data) containing the mean of each column for each subject and activity.
- Names of all variables are modified to be more meaningful.
- The final step is to write this tidy data frame to the disk using write.csv().

The final data frame produced "tidy_data" contains 180 rows (30 subjects X 6 activities) and 68 columns (first column is the subject id, second column is the activity type label, and the next 66 columns are the mean of respective observations for each subject and activity type.
