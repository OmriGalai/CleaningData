---
title: "readme"
author: "Omri G"
date: "8/29/2021"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

Attached is an R script (run_analysis.R) for tidying the UCI HAR Dataset, containing measurements on physical activity collected by means of a Samsung Galaxy smartphone, demonstrating the power of wearable computing. Also attached is a codebook elaborating on the different variables.
the script goes through several data cleaning procedures as follows:
1. Reads files included in the data provided and stores them in data frames
2. Combines the subject id (sub_test/sub_train), activity code (y files) and measurement variables (x files) to data frames (test, train) and adds a column containing the dataset name for the next steps
3. Binds the two data frames into one
4. Subsets only variables corresponding to means and standard deviations of measurements
5. Replaces numerical y-values with meaningful labels based on activity_labels.txt
6. Melts the data frame by subject, activity and type
7. Recasts using the dcast function to summarize the mean of variables broken down by subject and activity
8. Exports the tidy datasets from steps 5, 7
