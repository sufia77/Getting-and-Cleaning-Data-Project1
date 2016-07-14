## Create directory
if(! file.exists("./project")){dir.create("./project")}

## Download and unzip the data file

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- file.path(getwd(), "./project/Dataset.zip")
download.file(fileUrl, destfile, method = "curl")
unzip(zipfile = "./project/Dataset.zip", exdir = "./project")
## Reading test data
X_test <- read.table("./project/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./project/UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./project/UCI HAR Dataset/test/subject_test.txt")

## Reading training data

X_train <- read.table("./project/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./project/UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./project/UCI HAR Dataset/train/subject_train.txt")

## Reading feature vector and activity labels
features <- read.table("./project/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./project/UCI HAR Dataset/activity_labels.txt")

## View the Datasets
#View(X_test)
#View(features)

## Assign column names in test dataset
colnames(X_test) <- features[,2] 
colnames(Y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

## Assign column names in train dataset
colnames(X_train) <- features[,2] 
colnames(Y_train) <-"activityId"
colnames(subject_train) <- "subjectId"
colnames(activity_labels) <- c('activityId','activityType')

## Merging all test, then all train , then both test and train

merge_test <- cbind(subject_test, Y_test, X_test)
merge_train <- cbind(subject_train, Y_train, X_train)
merge_all <- rbind(merge_train, merge_test)
#dim(merge_all)
#View(merge_all[1:10, 1:10])

## select column names with Mean and Std and extract the required columns
columns_MeanSTD <- grep(".*Mean.*|.*Std.*", names(merge_all), ignore.case=TRUE)
#View(columns_MeanSTD)
extract_column <- c(1,2,columns_MeanSTD)

## Extract data with required columns
extract_data <- merge_all[, extract_column]
dim(extract_data) ## [1] 10299    88
##Uses descriptive activity names to name the activities in the data set
for (i in 1:6) {
  extract_data$activityId[extract_data$activityId == i] <- as.character(activity_labels[i,2])
}
#View(extract_data[1:10,1:4])
extract_data$activityId <- as.factor(extract_data$activityId)

#names(extract_data)

##Appropriately labels the data set with descriptive variable names. 
names(extract_data)<-gsub("Acc", "Accelerometer", names(extract_data))
names(extract_data)<-gsub("Gyro", "Gyroscope", names(extract_data))
names(extract_data)<-gsub("BodyBody", "Body", names(extract_data))
names(extract_data)<-gsub("Mag", "Magnitude", names(extract_data))
names(extract_data)<-gsub("^t", "Time", names(extract_data))
names(extract_data)<-gsub("^f", "Frequency", names(extract_data))
names(extract_data)<-gsub("tBody", "TimeBody", names(extract_data))
names(extract_data)<-gsub("-mean()", "Mean", names(extract_data), ignore.case = TRUE)
names(extract_data)<-gsub("-std()", "STD", names(extract_data), ignore.case = TRUE)
names(extract_data)<-gsub("-freq()", "Frequency", names(extract_data), ignore.case = TRUE)
names(extract_data)<-gsub("angle", "Angle", names(extract_data))
names(extract_data)<-gsub("gravity", "Gravity", names(extract_data))

## Creating tidy dataset with average value of each acticivity performed by each subject Id
library(plyr)
library(reshape2)
extract_data$subjectId <- as.factor(extract_data$subjectId)
tidy_data_melted <- melt(extract_data, list = c("activityId, subjectId"))
tidy_data_mean <- dcast(tidy_data_melted, activityId + subjectId ~ variable, mean)
tidy_data <- tidy_data[order(tidy_data$activityId, tidy_data$subjectId),]
write.table(tidy_data_mean, file = "./project/tidy_data.txt", row.names = FALSE)
