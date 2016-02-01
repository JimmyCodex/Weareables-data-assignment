library(plyr)
library(reshape2)

if(!file.exists("./data")) { dir.create("./data") }

# File names

file.clean <- "./data/cleaned.txt"
file.features <- "./data/features.txt"

file.activities.lables <- "./data/activity_labels.txt"

file.train.data <- "./data/train/X_train.txt"
file.train.activities <- "./data/train/y_train.txt"
file.train.subjects <- "./data/train/subject_train.txt"

file.test.data <- "./data/test/X_test.txt"
file.test.activities <- "./data/test/y_test.txt"
file.test.subjects <- "./data/test/subject_test.txt"

# Common variables

features.valid <- c("-mean\\(\\)", "-std\\(\\)")
debug.print <- TRUE

# Functions implementation

# Load a text file in the given path
load.file <- function(file, columns = c()) {
  debug.output(c("Loaded file", file))
  
  if(length(columns) > 0 ) {
    debug.output(c("Reading only the given columns", columns))
    return(read.table(file)[columns]) 
  }
  
  debug.output(c("Reading all the columns"))
  return(read.table(file))
}

# Print debugging output strings depending on the value of the global
# debug variable.
debug.output <- function(output_vector) {
  if(debug.print == TRUE){
    print(paste(output_vector, collapse = " "))
  }
}

# Extracts only columns which match a given set of measurements
valid_columns <- function(columns_to_extract, features) {
  
  columns <- c()
  debug.output(c("Loading columns to extract", columns_to_extract))
  debug.output(c("Total number of features", nrow(features)))
  
  for(column in columns_to_extract){
    columns <- union(columns, grep(column, features[,2]))
  }
  debug.output(c("Found total features matching", columns_to_extract, length(columns)))
  
  return(sort(as.numeric(columns)))
}

##################
#### Analysis ####
##################


# Using regex only extract the measurements on the mean and standard deviation
features.extract <- valid_columns(features.valid, load.file(file.features))
features.extract.literals <- as.character((read.table(file.features)[features.extract,])$V2)

# Add col names for both the numerical and the literal activities columns
# We are specifically adding a column for each of them
features.extract.literals <- c(features.extract.literals, c("activities.numeric", "activities", "subject"))

activities.labels <- load.file(file.activities.lables)

## Test

test.activities <- load.file(file.test.activities)
test.activities.literals <- mapvalues(test.activities[,1], 
                                      from=as.character(activities.labels[,1]), 
                                      to=as.character(activities.labels[,2]))
test.features <- load.file(file.test.data, features.extract)

test.subjects <- load.file(file.test.subjects)

test.data <- cbind(test.features, test.activities, test.activities.literals, test.subjects)
names(test.data) <- features.extract.literals

## Train

train.activities <- load.file(file.train.activities)
train.activities.literals <- mapvalues(train.activities[,1], 
                                          from=as.character(activities.labels[,1]), 
                                          to=as.character(activities.labels[,2]))
train.features <- load.file(file.train.data, features.extract)

train.subjects <- load.file(file.train.subjects)

train.data <- cbind(train.features, train.activities, train.activities.literals, train.subjects)
names(train.data) <- features.extract.literals

# Merge the training and the test sets to create one data set
all.data <- rbind(train.data, test.data)

# Perform analysis step 5
debug.output(c("Melting data file", nrow(all.data)))
all.data.subject_activity <- melt(all.data, id = c("subject", "activities"))

debug.output(c("Dcasting data file", nrow(all.data)))
all.data.final <- dcast(all.data.subject_activity, subject + activities ~ variable, mean)

# Write the cleaned data to a file
debug.output(c("Writing cleaned data file to ", file.clean))
write.table(all.data.final, file.clean, row.names = FALSE, quote = FALSE)
