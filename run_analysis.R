# This script reads test and training data sets from Human Activity Recognition using smartphones.
# Creates a single dataset from test and training data, also incuding the subject and activity details 
# Selects the required data(mean and standard deviation for each measurement) for future analysis
# Tidies the data by 
#       -replacing activity number with their corresponding labels
#       -renaming columns with meaningful names
# Creates a tidy dataset that summarises the means of all the measurements for each subject and each activity

# Load required libraries
library(data.table)
library(tidyr)
library(dplyr)

# Read Subject(subject_test), Activity(Y_test) and other measurement values(X_test) from test data
subject_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")

# Read Subject(subject_train), Activity(Y_train) and other measurement values(X_train) from train data
subject_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

# Add test_subject and test_activity as new columns to the test measurement values
test_data <- mutate(subject = as.numeric(subject_test$V1), activity = as.numeric(Y_test$V1), X_test)

# Add train_subject and train_activity as new columns to the train measurement values
train_data <- mutate(subject = as.numeric(subject_train$V1), activity = as.numeric(Y_train$V1), X_train)

# Combine the test and train datasets into a single dataset
data <- rbind_list(test_data, train_data)

# Read features into a dataframe
features <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")

# Tidy the feature names by removing '()'
featureNames <- gsub("\\(\\)", "", features$V2)

# Select the required columns
#       -mean and standard deviation of measurements
#       -subject(Column 562)
#       -activity(Column 563)
# Note: not selecting meanFreq - considering it is not the same as mean
requiredcolumns <- grep("(-mean-)|(-mean$)|(-std-)|(-std$)", featureNames)
requiredcolumns <- c(requiredcolumns,562,563)
requiredData <- data[,requiredcolumns]

# Tidy dataset by replacing numbers with labels in activity column
# Read activity labels
activity_labels <-  read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
# Change the activity to a factor variable and set the levels to descriptive labels
requiredData$activity <- factor(requiredData$activity)
levels(requiredData$activity) <- activity_labels$V2

# Change column names from V1, V2... to descriptive names using tidied feature names from features.txt
columnNames <- grep("(-mean-)|(-mean$)|(-std-)|(-std$)", featureNames, value = TRUE)
columnNames <- c(columnNames, "subject", "activity")
names(requiredData) <- columnNames

# Grouing data by subject first(considering it as primary id) and then by activity
groupedData <- group_by(requiredData, subject, activity)

# Summarise grouped data with means for all the columns (except subject and activity by which data is grouped)
summarisedData <- summarise_each(groupedData, funs(mean))

# Write tidy summarised data set to a txt file
write.table(summarisedData, "Summarised_Data.txt", row.name = FALSE)

print(summarisedData)

