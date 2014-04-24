# Merges the training and the test sets to create one data set. 
train_data_x <- read.table("UCI HAR Dataset/train/X_train.txt", 
                         header=F, colClasses="numeric")
train_data_y <- read.table("UCI HAR Dataset/train/y_train.txt", header=F, 
                         colClasses="factor")
train_data_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", header=F, 
                              colClasses="factor")

test_data_x <- read.table("UCI HAR Dataset/test/X_test.txt",
                         header=F, colClasses="numeric")
test_data_y <- read.table("UCI HAR Dataset/test/y_test.txt", header=F, 
                         colClasses="factor")
test_data_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", header=F, 
                        colClasses="factor")
train_data <- cbind(train_data_subject, train_data_y, train_data_x)
test_data <- cbind(test_data_subject, test_data_y, test_data_x)
merged_data=rbind(train_data, test_data)
write.table(merged_data,file= "merged_data.txt")

# Extracts only the measurements on the mean and standard deviation  
#for each measurement.
selected_features <- read.table("selected_features.txt", header=F)
train_data <- cbind(train_data_subject, train_data_y, train_data_x[,selected_features[[1]]])
test_data <- cbind(test_data_subject, test_data_y, test_data_x[,selected_features[[1]]])
har_data=rbind(train_data, test_data)
write.table(har_data,file= "har_data.txt")
# Uses descriptive activity names to name the activities in the data set 
activity_labels <- read.csv("../UCI HAR Dataset/activity_labels.txt", sep=" ", header=F)
activity_names <- tolower(activity_labels[[2]])

# Appropriately labels the data set with descriptive activity names. 
levels(har_data[[2]]) <- activity_names
# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.


library(plyr)
f <- function(x){
  means = vector()
  for(i in 3:75){
    means <- c(means, mean(x[[i]]))
  }
  means
}
tidy_har_data <- ddply(har_data, .(subject=har_data[[1]], activity=har_data[[2]]), f)
write.table(tidy_har_data,file= "tidy_har_data.txt")
