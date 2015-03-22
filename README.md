# Coursera - Getting and Cleaning Data - Course Project
## Data capturing process
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Purpose of the script
`run_analysis.R` tidies up and aggregates the data collected from the accelerometers from the Samsung Galaxy S smartphone

## Packages
Make sure package plyr is installed 

## How to use
1. Clone this repository into your R working directory
2. Upload data set from [Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to SourceData folder and unzip
3. Run script `run_analysis.R`

## How it works
1. Reads raw data from the files
```{r}
x_train <- read.table("SourceData/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("SourceData/UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("SourceData/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("SourceData/UCI HAR Dataset/test/y_test.txt")
subject_train<-read.table("SourceData/UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("SourceData/UCI HAR Dataset/test/subject_test.txt")
features<-read.table("SourceData/UCI HAR Dataset/features.txt")
labels<-read.table("SourceData/UCI HAR Dataset/activity_labels.txt")
```
2. Binds activity subjects and activity labels to train and test data sets
```{r}
trainSample<-cbind(x_train, subject_train, y_train)
testSample<-cbind(x_test, subject_test, y_test)
```
3. Unions train and test data sets into one
```{r}
combinedSample <- rbind(trainSample,testSample)
```
4. Removes brackets, commas and hyphens from column names and assigns column names to `combinedSample` data frame. Measurements on the mean and standard deviation will have specific patterns in the column names such as `.mean` and `.std`
```{r}
features_tidy <- features
features_tidy$V2 <- gsub("\\-", "_", features_tidy$V2)
features_tidy$V2 <- gsub("\\,", "_", features_tidy$V2)
features_tidy$V2 <- gsub("mean\\(\\)", ".mean", features_tidy$V2)
features_tidy$V2 <- gsub("std\\(\\)", ".std", features_tidy$V2)
features_tidy$V2 <- gsub("\\(\\)", "_", features_tidy$V2)
features_tidy$V2 <- gsub("\\(", ".", features_tidy$V2)
features_tidy$V2 <- gsub("\\)", ".", features_tidy$V2)
names(combinedSample)<-c(features_tidy$V2, "subject", "label")
```
5. Adds descriptive activity names to data set
```{r}
names(labels)<-c("label", "descr")
combinedSample_scoped<-merge(combinedSample_scoped,labels, by="label")
```
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
```{r}
library(plyr)
res<-ddply(combinedSample_scoped, .(label, descr, subject), colwise(mean))
```
7. Saves the result in file `result.txt`
```{r}
write.table(res, "result.txt")
```


## Result
Average values of  all mean and standard deviation measurements by subject and activity. Refer to [codebook.md](https://github.com/xls2web/GetDataCP/blob/master/CodeBook.md) for further details. 
