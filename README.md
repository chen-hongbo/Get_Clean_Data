## INTRODUCTION: ##

 This assignment uses data set has been collected from the accelerometers from the samsung galaxy s smartphone, uci use the data set to recognition human activity,the experiments have been carried out with a group of 30 volunteers,each person performed six activities (walking, walking_upstairs, walking_downstairs, sitting, standing, laying) wearing a smartphone (samsung galaxy s ii), we will be using the data file which i have made available on the course web site :
  
  - **Data File:** [https://d396qusza40orc.cloudfront.net/getdata projectfiles UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata projectfiles UCI HAR Dataset.zip)



## Data Set: ##
       
     - feature dataset :  'features.txt'
       Description:        List of all features
       
     - activity dataset:  'activity_labels.txt' 
       Description:        Links the class labels with their activity name
       
     - test dataset:  'test/X_train.txt | test/Y_train.txt' 
       Description:    Training set
       
     - train dataset: 'train/X_train.txt | train/Y_train.txt'
       Description:    Training set

## Create the tidy datat set: ##

 executed via the submit script that you run on your computer. To obtain the submit script, run the following code in R，the submit data set is name to second_data_set.txt:  

    source("run_analysis.R")
    run_analysis()
