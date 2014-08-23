##Steps taken to process the original data set according to the project requirements


###Assumption: I assume that the working directory has been changed to UCI HAR Dataset directory before executing source"r_analysis.R". So all paths used in the script are relative to that directory.




##### 1) Read the x_train.txt and x_test.txt data sets using read.table() and merge them row wise using rbind()

##### 2) Read features.txt using read.table() and extract the second columns from it for features names
 
#####3) Apply the column names extracted from 2 to the merged data set from 1 

##### 4) For project requirement 2, extract all columns which have "mean()" or "std()" in their name and discard all others  (Project requirement 2)
##### 5) Read activity codes from y_train.txt and y_test.txt and merge them on the lines of 1)
#####6) Create a data set matching activity codes/ids to activity labels by doing an inner join based the activity code/id
#####7) Extract the activities names from data set created in 6) and add it as a column to the test and train data set (Project requirement 3)
#####8) Read the subject train and test data and combine them in a single frame just like the test and train data above and cbind() it to the data set above
#####9) Made the column names more descriptive and easier to read by replacing "t" with "Time", "f" with "FFT", and removing the "-" and "()" from the column names (Project requirement 4)
#####10) Melt the data frame based on subject and activity so that all the variables and their values are melted in two columns for every combination of subject and activity (Project requirement 5)
#####11) # Cast the molten data and subject+activity as row ids and each variable in a column with a mean taken on it to a Tidy Data set (Project requirement 5)
#####12) Write the tidy data set generated to a txt file.