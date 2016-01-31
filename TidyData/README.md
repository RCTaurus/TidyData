#TidyData
 
Assignment - TidyData set for Movements data from Samsung Galaxy S

This document contains instructinos to create a tidy Data set for the given data.

#OverView

This Repo contains the script R_Analysis.R which would write a tidy data set in the currenct directory. This script assumes that you are in the UCI HAR Dataset extracted from the ZIP file.

Contents of the UCI HAR Folder: Features.txt : This is the file which has information on the variables used for recording the data during training and testing.

Activity_labels.txt : This file contains the activities performed during the test and training.

Folder Training: This folder contains the information regarding the data collected during the tests. The major files are x_test.txt: This file has the readings on variables specified in the features.txt file y_test.txt : This file has the code for activity performed during the test. subject_test.txt: this file contains the information about the subjects who took the test.

Folder Training : This folder contains the data recorded during the trainings before the test. x_train.txt : this file containss the variables that were being recorded with every activity. the information regarding the variables is listed in features.txt y_train.txt: this file contains the activities that were performed during the training. subject_train.txt: this file contains the information regarding the subject who performed the training.

#How Script works: 
The script would read the data from the test and training data from the relevant files: x_test, y_test, x_train,y_train. 
Next the script reads the features file to get the names of the variables in x_test and x_train files. 
Read the activity file to get the activities mapping. 
Next, get the information about the subjects who did the training and underwent the test. 
The Script then renames the variables in x_test and x_train files as per the information from features file. 
Then the script maps the activities performed furing the test and training using the mapping in activity_label file. 
Update the subject files in train and test to include the information about the activities performed. 
Then the script filters the relevant coulmns from the training and test data to be restricted to Mean and STD variables.

Then the script merges the subject information and the test and training filtered data separately. 
And then the train and test data are merged into one data set. 
The script then summarizes the data from the merged training and test data set based on the subject and the activity performed by the suibject taking an average of all other variables.
The Script then creates a file with this summarized dat.
