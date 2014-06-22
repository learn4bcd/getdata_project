## To run this script successfully, you should:
## (1) download the project data from
##     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ;
## (2) unzip it;
## (3) move the unzipped directory to your working directory;
## (4) and then, source this script.
## 
## Thanks for your kindly review.

## Step 1: Merges the training and the test sets to create one data set.

DataSet1 <- read.table("UCI HAR Dataset/train/X_train.txt",as.is=T)
DataSet1 <- rbind(DataSet1,read.table("UCI HAR Dataset/test/X_test.txt",as.is=T))


## Step 2: Extracts only the measurements on the mean and standard deviation for
## each measurement. 

# Only the features with mean() or st() were remained.
features <- read.table("UCI HAR Dataset/features.txt",as.is=T)
features <- features[grepl("-std\\(|-mean\\(",features[,2]),]

# remove irrelevant columns
DataSet1 <- DataSet1[,features[,1]]

# add subject and activities to the data column
DataSet1.subject <- read.table("UCI HAR Dataset/train/subject_train.txt",as.is=T)
DataSet1.subject <- rbind(DataSet1.subject, read.table("UCI HAR Dataset/test/subject_test.txt",as.is=T))
DataSet1.label <- read.table("UCI HAR Dataset/train/y_train.txt",as.is=T)
DataSet1.label <- rbind(DataSet1.label, read.table("UCI HAR Dataset/test/y_test.txt",as.is=T))
DataSet1 <- cbind(DataSet1.subject,DataSet1.label,DataSet1)


## Step 3: Uses descriptive activity names to name the activities in the data set

labels <- read.table("UCI HAR Dataset/activity_labels.txt",as.is=T)
DataSet1[,2] <- factor(DataSet1[,2],level=labels[,1],labels=labels[,2])


## Step 4: Appropriately labels the data set with descriptive variable names.

# prepare the variable names
features[,2] <- gsub("mean\\(\\)","Mean",features[,2])
features[,2] <- gsub("std\\(\\)","Std",features[,2])
features[,2] <- gsub("-",".",features[,2])

colnames(DataSet1) <- c("subject","activity",features[,2])
write.csv(DataSet1,"TidyDataSet1.csv",row.names=F)


# Step 5: Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
DataSet2 <- aggregate(DataSet1[,-c(1,2)], list(DataSet1[,1],DataSet1[,2]), mean)
colnames(DataSet2) <- c("subject","activity",paste(features[,2],"average",sep="."))
write.csv(DataSet2,"TidyDataSet2.csv",row.names=F)