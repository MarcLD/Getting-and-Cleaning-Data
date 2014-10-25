Getting-and-Cleaning-Data
=========================
This file describes how run_analysis.R script works.

You can get the data from 

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
    
    Unzip the file containing the data and rename the folder as "UCI HAR Dataset" as a subfolder of your R folder.
    
    The file run_analysis.R script should be located in the R directory.
    
    Use the command source("run_analysis.R") in R to run the file.
    
    You can open the "run_analysis.R" file in R as a script if you want to review the contents.
    
    The file run_analysis.R will generate a "data_means.txt" file, which is available in your R folder:
        data_means.txt (220 Kb) contains a data frame with a dimension of 180*68.

    You can get the data from 
    

        
        The file contains the data extracted as requested in the peer assessment based on the following steps:
            1. Merges the training and the test sets to create one data set.
            2. Extracts only the measurements on the mean and standard deviation for each measurement. 
            3. Uses descriptive activity names to name the activities in the data set
            4. Appropriately labels the data set with descriptive variable names. 
            5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   
    Additional details are available at: 
    https://class.coursera.org/getdata-008/human_grading/view/courses/972586/assessments/3/submissions
    
    Finally, use data <- read.table("data_means.txt") command in R to read the file to review the contents.
    
    The files contains the mean values for 68 of the measurements contained in the source files (see the files X_train and X_test).
    
    These measurements relate to 30 Subjects for whom data were collected while they were involved in 6 activities (see the file activity_labels).
  

