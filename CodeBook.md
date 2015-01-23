### Introduction

This is the codebook for the analyzed data subset created from the Human Activity Recognition Using Smartphones Dataset, Version 1.0. Reference *Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

The subset contains the means of the 'mean' and 'standard deviation' values per feature, from the original datasets, grouped by activity and subject.

The subset was created by merging the training and test measurement datasets for featuress (test/X_test.txt, train.X_train.txt), activities (test/y_test.txt, train/y_train.txt), and subjects (test/subjects_test.txt, train/subjects_train.txt) into three separate data frames.

The numeric activity indentifiers were mapped to an activity-label using the file 'activities_labels.txt'.

The 'features' in 'features.txt' were used to create column names for the features data. A subset of the features data was created by selecting the columns that were either a mean or standard deviation value feature. Column names were modified to be more readable by removing empty parentheses, replacing '-' with '.' and fixing a typo in a set of features with a duplicate 'Body' string (i.e., fBodyBody -> fBody).

The subjects, activities and features data frames were then merged to create a single dataset. This dataset was then processed to create the final dataset with the mean for each feature, by activity and subject.

### Variables

* __Subject__
    + Integer identifier for each subject carrying out the experiments; 30 subjects.

* __Activity__
    + Activity being performed by subject for measurements. Values are:
        + WALKING: Just walking
        + WALKING_UPSTAIRS: Walking up stairs
        + WALKING_DOWNSTAIRS: Walking down stairs
        + SITTING: Sitting down
        + STANDING: Standing up
        + LAYING: Lying down

#### Linear Acceleration (time domain)

* __tBodyAcc.mean.X__
    + Mean of the linear-acceleration means in the X axis, for an activity and subject. 
* __tBodyAcc.mean.Y__
    + Mean of the linear-acceleration means in the Y axis, for an activity and subject. 
* __tBodyAcc.mean.Z__
    + Mean of the linear-acceleration means in the Z axis, for an activity and subject. 
* __tBodyAcc.std.X__
    + Mean of the linear-acceleration standard-deviations in the X axis, for an activity and subject. 
* __tBodyAcc.std.Y__
    + Mean of the linear-acceleration standard-deviations in the Y axis, for an activity and subject. 
* __tBodyAcc.std.Z__
    + Mean of the linear-acceleration standard-deviations measurements in the Z axis, for an activity and subject. 

#### Gravity Acceleration (time domain)

* __tGravityAcc.mean.X__
    + Mean of the gravitational-acceleration means in the X axis, for an activity and subject.
* __tGravityAcc.mean.Y__
    + Mean of the gravitational-acceleration means in the Y axis, for an activity and subject.
* __tGravityAcc.mean.Z__
    + Mean of the gravitational-acceleration means in the Z axis, for an activity and subject.
* __tGravityAcc.std.X__ 
    + Mean of the gravitational-acceleration standard-deviations in the X axis, for an activity and subject.
* __tGravityAcc.std.Y__
    + Mean of the gravitational-acceleration standard-deviations in the Y axis, for an activity and subject.
* __tGravityAcc.std.Z__
    + Mean of the gravitational-acceleration standard-deviations in the Z axis, for an activity and subject.
    
#### Linear Jerk (time domain)

* __tBodyAccJerk.mean.X__
    + The mean of the linear-jerk-signal means in the X axis, for an activity and subject.
* __tBodyAccJerk.mean.Y__
    + The mean of the linear-jerk-signal means in the Y axis, for an activity and subject.
* __tBodyAccJerk.mean.Z__
    + The mean of the linear-jerk-signal means in the Z axis, for an activity and subject.
* __tBodyAccJerk.std.X__
    + The mean of the linear-jerk-signal standard-deviations in the X axis, for an activity and subject.
* __tBodyAccJerk.std.Y__
    + The mean of the linear-jerk-signal standard-deviations in the Y axis, for an activity and subject.
* __tBodyAccJerk.std.Z__
    + The mean of the linear-jerk-signal standard-deviations in the Z axis, for an activity and subject.

#### Angular Velocity (time domain)

* __tBodyGyro.mean.X__
    + The mean of the angular-velocity means in the X axis, for an activity and subject.
