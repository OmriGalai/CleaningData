---
title: "Codebook"
author: "Omri G"
date: "8/29/2021"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

Attached is an R script made for tidying the UCI HAR Dataset, containing measurements on physical activity collected by means of a Samsung Galaxy smartphone, demonstrating the power of wearable computing.
As explained in the readme.md, the script goes through several data cleaning procedures, and overall contains the following objects and variables:
sub_test, x_test, y_test, sub_train, x_train, y_train:
Data frames created by reading the .txt data files provided - subject i.d, measurements across 561 variables and activity types correspondingly

features:
A vector of attribute names from .txt

test, train:
Data frames created by merging the subject #'s, activity type and variables and adding a column containing the dataset name

df: Merged test and train vertically

relevantMeasure:
Subset of df containing only columns which have "mean" or "std" in name - the first tidy dataset required by Coursera

melt:
Molten data frame of relevant measurements by subject and id

averages:
Summary of the means of variables by subject and activity - required