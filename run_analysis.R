# Creates directory for data if it doesn't already exist, downloads and unzips 
# file into working directory.

if (!file.exists('UCI HAR Dataset')) {
    dir.create('UCI HAR Dataset')
}

dat <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(dat, 'UCI-HAR-dataset.zip')
unzip('./UCI-HAR-dataset.zip')

# Get the list of files in "UCI HAR Dataset"

directory <- file.path((getwd()) , "UCI HAR Dataset")
list <-list.files(directory, recursive = TRUE)
list

# Merge test and train datasets to create three complete sets for X, Y, and subject.

x_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
str(x_train)
x_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
str(x_test)
x <- rbind(x_train, x_test)
str(x)

y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
str(y_train)
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
str(y_test)
y <- rbind(y_train, y_test)
str(y)

subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
str(subject_train)
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
str(subject_test)
subject <- rbind(subject_train, subject_test)
str(subject)

# Extract only the measurements on the mean and standard deviation for measurements.

features <- read.table('./UCI HAR Dataset/features.txt')
str(features) # Features list is in second column of features data frame
mean_sd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x_mean_sd <- x[, mean_sd]

# Give descriptive activity names to name the activities in the data set.

names(x_mean_sd) <- features[mean_sd, 2]
colnames(y) <- "Activity"
colnames(subject) <- "Subject"

activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
str(activity_labels) # Labels are in second column of activity_names data frame

y[,1] = activity_labels[y[,1],2]

# Merge X, Y, subject datasets into complete dataset.

UCI_data <- cbind(subject, y, x_mean_sd)
str(UCI_data)

# Appropriately labels the data set with descriptive variable names.

names(UCI_data) <- gsub("^t", "time", names(UCI_data))
names(UCI_data) <- gsub("Acc", "Accelerometer", names(UCI_data))
names(UCI_data) <- gsub("Gyro", "Gyroscope", names(UCI_data))
names(UCI_data) <- gsub("Mag", "Magnitude", names(UCI_data))
names(UCI_data) <- gsub("^f", "frequency", names(UCI_data))
names(UCI_data) <- gsub("BodyBody", "Body", names(UCI_data))
names(UCI_data) <- gsub("mean\\(\\)", "Mean", names(UCI_data))
names(UCI_data) <- gsub("std\\(\\)", "SD", names(UCI_data))
names(UCI_data) <- gsub("\\-", "", names(UCI_data))

names(UCI_data)

# Create a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

library(dplyr)

avg_data <- aggregate(. ~Subject + Activity, UCI_data, mean)
avg_data <- avg_data[order(avg_data$Subject, avg_data$Activity),]

write.table(avg_data, file = "tidy_UCI_avg_data.txt", sep = "\t", row.names = FALSE)
