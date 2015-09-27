# 0.Set All Libraries (Installation of packages may be needed if being used for the first time)
library(dplyr)
library(plyr)
library(Hmisc)

# 1.Merges the training and the test sets to create one data set.

# 1.0 Set the working dir and read the activity label and feature files
setwd("~/Documents/Data Science/RCodes/mo3/Week3/tidy-data-assignment/")
activity_label<-read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)
features<-read.table("UCI HAR Dataset/features.txt",header=FALSE)

# 1.1 read test data
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
##dim(subject_test)
x_test<-read.table("UCI HAR Dataset/test/x_test.txt",header=FALSE)
##dim(x_test)
y_test<-read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
##dim(y_test)

# 1.2name the columns for test data
colnames(activity_label)<-c("activityID","activityName") #same for train data
colnames(subject_test)<-"SubjectID" 
colnames(x_test)<-features[,2]
colnames(y_test)<-"activityID"

# 1.3 join test data by cbind
test_join1<-cbind(subject_test,y_test,x_test)
##dim(test_join1)

# 1.4 replace activity ID with activity name
test_join2<-merge(test_join1,activity_label,by.x="activityID",by.y = "activityID") #merge by activity name
test_all<-test_join2[,2:564] #delete activity ID
##dim(test_all)
##names(test_all)


# 1.5 read train data
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
##dim(subject_train)
x_train<-read.table("UCI HAR Dataset/train/x_train.txt",header=FALSE)
##dim(x_train)
y_train<-read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)
##dim(y_train)

# 1.6 name test columns
colnames(subject_train)<-"SubjectID" 
colnames(x_train)<-features[,2]
colnames(y_train)<-"activityID"

# 1.7 join train data by cbind
train_join1<-cbind(subject_train,y_train,x_train)
##dim(train_join1)

# 1.8 replace activity ID with activity name
train_join2<-merge(train_join1,activity_label,by.x="activityID",by.y = "activityID") #merge by activity name
train_all<-train_join2[,2:564] #delete activity ID
#dim(train_all)
#names(train_all)

# 1.9 Join test & train data
all_data<-rbind(test_all,train_all)
##dim(all_data)
names(all_data)
#str(all_data)




# 2. Extracts only the measurements on the mean and standard deviation for each measurement

filter_data1<-all_data[,grepl("SubjectID|mean|std|activityName",colnames(all_data))]
filter_data<-filter_data1[c(1,81,2:80)]  #reorder to have subject ID, Activity Name and Measurement variables
#dim(filter_data)
names(filter_data)
##head(filter_data)

# 3. Uses descriptive activity names to name the activities in the data set
# completed in 1.4 & 1.8 above

# 4. Appropriately labels the data set with descriptive variable names. 
names(filter_data)<-gsub("Acc", "Accelerometer", names(filter_data))
names(filter_data)<-gsub("Gyro", "Gyroscope", names(filter_data))
names(filter_data)<-gsub("BodyBody", "Body", names(filter_data))
names(filter_data)<-gsub("Mag", "Magnitude", names(filter_data))
names(filter_data)<-gsub("^t", "Time", names(filter_data))
names(filter_data)<-gsub("^f", "Frequency", names(filter_data))
names(filter_data)<-gsub("tBody", "TimeBody", names(filter_data))
names(filter_data)<-gsub("-mean()", "Mean", names(filter_data), ignore.case = TRUE)
names(filter_data)<-gsub("-std()", "STD", names(filter_data), ignore.case = TRUE)
names(filter_data)<-gsub("-freq()", "Frequency", names(filter_data), ignore.case = TRUE)
names(filter_data)<-gsub("angle", "Angle", names(filter_data))
names(filter_data)<-gsub("gravity", "Gravity", names(filter_data))

# 5. Take average for each subject and each activity
filter_data$SubjectID<-as.factor(filter_data$SubjectID)
tidy_data<-aggregate(.~SubjectID + activityName,filter_data,mean)
write.table(tidy_data,file="tidy_data.txt",row.names = FALSE)
dim(tidy_data)
names(tidy_data)