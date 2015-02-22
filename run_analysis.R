# Sam Lawrance - Getting & Cleaning Data Course Project
# Where you see [n], it refers to the numbered list in the assignment
# description.  Eg. [1] refers to "Merges the training and the test
# sets to create one data set" on the assignment web page.

# dplyr is used for left_join and select functions.
library(dplyr)

# Used for testing... not required for submission.
# setwd("~/Desktop/gcd/UCI HAR Dataset")

# Load the measurement (column) descriptions first.
features <- read.table("features.txt", stringsAsFactors = FALSE)

# Load the test set, taking column names from the "features" table [4],
# and create additional columns for the subject and activity number.
test_set <- read.table("test/X_test.txt", col.names = features[,2])
test_subjects <- read.table("test/subject_test.txt")
test_labels <- read.table("test/y_test.txt")
test_set$subject <- test_subjects[,1]
test_set$activity_number <- test_labels[,1]

# Load the training set, taking column names from the "features" table [4],
# and create additional columns for the subject and activity number.
train_set <- read.table("train/X_train.txt", col.names = features[,2])
train_subjects <- read.table("train/subject_train.txt")
train_labels <- read.table("train/y_train.txt")
train_set$subject <- train_subjects[,1]
train_set$activity_number <- train_labels[,1]

# Load the activity labels and rename the columns for a later merge
# operation with the full set of data.
activity_labels <- read.table("activity_labels.txt", col.names = c("activity_number", "activity"))

# [1] Combine the testing and training sets into a full set of data.
full_set <- rbind(test_set, train_set)

# [3] Join the full dataset with activity_labels to provide descriptive activity
# names in the "activity" column.
full_set <- left_join(full_set, activity_labels, by="activity_number")

# [2] Now select just the data that we want - the subject, a nice description
# of activity, and any columns that contain ".mean." or ".std." - these are
# all of the columns that contain the required measurements.
descriptive_set <- select(full_set, subject, activity,
                            contains(".mean.", ignore.case = FALSE),
                            contains(".std.", ignore.case = FALSE))

# [5] Group by activity and subject, and then use summarise_each to apply
# the mean function across all remaining columns (the measurements).
# This produces a tidy data set with subject, activity, and then the means of
# the supplied measurement data.
grouped_set <- group_by(descriptive_set, subject, activity)
tidy_set <- summarise_each(grouped_set, funs(mean))
