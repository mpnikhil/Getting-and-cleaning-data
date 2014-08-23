library(plyr)

# Read the test and train data
x_test<-read.table("test/x_test.txt")
x_train <- read.table("train/X_train.txt")

# Combine test and train data into one data set (Point 1)
x <- rbind(x_train, x_test)	

# Read features and apply them as column names
features <- read.table("features.txt")
features <- as.vector(features[2])
colnames(x) <- t(features)

# Create a subset by selecting columns for mean and standard deviation 
# based on column names (Point 2)
x_sub <- x[,grep("*std()*|*mean()*", names(x))]

# Read the activity labels
activity_lables <- read.table("activity_labels.txt")

# Read activity codes for test and train data
# and combine them as above
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
y<-rbind(y_train, y_test)
colnames(y) <- c("activity_id")
colnames(activity_lables) <- c("activity_id", "activity")

# Create a data set matching activity codes/ids to activity labels
# by doing an inner join based the activity code/id
y <- join(y, activity_lables, type="inner")

# Extract the activities and add it as a column to the test and train
# data set (Point 3)
activity <- data.frame(y[,2])
colnames(activity) <- c("Activity")
x_sub <- cbind(activity, x_sub)

# Read the subject train and test data and combine them 
# in a single frame just like the test and train data above
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
subject <- rbind(subject_train, subject_test) 
colnames(subject) <- c("Subject")

# Add the subject as a column to the train and test data frame
x_sub <- cbind(subject, x_sub)

# Make the column/variable names more descriptive and easier to read (Point 4)
colnames(x_sub) <- gsub("^t", "Time", colnames(x_sub))
colnames(x_sub) <- gsub("^f", "FFT", colnames(x_sub))
colnames(x_sub) <- gsub("BodyBody", "Body", colnames(x_sub))
colnames(x_sub) <- gsub("-|\\()", "", colnames(x_sub))
colnames(x_sub) <- gsub("mean", "Mean", colnames(x_sub))
colnames(x_sub) <- gsub("std", "Std", colnames(x_sub))

# Melt the data frame based on subject and activity so that 
# all the variables and their values are melted in two columns
# for every combination of subject and activity (Point 5)
library(reshape2)
x_sub_melt<- melt(x_sub, id = c("Subject", "Activity"))

# Cast the molten data and subject+activity as row ids and each variable 
# in a column with a mean taken on it to a Tidy Data set (Point 5)
x_sub_cast <- dcast(x_sub_melt,Subject+Activity~variable, mean)

# Write the tidy data set to a txt file
write.table(x_sub_cast, "x_sub_cast.txt", row.names=FALSE)