# Getting_Cleaning_course
Repo for solution to the Coursera's "Getting And Cleaning Data" Course Project

The Course Project works with the "Human Activity Recognition Using Smartphones Dataset" from the UCI Machine Learning Repository. A description of the dataset can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The dataset can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Repo explains how run_analysis.R works.
1) Merges the training and the test sets to create one data set.
First reads all activity, feature_label, train and test data
Then appends test data to train data to output full_data
Header names adopted from features.txt.  subject and activity naming independent

2) Extract only measurements on mean and standard deviation
Extract just the columns that contain Mean/mean and std, along with subject and activity

3) Use descriptive activities names for activity measurements
Replaced values in activity column with string containing activity names

4) Appropriately labels the data set with descriptive variable names
Cleaned up variables names by removing punctuation, abbreviations and introducing underscore separators

5) Create tidy data set with average of each variable, by activity, by subject
Created a tidy dataset following tidy principles.  Dataset contains 180 observations (group by 6 activities, 30 subjects) and calculates mean across subsetted variables
