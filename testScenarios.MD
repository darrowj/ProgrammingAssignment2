---
title: "R Programming Assignment 2 Testing"
author: "Jason Darrow"
date: "March 27, 2016"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Some simple test scenarios to scenarios for the Cache Matrix Assignment

Initialize the Matirx
----------------------
seedData <- rnorm(16)
cols <- 6
rows <- 6
inputMatrix <- matrix(seedData, rows, cols)

resultingMatrixList <- makeCacheMatrix(inputMatrix)

##The output result of the "resultMatrix"
> resultingMatrixList$get()
>           [,1]       [,2]        [,3]       [,4]
>[1,]  0.7585903  1.5703931 -0.30691227 -0.7362444
>[2,] -0.3990336  0.9202862  0.06624003 -0.5614548
>[3,] -1.4480809 -0.5876994 -0.68127016 -0.2004357
>[4,] -0.5588723 -1.7229471  1.12223597  1.1736952

Testing the solve function and caching
---------------------------------------
#Do the initial inversion, solve(), and cache the matrix
cacheSolve(resultingMatrixList)

> cacheSolve(resultingMatrixList)
>          [,1]       [,2]      [,3]      [,4]
>[1,] -3.864617  0.8804055 -2.049542 -2.353077
>[2,] 10.020798 -3.2927465  4.070478  5.405915
>[3,] -5.866867  3.1556065 -2.913214 -2.668179
>[4,] 18.479657 -7.4316812  7.784899 10.218464

#Run again and ensure the cached matrix is returned

> cacheSolve(resultingMatrixList)
>getting cached data
>          [,1]       [,2]      [,3]      [,4]
>[1,] -3.864617  0.8804055 -2.049542 -2.353077
>[2,] 10.020798 -3.2927465  4.070478  5.405915
>[3,] -5.866867  3.1556065 -2.913214 -2.668179
>[4,] 18.479657 -7.4316812  7.784899 10.218464
