# Step 1: Merges the training and the test sets to create one data set.
trainData <- read.table("./train/X_train.txt")
trainLabel <- read.table("./train/y_train.txt")
trainSubject <- read.table("./train/subject_train.txt")
testData <- read.table("./test/X_test.txt")
testLabel <- read.table("./test/y_test.txt")
testSubject <- read.table("./test/subject_test.txt")
joinData <- rbind(trainData, testData)
joinLabel <- rbind(trainLabel, testLabel)
joinSubject <- rbind(trainSubject, testSubject)
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")
colnames(joinData) <- features[,2] 
sub_joinData<-joinData[ , grepl( "mean|std" , names( joinData ) ) & !grepl("meanFreq",names( joinData))]
# Step 3: Uses descriptive activity names to name the activities in the data set
activity <- read.table("activity_labels.txt")
# We need to install the package plyr in order to use the join function
install.packages("plyr")
# if the file is run in R, the user may need to chose a mirror
library(plyr)
list_activity<-join(activity,joinLabel,type="right")
revsub_joinData<-cbind(list_activity[,2],sub_joinData)
# Step 4: Appropriately labels the data set with descriptive variable names
# The name of the column providing the activity should be improved to read "Activity"
names(revsub_joinData)[names(revsub_joinData) == 'list_activity[, 2]'] <- 'Activity'
rev1sub_joinData<-cbind(joinSubject,revsub_joinData)
# The name of the column providing the subject should be improved to read "Subject"
names(rev1sub_joinData)[names(rev1sub_joinData) == 'V1'] <- 'Subject'
# Step 5: From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject
mydata<-(aggregate(rev1sub_joinData[,3:68],list(Subject = rev1sub_joinData$Subject,Activity = rev1sub_joinData$Activity),mean))
# To order the file by Subject
mydata<-mydata[order(mydata$Subject),] 
write.table(mydata, "data_means.txt",row.name=FALSE) # write out the data