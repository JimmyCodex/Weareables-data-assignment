### CodeBook

## Cleaned data fields extracted from the samsung data files

* Old Column Number in Samsung data, Feature Name
* 1	tBodyAcc-mean()-X
* 2	tBodyAcc-mean()-Y
* 3	tBodyAcc-mean()-Z
* 4	tBodyAcc-std()-X
* 5	tBodyAcc-std()-Y
* 6	tBodyAcc-std()-Z
* 41	tGravityAcc-mean()-X
* 42	tGravityAcc-mean()-Y
* 43	tGravityAcc-mean()-Z
* 44	tGravityAcc-std()-X
* 45	tGravityAcc-std()-Y
* 46	tGravityAcc-std()-Z
* 81	tBodyAccJerk-mean()-X
* 82	tBodyAccJerk-mean()-Y
* 83	tBodyAccJerk-mean()-Z
* 84	tBodyAccJerk-std()-X
* 85	tBodyAccJerk-std()-Y
* 86	tBodyAccJerk-std()-Z
* 121	tBodyGyro-mean()-X
* 122	tBodyGyro-mean()-Y
* 123	tBodyGyro-mean()-Z
* 124	tBodyGyro-std()-X
* 125	tBodyGyro-std()-Y
* 126	tBodyGyro-std()-Z
* 161	tBodyGyroJerk-mean()-X
* 162	tBodyGyroJerk-mean()-Y
* 163	tBodyGyroJerk-mean()-Z
* 164	tBodyGyroJerk-std()-X
* 165	tBodyGyroJerk-std()-Y
* 166	tBodyGyroJerk-std()-Z
* 201	tBodyAccMag-mean()
* 202	tBodyAccMag-std()
* 214	tGravityAccMag-mean()
* 215	tGravityAccMag-std()
* 227	tBodyAccJerkMag-mean()
* 228	tBodyAccJerkMag-std()
* 240	tBodyGyroMag-mean()
* 241	tBodyGyroMag-std()
* 253	tBodyGyroJerkMag-mean()
* 254	tBodyGyroJerkMag-std()
* 266	fBodyAcc-mean()-X
* 267	fBodyAcc-mean()-Y
* 268	fBodyAcc-mean()-Z
* 269	fBodyAcc-std()-X
* 270	fBodyAcc-std()-Y
* 271	fBodyAcc-std()-Z
* 345	fBodyAccJerk-mean()-X
* 346	fBodyAccJerk-mean()-Y
* 347	fBodyAccJerk-mean()-Z
* 348	fBodyAccJerk-std()-X
* 349	fBodyAccJerk-std()-Y
* 350	fBodyAccJerk-std()-Z
* 424	fBodyGyro-mean()-X
* 425	fBodyGyro-mean()-Y
* 426	fBodyGyro-mean()-Z
* 427	fBodyGyro-std()-X
* 428	fBodyGyro-std()-Y
* 429	fBodyGyro-std()-Z
* 503	fBodyAccMag-mean()
* 504	fBodyAccMag-std()
* 516	fBodyBodyAccJerkMag-mean()
* 517	fBodyBodyAccJerkMag-std()
* 529	fBodyBodyGyroMag-mean()
* 530	fBodyBodyGyroMag-std()
* 542	fBodyBodyGyroJerkMag-mean()
* 543	fBodyBodyGyroJerkMag-std()

## Cleaned data file fields

* subject - Subject id
* activities - Activity literal

Features extracted from the Samsung data

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()


Activities

Numeral, Literal
* 1	WALKING
* 2	WALKING_UPSTAIRS
* 3	WALKING_DOWNSTAIRS
* 4	SITTING
* 5	STANDING
* 6	LAYING

## Data operations

The data has been built by merging the train and test data sets. Activities have been mapped from their numaral representations to their literal values. Finally for each subject we have calculated the average of each variable for each activity.