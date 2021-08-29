require(readr)
require(tidyr)
require(plyr)
require(dplyr)
require(stringr)
require(reshape2)
# Read relevant files
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")



# Create merged dataset
test <- cbind(sub_test,type="test",y_test,x_test)
train <- cbind(sub_train,type="train",y_train,x_train)
df <- rbind(test,train)
names(df) <- c("subject","type","activity",features)
# Subsetting rows containing mean or std variables
relevantMeasures <- df %>%
  select(subject,type,activity,contains("std"),contains("mean"))
# Assigning significant activity names
relevantMeasures$activity <- recode(relevantMeasures$activity,'walking','walking upstairs','walking downstairs','sitting','standing','laying')
# Melting by subject and activity then taking the average
melt <- relevantMeasures %>% melt(id=c("subject","activity"))
averages <- dcaswrite.table(relevantMeasures)
write.table(relevantMeasures)
