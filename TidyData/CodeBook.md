#CodeBook
x_test : This variable holds the data read from x_test file, which is the data recorded for each movement during the testing phase

y_test : This variable holds the data read from y_test file, which is the data related to the activity performed during the testing phase.

x_train : This variable holds the data read from x_train file, which is the data recorded for each movement during the trainng phase

y_train : This variable holds the data read from y_train file, which is the data related to the activity performed during the training phase.

features : This variable holds the data read from features.txt file, this gives information about the variables that were recorded during the testing and training phase.

activity: This variable holds the data read from the activity_labels.txt file, this gives us information about the code used for the corresponding activty like Walking, Sitting, Laying etc.

Subject_train : This variable holds the data read from the subject_train file, this fives us information about the subject who did the activity during training.

Subject_test : This variable holds the data read from the subject_test file, this fives us information about the subject who did the activity during testing.

y_train_activity : This variable contains the code mapped to names of the activity performed during the training.

y_test_activity  : This variable contains the code mapped to names of the activity performed during the testing.

x_test_filtered : This variable was filtered from the x_test variable. This variable has the data regarding relevant features only- the means and standard deviations.

x_train_filtered : This variable was filtered from the x_train variable. This variable has the data regarding relevant features only- the means and standard deviations.

x_test_complete : This variable merges the filtered data variables from x_test_filtered with the subject and activity information.

x_train_complete: This variable merges the filtered data variables from x_train_filtered with the subject and activity information.


total : This variable merges the training and testing data into one data set.

total_summary: This variable summarizes the total data taking mean of the data points for each activity performed by the subjects.
Finally the script writes this data to the file.
