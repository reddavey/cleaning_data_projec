### Introduction

The README describes the files that comprise the analysis of the UCI Human Activies Recognition Using Smartphones Dataset [1] created for the Coursera _Getting and Cleaning Data_ course project.

[1]  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

To create the analysis dataset the UCI HAR dataset is required. It can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run the analysis unzip the dataset and place the script "run_analysis.R" in the 'UCI HAR Dataset' folder.

#### Files

* run_analysis.R
  
   The R script joins the 'test' and 'train' _features_ data and adds variable names using the 'features.txt' files. Variable names are modified to correct errors and adjust the value for readability. A subset of the _standard deviation_ and _mean_ features is extracted.
   
   The 'test' and 'train' _activities_ data is then combined and the numeric ids for the activities are renamed using the 'activities_labels.txt' map.
   
   The 'test' and 'train' _subjects_ data is combined and joined with the features data subset and activites data.
   
   Lastly, a new dataset is created by calculating the mean of each feature, by activity and subject. This data is written to the file 'means_of_activities.txt'
   
* CodeBook.md

  Contains more detail on the data manipulation and describes the variables contained in the 'means_of_activities.txt' dataset.
  
* READMD.md

  This file.
