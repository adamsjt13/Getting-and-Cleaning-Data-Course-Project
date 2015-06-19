run_analysis <- function(){
        
        #This section is used to read in all the training set related data
        train <- read.table("UCI HAR Dataset/train/X_train.txt")
        train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
        train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
        train_info <- cbind(train_activity, train_subject)
         
        #This section is used to read in all the test set related data
        test <- read.table("UCI HAR Dataset/test/X_test.txt")
        test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
        test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
        test_info <- cbind(test_activity, test_subject)
        
        #Reads in the feature labels
        features <- read.table("UCI HAR Dataset/features.txt")
        
        #Combines the activity and subject info from the training and test sets
        #and also gives the columns descriptive names
        combined_info <- rbind(train_info, test_info)
        names(combined_info) <- c("Activity", "Subject")
        
        #The code below labels the activities with the descriptions provided
        #I would like to give credit to Mr. Ray Jones for providing
        #this example code in the forums found here: 
        #https://class.coursera.org/getdata-015/forum/thread?thread_id=112#comment-276
        #It was extremely helpful!!
        combined_info[,1] <- as.character(factor(combined_info[,1], 
                                labels = c("WALKING", "WALKING_UPSTAIRS", 
                                "WALKING_DOWNSTAIRS", "SITTING", "STANDING",
                                "LAYING")))
        
        #Combines the quantitative data from the trainig and test sets
        combined_data <- rbind(train, test)
        names(combined_data) <- features[,2]
        
        
        #The following two lines return a logical vector for column names
        #in the data set containing the mean and standard deviation
        meanCols <- grepl("mean()", names(combined_data), fixed = TRUE)
        stdCols <- grepl("std()", names(combined_data), fixed = TRUE)
        
        #Uses the logical vectors from the previous section to create a data
        #table with the mean and standard deviation data only
        meanstd_data <- combined_data[,(meanCols | stdCols)]
        
        #Replace characters in variable names to make the columns easier to read
        #once read.table is used
        names(meanstd_data) <- gsub("-", ".", names(meanstd_data))
        names(meanstd_data) <- sub("(", "", names(meanstd_data), fixed = T)
        names(meanstd_data) <- sub(")", "", names(meanstd_data), fixed = T)
        
        
        #Combines the labeled activities and subject columns with the 
        #quantitative mean and standard deviation data
        final_data <- cbind(combined_info, meanstd_data)
        
        #Calculates the mean of all quantitative data variables in final_data
        #for each subject and activity
        mean_by_group <- aggregate(final_data[3:68], 
                             by = list(Activity = final_data$Activity, 
                             Subject = final_data$Subject), FUN = mean)
        
        write.table(mean_by_group, "data_submit.txt", row.name = FALSE)
        
        
        

}
