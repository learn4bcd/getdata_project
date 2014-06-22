CodeBook for course project datasets
===============
***Thanks for your kindly and insightful review.***

There's are two output files in the repo, 'TidyDataSet1.csv' and 'TidyDataSet2.csv', and both files have 68 columns: subject, activity and followed by 66 variables. The 'subject' and 'activity' variables in both files are identical, but the 66 variables in 'TidyDataSet2.csv' with a additional suffix of '.average' when compared to the other file. The suffix '.average' means the average of corresponding feature for each subject and activity combination.

1. 'subject'

    Identifies of the subjects who performed the activities. Its range is from 1 to 30.

2. 'activity'

    Activities performed by subject wearing a smartphone (Samsung Galaxy S II) on the waist. It includes the folloing six activities:

    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING
    
    See 'activity_labels.txt' file in project data from [**here**](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for more detailed information 

3. 66-variables

    NOTE: these values are normalized and bounded within [-1,1].

    Signals used to estimate variables for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. (see the 'features_info.txt' file for more detailed information)

    - tBodyAcc-XYZ
    - tGravityAcc-XYZ
    - tBodyAccJerk-XYZ
    - tBodyGyro-XYZ
    - tBodyGyroJerk-XYZ
    - tBodyAccMag
    - tGravityAccMag
    - tBodyAccJerkMag
    - tBodyGyroMag
    - tBodyGyroJerkMag
    - fBodyAcc-XYZ
    - fBodyAccJerk-XYZ
    - fBodyGyro-XYZ
    - fBodyAccMag
    - fBodyAccJerkMag
    - fBodyGyroMag
    - fBodyGyroJerkMag

    The set of variables that were estimated from these signals are: 

    - Mean: Mean value ('mean()' in 'features_info.txt' )
    - Std: Standard deviation ('std()' in 'features_info.txt')

    The complete list of 66 variables is as following (the variables for 'TidyDataSet2.csv' have the '.average' suffix indicated as '(.average)'):

    - tBodyAcc.Mean.X(.average)
    - tBodyAcc.Mean.Y(.average)
    - tBodyAcc.Mean.Z(.average)
    - tBodyAcc.Std.X(.average)
    - tBodyAcc.Std.Y(.average)
    - tBodyAcc.Std.Z(.average)
    - tGravityAcc.Mean.X(.average)
    - tGravityAcc.Mean.Y(.average)
    - tGravityAcc.Mean.Z(.average)
    - tGravityAcc.Std.X(.average)
    - tGravityAcc.Std.Y(.average)
    - tGravityAcc.Std.Z(.average)
    - tBodyAccJerk.Mean.X(.average)
    - tBodyAccJerk.Mean.Y(.average)
    - tBodyAccJerk.Mean.Z(.average)
    - tBodyAccJerk.Std.X(.average)
    - tBodyAccJerk.Std.Y(.average)
    - tBodyAccJerk.Std.Z(.average)
    - tBodyGyro.Mean.X(.average)
    - tBodyGyro.Mean.Y(.average)
    - tBodyGyro.Mean.Z(.average)
    - tBodyGyro.Std.X(.average)
    - tBodyGyro.Std.Y(.average)
    - tBodyGyro.Std.Z(.average)
    - tBodyGyroJerk.Mean.X(.average)
    - tBodyGyroJerk.Mean.Y(.average)
    - tBodyGyroJerk.Mean.Z(.average)
    - tBodyGyroJerk.Std.X(.average)
    - tBodyGyroJerk.Std.Y(.average)
    - tBodyGyroJerk.Std.Z(.average)
    - tBodyAccMag.Mean(.average)
    - tBodyAccMag.Std(.average)
    - tGravityAccMag.Mean(.average)
    - tGravityAccMag.Std(.average)
    - tBodyAccJerkMag.Mean(.average)
    - tBodyAccJerkMag.Std(.average)
    - tBodyGyroMag.Mean(.average)
    - tBodyGyroMag.Std(.average)
    - tBodyGyroJerkMag.Mean(.average)
    - tBodyGyroJerkMag.Std(.average)
    - fBodyAcc.Mean.X(.average)
    - fBodyAcc.Mean.Y(.average)
    - fBodyAcc.Mean.Z(.average)
    - fBodyAcc.Std.X(.average)
    - fBodyAcc.Std.Y(.average)
    - fBodyAcc.Std.Z(.average)
    - fBodyAccJerk.Mean.X(.average)
    - fBodyAccJerk.Mean.Y(.average)
    - fBodyAccJerk.Mean.Z(.average)
    - fBodyAccJerk.Std.X(.average)
    - fBodyAccJerk.Std.Y(.average)
    - fBodyAccJerk.Std.Z(.average)
    - fBodyGyro.Mean.X(.average)
    - fBodyGyro.Mean.Y(.average)
    - fBodyGyro.Mean.Z(.average)
    - fBodyGyro.Std.X(.average)
    - fBodyGyro.Std.Y(.average)
    - fBodyGyro.Std.Z(.average)
    - fBodyAccMag.Mean(.average)
    - fBodyAccMag.Std(.average)
    - fBodyBodyAccJerkMag.Mean(.average)
    - fBodyBodyAccJerkMag.Std(.average)
    - fBodyBodyGyroMag.Mean(.average)
    - fBodyBodyGyroMag.Std(.average)
    - fBodyBodyGyroJerkMag.Mean(.average)
    - fBodyBodyGyroJerkMag.Std(.average)