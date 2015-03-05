run_analysis <- function() {
    setwd("UCI HAR Dataset")
    activity <- read.table("activity_labels.txt")
    features <- read.table("features.txt")
    setwd("test")
    subject_test <- read.table("subject_test.txt")
    X_test <- read.table("X_test.txt")
    Y_test <- read.table("Y_test.txt")
    colnames(X_test) <- features$V2
    Y_test$V1 <- activity[Y_test$V1,2]
    subject_test <- read.table("subject_test.txt")
    setwd("../train")
    subject_train <- read.table("subject_train.txt")
    X_train <- read.table("X_train.txt")
    Y_train <- read.table("Y_train.txt")
    colnames(X_train) <- features$V2
    Y_train$V1 <- activity[Y_train$V1,2]
    subject_train <- read.table("subject_train.txt")
    X_Y_train <- cbind(Y_train,X_train)
    X_Y_test <- cbind(Y_test,X_test)
    col_names <- colnames(X_Y_train)
    colnames(X_Y_train) <- col_names
    colnames(X_Y_train)[1] <- "activity"
    col_names <- colnames(X_Y_test)
    colnames(X_Y_test) <- col_names
    colnames(X_Y_test)[1] <- "activity"
    data_set <- rbind(X_Y_test,X_Y_train)
    filter_data_set <- data_set[,grep('std|mean|activity',colnames(data_set))]
    filter_data_set_mean <- filter_data_set[,grep('mean|activity',colnames(filter_data_set))]
}