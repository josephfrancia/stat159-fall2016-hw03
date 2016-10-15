#setwd("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw03/code/tests")
library(testthat)
#test_file("test-regression.R")
data(mtcars)
reg=lm(mpg~disp+hp, data=mtcars)
regsum=summary(reg)
source("../functions/regression-functions.R")

context("Test residual_sum_squares function") 
test_that("residual_sum_squares outputs correct RSS", {
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))	
})

context("Test total_sum_squares function") 
test_that("total_sum_squares outputs correct TSS", {
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg-mean(mtcars$mpg))^2))	
})

context("Test r_squared function") 
test_that("r_squared outputs correct R^2 value", {
  expect_equal(r_squared(reg), regsum$r.squared)
})


context("Test residual_std_error function") 
test_that("residual_std_error outputs correct RSE value", {
  expect_equal(residual_std_error(reg), regsum$sigma)
})


context("Test f_statistic function") 
test_that("f_statistic outputs correct F  value", {
  expect_equal(f_statistic(reg), as.numeric(regsum$fstatistic[1]))
})



