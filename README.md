# run_analysis.R
## Description
run_analysis.R expects the UCI HAR dataset to be in the current working directory.

The script performs the following steps:

1. Read "features.txt".  This file is used to provide descriptive column names.
1. Read the test set (X_test.txt), taking column names from the features set, and then combining the subject (subject_test.txt) and activity (y_test.txt) data into additional columns.
1. The same process is applied for the training set.
1. The two sets are then merged together.
1. The activity descriptions (activity.txt) are merged in.
1. The data set is reduced to only columns that are means or standard deviations.  This is done by looking for columns that were originally named like mean() or std().
1. The data is then grouped by subject and activity, with all columns summarised by the mean function.  I know, averaging averages right!?!  But it seems that's what the assignment asked for.

The resulting tidy data set is written to tidy_set.txt and is also available in the variable tidy_set for use after the script has executed.

## Code Book

The following sections describe the fields of tidy_set (eg. subject refers to tidy_set$subject).

### subject
An integer that uniquely identifies the test subject (1-30).

### activity
A factor that describes the activity of the test subject.  One of 6 levels:

* LAYING            
* SITTING           
* STANDING            
* WALKING 
* WALKING_DOWNSTAIRS 
* WALKING_UPSTAIRS 

### tBodyAcc.mean...X
Mean of tBodyAcc-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyAcc.mean...Y
Mean of tBodyAcc-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyAcc.mean...Z
Mean of tBodyAcc-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyAcc.std...X
Mean of tBodyAcc-std()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyAcc.std...Y
Mean of tBodyAcc-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyAcc.std...Z
Mean of tBodyAcc-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.mean...X
Mean of tGravityAcc-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.mean...Y
Mean of tGravityAcc-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.mean...Z
Mean of tGravityAcc-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.std...X
Mean of tGravityAcc-std()-X from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.std...Y
Mean of tGravityAcc-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### tGravityAcc.std...Z
Mean of tGravityAcc-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.mean...X
Mean of tBodyAccJerk-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.mean...Y
Mean of tBodyAccJerk-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.mean...Z
Mean of tBodyAccJerk-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.std...X
Mean of tBodyAccJerk-std()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.std...Y
Mean of tBodyAccJerk-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerk.std...Z
Mean of tBodyAccJerk-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.mean...X
Mean of tBodyGyro-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.mean...Y
Mean of tBodyGyro-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.mean...Z
Mean of tBodyGyro-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.std...X
Mean of tBodyGyro-std()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.std...Y
Mean of tBodyGyro-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyro.std...Z
Mean of tBodyGyro-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.mean...X
Mean of tBodyGyroJerk-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.mean...Y
Mean of tBodyGyroJerk-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.mean...Z
Mean of tBodyGyroJerk-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.std...X
Mean of tBodyGyroJerk-std()-X from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.std...Y
Mean of tBodyGyroJerk-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerk.std...Z
Mean of tBodyGyroJerk-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccMag.mean..
Mean of tBodyAccMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccMag.std..
Mean of tBodyAccMag-std() from the original UCI HAR dataset, over the given operator and activity.

### tGravityAccMag.mean..
Mean of tGravityAccMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### tGravityAccMag.std..
Mean of tGravityAccMag-std() from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerkMag.mean..
Mean of tBodyAccJerkMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### tBodyAccJerkMag.std..
Mean of tBodyAccJerkMag-std() from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroMag.mean..
Mean of tBodyGyroMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroMag.std..
Mean of tBodyGyroMag-std() from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerkMag.mean..
Mean of tBodyGyroJerkMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### tBodyGyroJerkMag.std..
Mean of tBodyGyroJerkMag-std() from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.mean...X
Mean of fBodyAcc-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.mean...Y
Mean of fBodyAcc-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.mean...Z
Mean of fBodyAcc-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.std...X
Mean of fBodyAcc-std()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.std...Y
Mean of fBodyAcc-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyAcc.std...Z
Mean of fBodyAcc-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.mean...X
Mean of fBodyAccJerk-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.mean...Y
Mean of fBodyAccJerk-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.mean...Z
Mean of fBodyAccJerk-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.std...X
Mean of fBodyAccJerk-std()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.std...Y
Mean of fBodyAccJerk-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccJerk.std...Z
Mean of fBodyAccJerk-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.mean...X
Mean of fBodyGyro-mean()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.mean...Y
Mean of fBodyGyro-mean()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.mean...Z
Mean of fBodyGyro-mean()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.std...X
Mean of fBodyGyro-std()-X from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.std...Y
Mean of fBodyGyro-std()-Y from the original UCI HAR dataset, over the given operator and activity.

### fBodyGyro.std...Z
Mean of fBodyGyro-std()-Z from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccMag.mean..
Mean of fBodyAccMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### fBodyAccMag.std..
Mean of fBodyAccMag-std() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyAccJerkMag.mean..
Mean of fBodyBodyAccJerkMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyAccJerkMag.std..
Mean of fBodyBodyAccJerkMag-std() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyGyroMag.mean..
Mean of fBodyBodyGyroMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyGyroMag.std..
Mean of fBodyBodyGyroMag-std() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyGyroJerkMag.mean..
Mean of fBodyBodyGyroJerkMag-mean() from the original UCI HAR dataset, over the given operator and activity.

### fBodyBodyGyroJerkMag.std..
Mean of fBodyBodyGyroJerkMag-std() from the original UCI HAR dataset, over the given operator and activity.
