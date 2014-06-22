getdata_project
===============

Course project for Getting and Cleaning Data

***Thanks for your kindly and insightful review.***

# 1. How to run? #

To run this script successfully, you should:

1. download the project data from [**here**](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) ;
1. unzip it;
1. move the unzipped directory to your **working directory**;
1. and then, **source** this script.

# 2. Processing details. #

- Step 1: Merges the training and the test sets to create one data set.

     Files used: "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/test/X_test.txt".

- Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

    Only the features with 'mean()' or 'st()' were remained, resulting 66 features (**NOTE**: 'meanFreq()' and 'Mean' were not used). File used: "UCI HAR Dataset/features.txt".

    Then, subjects and activities were read in, and added to the data column. Files used: "UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/test/subject_test.txt", "UCI HAR Dataset/train/y_train.txt", "UCI HAR Dataset/test/y_test.txt".

- Step 3: Uses descriptive activity names to name the activities in the data set.

    File used: "UCI HAR Dataset/activity_labels.txt"

- Step 4: Appropriately labels the data set with descriptive variable names.

    Criteria: 'mean()' were changed to be 'Mean'; 'std()' were changed to be 'Std'; '-' were changed to be '.'

    Then, the data was saved as 'TidyDataSet1.csv', with 68 columns (names: subject, activity and followed by 66 variables)

- Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    The data was saved as 'TidyDataSet2.csv', with 68 columns (names: subject, activity and followed by 66 variables with additional suffix of '.average')