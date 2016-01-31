#Rajan File Update
# Read the files into R variables
# Do not read the files again if they have been read once, save yourself some time.
if (!exists("x_test")) {x_test<- read.table("./test/x_test.txt")}
if (!exists("y_test")) {y_test<- read.table("./test/y_test.txt")}
if (!exists("x_train")) {x_train<- read.table("./train/x_train.txt")}
if (!exists("y_train")) {y_train<- read.table("./train/y_train.txt")}
features <- read.table("./features.txt")
activity <- read.table("./activity_labels.txt")
subject_train<- read.table("./train/subject_train.txt")
subject_test<- read.table("./test/subject_test.txt")


# Rename the variables to their names from the feature file.
names(x_train) <- features$V2
names(x_test) <- features$V2

# Map the training and testing activities the activities name.
y_train_activity <- merge(x=y_train, y=activity)
y_test_activity  <-merge(x=y_test, y=activity)

# Merge the Activity with the subject data
subject_test$activity <- y_test_activity$V2
subject_train$activity <- y_train_activity$V2

#Rename the subject table to have meaninngful column names
names(subject_test) <- c("subject","activity")
names(subject_train) <- c("subject","activity")

# Filter the variables to be limited to Mean and standard deviation variables only.
x_test_filtered<- x_test[,grep("mean\\()$|std\\()$", names(x_test))]
x_train_filtered<- x_train[,grep("mean\\()$|std\\()$", names(x_train))]

# Merge the subject and Activity data with the filtered test/train data.
x_test_complete <- cbind(subject_test,x_test_filtered)
x_train_complete <- cbind(subject_train,x_train_filtered)

# Merge the training and test data.
total <- rbind(x_train_complete, x_test_complete)

# Summarize the merged data based on subject and activity.
total_summary<-aggregate(.~subject+activity, total,FUN=mean)

#Write the resulting data set as tidydata.txt
write.table(total_summary,"./tidydata.txt",row.names=FALSE, sep="\t")

