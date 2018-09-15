setwd('C:/Users/nicholas.eng/Desktop/testprojects/UCI HAR Dataset')

## Merging the training and the test sets to create one data set

# read activity and feature labels
features <- read.table('features.txt')
activity_labels <- read.table('activity_labels.txt')

# read train data
subject_train <- read.table('./train/subject_train.txt')
X_train <- read.table('./train/X_train.txt')
Y_train <- read.table('./train/Y_train.txt')

# read test data
subject_test <- read.table('./test/subject_test.txt')
X_test <- read.table('./test/X_test.txt')
Y_test <- read.table('./test/Y_test.txt')

train_data <- cbind(subject_train,X_train,Y_train)
test_data <- cbind(subject_test,X_test,Y_test)

full_data <- rbind(train_data,test_data)

headerNames <- c("subject", as.character(features$V2), "activity")
colnames(full_data) <- headerNames

## Extract only measurements on mean and standard deviation

subsetColumns <- grep("subject|[Mm]ean|std|activity", headerNames, value = FALSE)
subset_data <- full_data[ ,subsetColumns]

## Use descriptive activities names for activity measurements
names(activity_labels) <- c("activityNumber", "activityName")
full_data$activity <- activity_labels$activityName[full_data$activity]
