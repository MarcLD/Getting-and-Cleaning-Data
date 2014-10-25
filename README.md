Getting-and-Cleaning-Data
=========================
This file describes how run_analysis.R script works.

You can get the data from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Unzip the file containing the data in your working directory. 

There should be four ´".txt" files:
- 'README.txt' providing information about the measurements and their scope.
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all names of the measurements.
- 'activity_labels.txt': Links the class labels with their activity name.
and two folders called "training" and "test" containing:
- 'train/X_train.txt': Training set.
        - 'train/y_train.txt': Training labels.
        - 'train/Subject.txt': List of the Subject for whom measurements were taken duing training.
        - 'test/X_test.txt': Test set.
        - 'test/y_test.txt': Test labels.
        - 'test/Subject.txt': List of the Subject for whom measurements were taken duing testing.
    The following files are available for the train and test data but they are not used. Their descriptions are equivalent. 
        - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    



 

        - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
      - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
        - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


The file run_analysis.R script should be located in the R directory.

Use the command source("run_analysis.R") in R to run the file.

You can open the file "run_analysis.R" in R as a script if you want to review the contents.

The file run_analysis.R will generate a "data_means.txt" file, which is available in your R folder: 
    - data_means.txt (220 Kb) contains a data frame with a dimension of 180*68.

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
    
These measurements relate to 30 Subjects for whom data were collected while they were involved in 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
    