* __tBodyGyro.mean.Y__
    + The mean of the angular-velocity means in the Y axis, for an activity and subject.
* __tBodyGyro.mean.Z__
    + The mean of the angular-velocity means in the Z axis, for an activity and subject.
* __tBodyGyro.std.X__
    + The mean of the angular-velocity standard-deviations in the X axis, for an activity and subject.
* __tBodyGyro.std.Y__
    + The mean of the angular-velocity standard-deviations in the Y axis, for an activity and subject.
* __tBodyGyro.std.Z__
    + The mean of the angular-velocity standard-deviations in the Z axis, for an activity and subject.

#### Angular Jerk  (time domain)

* __tBodyGyroJerk.mean.X__
    + The mean of the angular-jerk-signal means in the X axis, for an activity and subject.
* __tBodyGyroJerk.mean.Y__
    + The mean of the angular-jerk-signal means in the Y axis, for an activity and subject.
* __tBodyGyroJerk.mean.Z__
    + The mean of the angular-jerk-signal means in the Z axis, for an activity and subject.
* __tBodyGyroJerk.std.X__
    + The mean of the angular-jerk-signal standard-deviations in the X axis, for an activity and subject.
* __tBodyGyroJerk.std.Y__
    + The mean of the angular-jerk-signal standard-deviations in the Y axis, for an activity and subject.
* __tBodyGyroJerk.std.Z__
    + The mean of the angular-jerk-signal standard-deviations in the Z axis, for an activity and subject.

#### Magnitudes (time domain)

* __tBodyAccMag.mean__
    + The mean of the linear-acceleration-magnitude means, for an activity and subject.
* __tBodyAccMag.std__
    + The mean of the linear-acceleration-magnitude standard-deviations, for an activity and subject.
* __tGravityAccMag.mean__
    + The mean of the gravitational-acceleration-magnitude means, for an activity and subject.
* __tGravityAccMag.std__
    + The mean of the gravitational-acceleration-magnitude standard-deviations, for an activity and subject.
* __tBodyAccJerkMag.mean__
    + The mean of the linear-jerk-signal-magnitude means, for an activity and subject.
* __tBodyAccJerkMag.std__
    + The mean of the linear-jerk-signal-magnitude standard-deviations, for an activity and subject.
* __tBodyGyroMag.mean__
    + The mean of the angular-velocity-magnitude mean measurements, for an activity and subject.
* __tBodyGyroMag.std__
    + The mean of the angular-velocity-magnitude standard-deviations, for an activity and subject.
* __tBodyGyroJerkMag.mean__
    + The mean of the angular-jerk-magnitude mean measurements, for an activity and subject.
* __tBodyGyroJerkMag.std__
    + The mean of the angular-jerk-magnitude standard-deviations, for an activity and subject.

---

#### Linear Acceleration (frequency domain)

* __fBodyAcc.mean.X__
    + Mean of the linear-acceleration means in the X axis, for an activity and subject. 
* __fBodyAcc.mean.Y__
    + Mean of the linear-acceleration means in the Y axis, for an activity and subject. 
* __fBodyAcc.mean.Z__
    + Mean of the linear-acceleration means in the Z axis, for an activity and subject. 
* __fBodyAcc.std.X__
    + Mean of the linear-acceleration standard-deviations in the X axis, for an activity and subject. 
* __fBodyAcc.std.Y__
    + Mean of the linear-acceleration standard-deviations in the Y axis, for an activity and subject. 
* __fBodyAcc.std.Z__
    + Mean of the linear-acceleration standard-deviations measurements in the Z axis, for an activity and subject. 

#### Gravity Acceleration (frequency domain)

* __fGravityAcc.mean.X__
    + Mean of the gravitational-acceleration means in the X axis, for an activity and subject.
* __fGravityAcc.mean.Y__
    + Mean of the gravitational-acceleration means in the Y axis, for an activity and subject.
* __fGravityAcc.mean.Z__
    + Mean of the gravitational-acceleration means in the Z axis, for an activity and subject.
* __fGravityAcc.std.X__ 
    + Mean of the gravitational-acceleration standard-deviations in the X axis, for an activity and subject.
