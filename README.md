##Human Activity Recognition Using Smartphones

###Available dataset
The original dataset includes data from the experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

###Transformations done by the script

1. Merges the training and the test sets to create one data set.

        First Subject and Activity are included as columns to the test and train data respectively.
        The test and train data are then combined (row-bind) to produce a single data set 
        
2. Extracts only the measurements on the mean and standard deviation for each measurement.

        For each of the observations, the measurements on mean and standard deviation are selected.
        Note: 'meanFreq' is not included (considereing it not the same as mean)
        
3. Uses descriptive activity names to name the activities in the data set

        From the data in activity_labels.txt, the descriptive activity names are used in the activity column.
        This is achieved by transforming it to a factor with descriptive levels

4. Appropriately labels the data set with descriptive variable names.

        From the data in features.txt, the descriptive names for the measurements are given after removing the '()' from the names.  
        't' and 'f' in the beginning of the variables stand for time and frequency signals.
        To avoid very long column names they are presented as 't' and 'f'
        
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

        The data is grouped on subject first (considering subject like a primary id)
        It is them sub-grouped on activity
        Means are calculated for each column(measurements)
        
###Result

The result of this script is a tidy dataset written to "Summarised_Data.txt"
To read the data into R, use
       read.table("Summarised_Data.txt", header = TRUE)
       

Note:

For the script to run, data.table, dplyr and tidyr packages should be installed.
The original dataset folder "getdata-projectfiles-UCI HAR Dataset" and run_analysis.R should be in the working directory

