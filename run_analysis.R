#### loading packages
library(dplyr)
library(tidyr)
library(sqldf)

## file upload to R, assuming target files are in the working directory
## reading activity_label
activityLabel <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabel$V2 <- tolower(activityLabel$V2)

## reading features
features <- read.table("UCI HAR Dataset/features.txt")
## reading test files
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
## reading train files
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

## rbind test and train data
rawdata <- rbind(xtest, xtrain)

## naming columns of dataset with removing (), - and redundancy
features <- gsub("-", ".", as.character(features$V2))
features <- gsub("BodyBody", "Body", features)
features <- gsub("()", "", features, fixed = TRUE)
names(rawdata) <- features

## extracting means and stds column
extractdata <- rawdata[, grepl("mean", colnames(rawdata)) | grepl("std", colnames(rawdata))]

## rbind subjectTest and subjectTrain 
subject <- rbind(subjectTest, subjectTrain)
names(subject) <- "subjects"

## rbind y_files of ytest and ytrain
activities <- rbind(ytest, ytrain)
names(activities) <- "activityID"

## naming descriptive name of activities
activitiesName <- sqldf("select B.V2 from activities A, activityLabel B where A.activityID = B.V1")
names(activitiesName) <- "activities"

## col bind subject, activities and extractdata
df <- cbind(subject, activitiesName, extractdata)

## applying tbl_df to dt
dft <- tbl_df(df)

## final result of step 5
result <- dft %>% gather(features, value, tBodyAcc.mean.X:fBodyGyroJerkMag.meanFreq, na.rm = TRUE) %>% group_by(subjects, activities, features) %>% summarize(average_value = mean(value))

## output the result to txt file
write.table(result, "result.txt", row.name = FALSE)