* __fGravityAcc.std.Y__
    + Mean of the gravitational-acceleration standard-deviations in the Y axis, for an activity and subject.
* __fGravityAcc.std.Z__
    + Mean of the gravitational-acceleration standard-deviations in the Z axis, for an activity and subject.
    
#### Linear Jerk (frequency domain)

* __fBodyAccJerk.mean.X__
    + The mean of the linear-jerk-signal means in the X axis, for an activity and subject.
* __fBodyAccJerk.mean.Y__
    + The mean of the linear-jerk-signal means in the Y axis, for an activity and subject.
* __fBodyAccJerk.mean.Z__
    + The mean of the linear-jerk-signal means in the Z axis, for an activity and subject.
* __fBodyAccJerk.std.X__
    + The mean of the linear-jerk-signal standard-deviations in the X axis, for an activity and subject.
* __fBodyAccJerk.std.Y__
    + The mean of the linear-jerk-signal standard-deviations in the Y axis, for an activity and subject.
* __fBodyAccJerk.std.Z__
    + The mean of the linear-jerk-signal standard-deviations in the Z axis, for an activity and subject.

#### Angular Velocity (frequency domain)

* __fBodyGyro.mean.X__
    + The mean of the angular-velocity means in the X axis, for an activity and subject.
* __fBodyGyro.mean.Y__
    + The mean of the angular-velocity means in the Y axis, for an activity and subject.
* __fBodyGyro.mean.Z__
    + The mean of the angular-velocity means in the Z axis, for an activity and subject.
* __fBodyGyro.std.X__
    + The mean of the angular-velocity standard-deviations in the X axis, for an activity and subject.
* __fBodyGyro.std.Y__
    + The mean of the angular-velocity standard-deviations in the Y axis, for an activity and subject.
* __fBodyGyro.std.Z__
    + The mean of the angular-velocity standard-deviations in the Z axis, for an activity and subject.

#### Angular Jerk  (frequency domain)

* __fBodyGyroJerk.mean.X__
    + The mean of the angular-jerk-signal means in the X axis, for an activity and subject.
* __fBodyGyroJerk.mean.Y__
    + The mean of the angular-jerk-signal means in the Y axis, for an activity and subject.
* __fBodyGyroJerk.mean.Z__
    + The mean of the angular-jerk-signal means in the Z axis, for an activity and subject.
* __fBodyGyroJerk.std.X__
    + The mean of the angular-jerk-signal standard-deviations in the X axis, for an activity and subject.
* __fBodyGyroJerk.std.Y__
    + The mean of the angular-jerk-signal standard-deviations in the Y axis, for an activity and subject.
* __fBodyGyroJerk.std.Z__
    + The mean of the angular-jerk-signal standard-deviations in the Z axis, for an activity and subject.

#### Magnitudes (frequency domain)

* __fBodyAccMag.mean__
    + The mean of the linear-acceleration-magnitude means, for an activity and subject.
* __fBodyAccMag.std__
    + The mean of the linear-acceleration-magnitude standard-deviations, for an activity and subject.
* __fGravityAccMag.mean__
    + The mean of the gravitational-acceleration-magnitude means, for an activity and subject.
* __fGravityAccMag.std__
    + The mean of the gravitational-acceleration-magnitude standard-deviations, for an activity and subject.
* __fBodyAccJerkMag.mean__
    + The mean of the linear-jerk-signal-magnitude means, for an activity and subject.
* __fBodyAccJerkMag.std__
    + The mean of the linear-jerk-signal-magnitude standard-deviations, for an activity and subject.
* __fBodyGyroMag.mean__
    + The mean of the angular-velocity-magnitude mean measurements, for an activity and subject.
* __fBodyGyroMag.std__
    + The mean of the angular-velocity-magnitude standard-deviations, for an activity and subject.
* __fBodyGyroJerkMag.mean__
    + The mean of the angular-jerk-magnitude mean measurements, for an activity and subject.
* __fBodyGyroJerkMag.std__
    + The mean of the angular-jerk-magnitude standard-deviations, for an activity and subject.
