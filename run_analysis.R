
#### Prerequisites. Read raw data
x_train <- read.table("SourceData/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("SourceData/UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("SourceData/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("SourceData/UCI HAR Dataset/test/y_test.txt")
subject_train<-read.table("SourceData/UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("SourceData/UCI HAR Dataset/test/subject_test.txt")
features<-read.table("SourceData/UCI HAR Dataset/features.txt")
labels<-read.table("SourceData/UCI HAR Dataset/activity_labels.txt")


#### Task 1. Merges the training and the test sets to create one data set.
## Bind subject and label
trainSample<-cbind(x_train, subject_train, y_train)
testSample<-cbind(x_test, subject_test, y_test)

## Merge train and test dataset into one
combinedSample <- rbind(trainSample,testSample)


#### Task 2. Extract only the measurements on the mean and standard deviation for each measurement

## Tidy up "features": remove brackets, commas and hyphens only for those considered
features_tidy <- features
features_tidy$V2 <- gsub("\\-", "_", features_tidy$V2)
features_tidy$V2 <- gsub("\\,", "_", features_tidy$V2)
features_tidy$V2 <- gsub("mean\\(\\)", ".mean", features_tidy$V2)
features_tidy$V2 <- gsub("std\\(\\)", ".std", features_tidy$V2)
features_tidy$V2 <- gsub("\\(\\)", "_", features_tidy$V2)
features_tidy$V2 <- gsub("\\(", ".", features_tidy$V2)
features_tidy$V2 <- gsub("\\)", ".", features_tidy$V2)

## Assign colimn names to dataframe
names(combinedSample)<-c(features_tidy$V2, "subject", "label")

features_meanstd<-grepl("\\.mean",features_tidy$V2) | grepl("\\.std",features_tidy$V2)
combinedSample_scoped <- combinedSample[,features_meanstd]

#### Task 3. Use descriptive activity names to name the activities in the data set
names(labels)<-c("label", "descr")
combinedSample_scoped<-merge(combinedSample_scoped,labels, by="label")

#### Task 4. Appropriately labels the data set with descriptive variable names
## Eventually this has been done previously in tasks 2

#### Task 5. From the data set in step 4, creates a second, independent tidy data set 
#### with the average of each variable for each activity and each subject
library(plyr)
res<-ddply(combinedSample_scoped, .(label, descr, subject), colwise(mean))

## Save the result
write.table(res, "result.txt")

