# GettingCleaningDataAssignment

## Overview

This repo has the following content:

1. **UCI HAR Dataset** : The original dataset provided in the Coursera assignment
2. **run_analysis.R**  : The scrip that performs the assignment steps- Explained in detail below
3. **tidy_data.txt.R** : The tidy data set created after run_analysis is run on UCI HAR Dataset as per the instructions
4. **Codebook.md**     : CodeBook describing the data, variables and transformations performed to clean up the data 
5. **ReadMe.md**       : This ReadMe file that describes how the code works

## Assumptions

1. The working directory contains the data set UCI HAR Dataset
2. The contents of the dataset and file paths have not been modified
3. The file paths in run_analysis.R have been set for MAC/Linux file paths and need to be modified for Windows


## Description of run_analysis.R

The code has been marked by various sections . The description of various sections is as follows:

1. **Section 0** : This sets ups the libraries that wil be used in the code (Package installation will be needed for the first time)

2. **Section 1 : Merges the training and the test sets to create one data set**  
Section 1.0: Set the working dir and read the activity label and feature files : These files are common to both test and train data  
Section 1.1: This reads the test data into memory (subject_test, x_test, y_test)  
Section 1.2: Name the column names for activity_label file (will be used for train dataset too) and test data files (subject,x and y)  
Section 1.3: All test data is joined to create a 2947X563 data frame    
Section 1.4: Replace Activity ID (1,2,3..) with Acitivity Name (Laying, Walking etc)  
Section 1.5: This reads the train data into memory (subject_train, x_train, y_train)  
Section 1.6: Name the column names test data files (subject,x and y)  
Section 1.7: All train data is joined to create a 7352X563 data frame
Section 1.8: Replace Activity ID (1,2,3..) with Acitivity Name (Laying, Walking etc)  
Section 1.9: Test and Train data are joined to create a all_data df with dim of 10299X563  

3.  **Section 2: Extracts only the measurements on the mean and standard deviation for each measurement**  
The code does a regex search for column names with 'mean' and 'std' in them. It also retains the SubjectID and ActivityName columns.   79 columns meet the regex criteria. This results in a dataframe with dimensions 10299X81.  There is also somehousekeeping done with the ActivityName columns moved from last to second.    

4.  **Section 3: Uses descriptive activity names to name the activities in the data set**  
This part of the assignment is already completed in steps 1.4 and 1.8 above  

5. **Section 4: Appropriately labels the data set with descriptive variable names**  
This section expands the variable names to make them more descriptive. For example, Accl is called out as Accelerometer, Gyro as Gyroscope, t as time, f as frequency to set more descriptive variable names

6. **Section 5: Take average for each subject and each activity**  
The aggregate function is used compute average for all 30 subjects for 6 activities each, on all 79 variables.  
This results in a tidy data set called 'tidy_data.txt' with a dimension of 180 X 81 
The tidy data is extracted using the write table function 


