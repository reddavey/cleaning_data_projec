#
# This script processess the data from the "Human Activity Recognition Using Smartphones Data Set".
# The processing results in a tidy data set that contains the mean of the activities, by feature and
# subject.
# 
# Running this script requires that it is in the dataset folder containing the UCI HAR dataset.
# Obtain the dataset from here: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

library(dplyr)

# File containing train features dataset
train_feats <- "./train/X_train.txt"
# File containing train activities dataset
train_acts  <- "./train/Y_train.txt"
# File containing train subjects dataset
train_subjs <- "./train/subject_train.txt"

# File containing test features dataset
test_feats <- "./test/X_test.txt"
# File containing test activities dataset
test_acts  <- "./test/Y_test.txt"
# File containing test subjects dataset
test_subjs <- "./test/subject_test.txt"

# File containing the features labels
feats_file <- "./features.txt"

# File containing the activities dataset
acts_file  <- "./activities.txt"

# File containing the activity to descriptive label map
acts_map_file <- "./activity_labels.txt"

# The output file for the analyzed dataset
analysis_file <- "./means_of_activities.txt"

# Function to cleanup the column names in the dataset
#
# Args:
#    col_names: A character vector of column names
#
# Returns:
#    The cleaned column names. Changes the 'BodyBody' typo to 'Body', changes the
#    '-' characters to '.' and removes the parentheses in the column names.
#
clean_colnames <- function(col_names) {
    # Remove the double 'Body' label
    col_names <- gsub("^fBodyBody", "fBody", col_names)

    # Change '-' to '.'
    col_names <- gsub("-", ".", col_names)

    # Remove '()'
    col_names <- gsub("\\(\\)", "", col_names)
}

# Combine the train and test datasets into one dataset
cat("Combining 'train' and 'test' features datasets into dataframe...\n")
flush.console()
dsAll <- rbind(read.table(train_feats), read.table(test_feats)) 

# Change the column names in the dataset to use the feature names in 'features.txt'
features <- read.table(feats_file)
colnames(dsAll) <- features[[2]]

# Create a new dataset with just the columns that are a mean or standard
# deviation: -mean() or -std().
cat("    Creating subset with only mean and standard deviation attributes...\n\n")
flush.console()
dsNew <- dsAll[,grep("-(mean|std)\\(\\)", colnames(dsAll), ignore.case = TRUE)]

# Read the data for the train and test activities and combine into one dataset
cat("Combining 'train' and 'test' activities datasets into dataframe...\n")
flush.console()
activAll <- rbind(read.table(train_acts), read.table(test_acts))

# Change the activity numeric value to a meaningful value using the labels in 
# 'activity_labels.txt' as a map.
cat("    Mapping activities to activity labels...\n\n")
flush.console()
act_map <- read.table(acts_map_file)
activAll[[1]] <- factor(activAll[[1]], levels = act_map[[1]], labels = act_map[[2]])

# Give the activities column a meaningful name
colnames(activAll) <- c("Activity")

# Create a dataset of the subjects in the study
cat("Combining 'train' and 'test' subjects datasets into dataframe...\n\n")
flush.console()
subjects <- rbind(read.table(train_subjs), read.table(test_subjs))

# Give the subjects column a meaningful name
colnames(subjects) <- c("Subject")

# Add the subjects and activities to the new dataset
cat("Merging activities, subjects and features...\n")
flush.console()
dsNew <- cbind(activAll, dsNew); dsNew <- cbind(subjects, dsNew)

# Cleanup the column names
cat("    Cleaning up the feature column names...\n\n")
flush.console()
colnames(dsNew) <- clean_colnames(colnames(dsNew))

# Get the means for each of the activites features, grouped by subject. Write to a file
cat("Generating analysis...\n")
flush.console()
tbl_df(dsNew) %>% group_by(Subject, Activity) %>% 
    summarise_each(funs(mean), tBodyAcc.mean.X:fBodyGyroJerkMag.std) %>%
    write.table(analysis_file, row.names = FALSE)

# Analysis complete
cat("Analysis complete. Data are stored in file '", analysis_file, "'.\n", sep = "")
