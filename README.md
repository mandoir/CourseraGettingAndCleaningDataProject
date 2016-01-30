# Getting and Cleaning Data Course Project
==========================================

## Project Description
======================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Overview
===========

'run_analysis.R' acquires a zipped directory containing several pieces of data from the link above. The script merges the files and cleans the data into a tidy data set. 

## System Information
=====================

OS: Windows 7 SP1
R Version: 3.2.2
RStudio Version: 0.99.484

## run_analysis.R
=================

1. Checks for a subdirectory in the working directory that contains the **UCI HAR Dataset**. If directory does not exist, the folder "UCI HAR Dataset" is created. 
2. Downloads the **UCI HAR Dataset** zip file from given URL into the working directrory. After it is downloaded, it unzips the file into the UCI HAR Dataset folder. 
3. Using 'rbind', the **train** and **test** data sets are gathered into one data frame for **x**, **y**, and **subject**. 
4. The **features** data set is read and `grep` is used to extract only the mean and standard deviation measurements.
5. Descriptive column/variable names are given to **x**, **y**, and **subject**. The variable names for measurements contained in **x** are contained in **features** dataset. The **y** dataset containing activity codes is modified to contain the **activity_labels**.
6. The three data sets, **x**, **y** and **subject**, are merged. 
7. Names in the merged data set **UCI_data** are modified to be descriptive and readable. 
- "t" is recoded as "time".
- "Acc" is recoded as "Accelerometer".
- "Gyro" is recoded as "Gyroscope".
- "Mag" is recoded as "Magnitude".
- "f" is recoded as "frequency".
- "BodyBody" is recoded as "Body".
- "mean()" is recoded as "Mean".
- "std()" is recoded as "SD".
- hyphens are removed.
8. The mean of each variable, grouped by activities and subjects, aggregated into a separate tidy data set which is exported into the working directory as **tidy_UCI_avg_data.txt**.
