run_analysis <-function() {
    setwd("UCI HAR Dataset")
    active_lable_data <- read.table("activity_labels.txt")
    features_data <- read.table("features.txt")
    setwd("./test")
    X_test_data <- read.table("X_test.txt")
    Y_test_data <- read.table("y_test.txt")
    subject_test_data <- read.table("subject_test.txt")
    colnames(X_test_data) <- features_data$V2
    colnames(subject_test_data) <- c("subject")
    colnames(Y_test_data) <- c("active")
    test_data <-cbind(Y_test_data,X_test_data)
    test_data <- cbind(subject_test_data,test_data)
    setwd("../train")
    X_train_data <- read.table("X_train.txt")
    Y_train_data <- read.table("y_train.txt")
    subject_train_data <- read.table("subject_train.txt")
    colnames(X_train_data) <- features_data$V2
    colnames(Y_train_data) <- c("active")
    colnames(subject_train_data) <- c("subject")
    train_data <-cbind(Y_train_data,X_train_data)
    train_data <- cbind(subject_train_data,train_data)
    setwd("../..")
    test_train_data <- rbind(test_data,train_data)
    test_train_data$active <- active_lable_data[test_train_data$active,2]
    test_train_data <- test_train_data[,grep("mean|std|subject|active",colnames(test_train_data))]
    second_data_title <- colnames(test_train_data)[grep("mean|active|subject",colnames(test_train_data))]
    second_data_set <- subset(test_train_data,select=second_data_title)
    write.table(second_data_set,file="second_data_set.txt",col.names=FALSE)
}
