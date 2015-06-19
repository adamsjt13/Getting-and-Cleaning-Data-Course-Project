# Getting-and-Cleaning-Data-Course-Project
Course Project for Coursera "Getting and Cleaning Data" class

The function "run_analysis.R" located in this repository can be used to modify data from the following website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. This data was collected using the 
accelerometers from a Samsung Galaxy S smartphone. The measurements were taken from 30 different individuals while performing 6 different tasks.  

The function "run_analysis.R" uses the following steps to modify the data:

1. Uses read.table to read in the data from the test and train data sets, as well as the feature labels  ***NOTE: In order for this function to work properly, the data must be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and the folder must be located in the current R Working Directory.*** 

2. Combines the test and train data while also adding two new columns, "Activity" and "Subject", to describe the activity performed and the individual being tested. The original data uses a number to reference each activity but 
run_analysis.R relabels the numbers to the actual activity being performed. This was done by looking at the activity_labels.txt file in order to match the number to the appropriate activity.

3. Changes the variable names to match those provided by the original data collectors. The variable names can be found in the features.txt file.

4. Creates a new data set containing only the columns containing the mean and standard deviation of the provided variables. The assumption was made that the only columns that were needed from the original data set were those that 
contained either mean() or std().

5. Renames the column names in the new data frame by replacing some characters with either a "." or by getting rid of "()". The reason for doing this was that when the resulting data set is written to a text file using write.table 
and then read using read.table with header = TRUE, a few of the characters did not remain intact. Therefore it was easier to just remove those characters in order to make the column names easier to read.

6. Creates a final data set. This final data set takes the average of each column, containing the mean and standard deviation, for each activity performed by each individual tested. The resulting data set contains 180 rows, 30 subjects 
performing 6 activities each. As an example: the first row contains the average of each variable for subject number 1 while laying down.

7. Writes the final data set to a file named "data_submit.txt" using write.table with row.name = FALSE.

After running the function run_analysis.R, the data can either be viewed by opening the text file, "data_submit.txt", in a text editor or by using the function "read.table("data_submit.txt", header = TRUE)" in R. It is worth noting that the text
file is extremely difficult to read and comprehend and it is recommended that the file be opened in R.

A codebook can be found in this repository that will describe the variables in "data_submit.txt". For a description of the original variables read the "features_info.txt" file downloaded from the link above.
