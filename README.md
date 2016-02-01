### Weareables data assignment

## run_analysis.R

The script is divided into two sections.

Section 1 (lines 1 to 63):
    
    This part of the script contains common functions and variable definitions
    which are needed as part of the analysis.

    The functions implemented are:
        - load.file 
        - debug.output
        - valid_columns

    Each function has explanatory comments above its definition.

Section 2 (lines 64 to 117):
    
    This part of the script contains the analysis part of the assignment.
    
    The analysis consists of the following steps:
```    
        1. Using regex we extract all the features which are mean or std.
        2. Using the row names matched by the regex checks we extract the features literal
        descriptions, which we will later use as column names.
        3. We load the activities labels from the labels file.
        4. The test activities data is loaded.
        5. The test activities numerical representations are mapped to their literal representations.
        6. The test features data is loaded.
        7. The test subjects data is loaded.
        8. The activities literals are added to the test data.
        9. The column names are added to the test data.
        10. The train activities data is loaded.
        11. The train activities numerical representations are mapped to their literal representations.
        12. The train features data is loaded.
        13. The train subjects data is loaded.
        14. The activities literals are added to the train data.
        15. The column names are added to the train data.
        17. The train and test data are merged.
        18. The merged data is melted.
        19. The merged melted data is dcasted.
        20. FInally the data is written to the cleaned.txt file.
```

It is important to mention that the script has a debug outut toggle variable: debug.print
When this variable is set to true, the script will outbout useful debugging information to the console.

## Run_analysisning the script
source run_analysis.R

With debug.output set to true, the following output should be printed on the console:

```
    [1] "Loading columns to extract -mean\\(\\) -std\\(\\)"
    [1] "Loaded file ./data/features.txt"
    [1] "Reading all the columns"
    [1] "Total number of features 561"
    [1] "Found total features matching -mean\\(\\) -std\\(\\) 66"
    [1] "Loaded file ./data/activity_labels.txt"
    [1] "Reading all the columns"
    [1] "Loaded file ./data/test/y_test.txt"
    [1] "Reading all the columns"
    [1] "Loaded file ./data/test/X_test.txt"
    [1] "Reading only the given columns 1 2 3 4 5 6 41 42 43 44 45 46 81 82 83 84 85 86 121 122 123 124 125 126 161 162 163 164 165 166 201 202 214 215 227 228 240 241 253 254 266 267 268 269 270 271 345 346 347 348 349 350 424 425 426 427 428 429 503 504 516 517 529 530 542 543"
    [1] "Loaded file ./data/test/subject_test.txt"
    [1] "Reading all the columns"
    [1] "Loaded file ./data/train/y_train.txt"
    [1] "Reading all the columns"
    [1] "Loaded file ./data/train/X_train.txt"
    [1] "Reading only the given columns 1 2 3 4 5 6 41 42 43 44 45 46 81 82 83 84 85 86 121 122 123 124 125 126 161 162 163 164 165 166 201 202 214 215 227 228 240 241 253 254 266 267 268 269 270 271 345 346 347 348 349 350 424 425 426 427 428 429 503 504 516 517 529 530 542 543"
    [1] "Loaded file ./data/train/subject_train.txt"
    [1] "Reading all the columns"
    [1] "Melting data file 10299"
    [1] "Dcasting data file 10299"
    [1] "Writing cleaned data file to  ./data/cleaned.txt"
```
The script file expects the data from Samsung to be downloaded and unzipped in the data/ directory.

### Cleaned data

The cleaned data is outputed to the data/cleaned directory. This file contains the solution for the requirements
at step 5, namely for each subcjec and each activity there is an average of each variable calculated.

The repository contains a copy of the Samsung data along with a sample cleaned data file created by the analysys.
