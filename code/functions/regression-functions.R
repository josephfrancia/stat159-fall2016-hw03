#Residual Sum of Squares Function
residual_sum_squares=function(lm_object){
  return(sum(lm_object$residuals*lm_object$residuals))
}

total_sum_squares=function(lm_object){
  sum((lm_object$model[,1]-mean(lm_object$model[,1]))^2)
}

r_squared=function(lm_object){
  return(1-(residual_sum_squares(lm_object)/total_sum_squares(lm_object)))
}

f_statistic=function(lm_object){
  numerator=(total_sum_squares(lm_object)-residual_sum_squares(lm_object))/(ncol(lm_object$model)-1)
  denominator=(residual_sum_squares(lm_object)/(nrow(lm_object$model)-ncol(lm_object$model)))
  return(numerator/denominator)
}

residual_std_error=function(lm_object){
  return(sqrt(residual_sum_squares(lm_object)/(nrow(lm_object$model)-ncol(lm_object$model))))
}