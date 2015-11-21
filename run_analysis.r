library(reshape2)


# loading in required data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

names(activity_labels)[2] <- "ActivityLabel"

#Combine test and train for x
X_all <- rbind(X_train,X_test)

#Give descriptive names
names(X_all) <- as.character(features[, 2])

#Combine test and train for y
Y_all <- rbind(Y_train,Y_test)
names(Y_all)[1] <- "ActivityLabelID"

#Combine test and train for subject
subject_all <- rbind(subject_train,subject_test)
names(subject_all)[1] <- "Subject"


#Extract mean and std for each measurement
mean_std <- c(grep("mean()",colnames(X_all),fixed=TRUE),grep("std()",colnames(X_all),fixed=TRUE))
X_all_mean_std <- X_all[, mean_std]

#Give decscriptive activity names
Y_all <- merge(Y_all,activity_labels, by=1)

#Combine into one data set
all_data <- cbind(subject_all, Y_all, X_all_mean_std)

# Creates a second, independent tidy data set 
data_melt = melt(all_data, id.var = c("ActivityLabelID", "ActivityLabel", "Subject"))
tidy_data = dcast(data_melt , Subject + ActivityLabel ~ variable, mean)

write.table(tidy_data, file="TidyData.txt", sep=";", row.names=FALSE)