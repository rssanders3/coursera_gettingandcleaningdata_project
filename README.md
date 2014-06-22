README
=======================================

###Description

Instructions were to create an R Script to perform the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output was an R Script named run\_analysis.R and after running this script it produced the needed files in the output directory. This includes the "tidy\_output.txt" and "tidy\_mean\_output.txt" file.


###How the run_analysis.R works
Within the run_analysis.R file there are comments to describe what each lines of code are doing. But heres an overview of what happens when running that file:

1. Imports needed libraries for processing the data. This includes: plyr and reshape2.
2. Global variables are set to point to where the input data set is and where the output data set should be put into. Note if you change the file structure between running the run_analysis.R file you will need to update these constants.
3. Imports the activityLabels data and the Features data into internal R Data structures.
4. Imports the test and train data into an R data structure called a data.frame. This includes importing the subject data and merging that with the X and Y data.
5. Cleans up the feature names so that they can be accessed using R Scripts
6. Merges the test and train data by the subject_id. This data object will inevitably be exported to the tidy\_output.txt file.
7. Removes the columns of data for each subject and activity that aren't means or standard deviations
8. Set the names of the columns to the filtered names we brought in in step #3
9. merge the activity labels data with the primary data object that contains the train and test data so that the activitys are easier to understand.
10. Generate the mean version of the output file called tidy\_mean\_ouput.txt. this will take the data that will be put into the tidy\_ouput.txt file and group the data by the activity\_name and subject_id and generate the mean of those values which mean that criteria.
11. Final step: output the internal R Data Frames into their output text files.


###About the Input Data
Input Data is within the UCI\_HAR\_Dataset Directory.
For more information on this data set read the README file within that directory

