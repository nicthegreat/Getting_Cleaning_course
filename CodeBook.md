CODEBOOK

# DATA & DATA SOURCE DESCRIPTION
Repo for solution to the Coursera's "Getting And Cleaning Data" Course Project

The Course Project works with the "Human Activity Recognition Using Smartphones Dataset" from the UCI Machine Learning Repository. A description of the dataset can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The dataset can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

# METHOD DESCRIPTION
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

Created a tidy dataset following tidy principles.  

Dataset contains 180 observations (group by 6 activities, 30 subjects) and calculates mean across subsetted variables


# DESCRIPTION OF R Objects and Variables
activity_labels = six activity codes and corresponding activity names
features = feature names for X_test, X_train

Subject_train = train set subject number, 1-30
X_train = train set feature measurements
y_train = train set activity, coded 1-6

subject_test = test set subject number, 1-30
X_test = test set feature measurements
y_test = test set activity, coded 1-6

train_data = subject_train, X_train, y_train appended by columns
test_data = subject_test, X_test, y_test appended by columns
full_data = train_data, test_data combined by rows

Variables: Column names
headerNames = set of names corresponding to full_data
subsetColumns = subset of subject, activity, and features containing mean or standard deviation in name
subset_data = full_data subsetted by subsetColumns
descriptive = headerNames that has been cleaned up

Variables: Tidy data set
tidy_dataset = data set with average of each variable grouped by activity, by subject
