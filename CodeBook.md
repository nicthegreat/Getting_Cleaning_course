CODEBOOK



R Objects
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
