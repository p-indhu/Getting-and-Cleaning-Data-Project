##Data Dictionary - Human Activity Recognition Using Smartphones

###Variables in the Tidy Dataset

  1. subject                  : Uniquely identifies the subject (1 to 30)
  
  2. activity                 : Specifies activity labels
                             (Transformed to factor with levels - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,                                 SITTING, STANDING, LAYING)
                               
  In the following variables 'std' indicates standard deviation, 'Acc' indicates Acceleration  
  't' indicates Time domain signals
  3. tBodyAcc.mean.X          : num  
  4. tBodyAcc.mean.Y          : num  
  5. tBodyAcc.mean.Z          : num  
  6. tBodyAcc.std.X           : num  
  7. tBodyAcc.std.Y           : num  
  8. tBodyAcc.std.Z           : num  
  9. tGravityAcc.mean.X       : num  
  10. tGravityAcc.mean.Y       : num  
  11. tGravityAcc.mean.Z       : num  
  12. tGravityAcc.std.X        : num  
  13. tGravityAcc.std.Y        : num  
  14. tGravityAcc.std.Z        : num  
  15. tBodyAccJerk.mean.X      : num  
  16. tBodyAccJerk.mean.Y      : num  
  17. tBodyAccJerk.mean.Z      : num  
  18. tBodyAccJerk.std.X       : num  
  19. tBodyAccJerk.std.Y       : num  
  20. tBodyAccJerk.std.Z       : num  
  21. tBodyGyro.mean.X         : num  
  22. tBodyGyro.mean.Y         : num  
  23. tBodyGyro.mean.Z         : num  
  24. tBodyGyro.std.X          : num  
  25. tBodyGyro.std.Y          : num  
  26. tBodyGyro.std.Z          : num  
  27. tBodyGyroJerk.mean.X     : num  
  28. tBodyGyroJerk.mean.Y     : num  
  29. tBodyGyroJerk.mean.Z     : num  
  30. tBodyGyroJerk.std.X      : num  
  31. tBodyGyroJerk.std.Y      : num  
  32. tBodyGyroJerk.std.Z      : num  
  33. tBodyAccMag.mean         : num  
  34. tBodyAccMag.std          : num  
  35. tGravityAccMag.mean      : num  
  36. tGravityAccMag.std       : num  
  37. tBodyAccJerkMag.mean     : num  
  38. tBodyAccJerkMag.std      : num  
  39. tBodyGyroMag.mean        : num  
  40. tBodyGyroMag.std         : num  
  41. tBodyGyroJerkMag.mean    : num  
  42. tBodyGyroJerkMag.std     : num
  
  'f' indicates frequency domain signals
  43. fBodyAcc.mean.X          : num
  44. fBodyAcc.mean.Y          : num  
  45. fBodyAcc.mean.Z          : num  
  46. fBodyAcc.std.X           : num  
  47. fBodyAcc.std.Y           : num  
  48. fBodyAcc.std.Z           : num  
  49. fBodyAccJerk.mean.X      : num  
  50. fBodyAccJerk.mean.Y      : num  
  51. fBodyAccJerk.mean.Z      : num  
  52. fBodyAccJerk.std.X       : num  
  53. fBodyAccJerk.std.Y       : num  
  54. fBodyAccJerk.std.Z       : num  
  55. fBodyGyro.mean.X         : num  
  56. fBodyGyro.mean.Y         : num  
  57. fBodyGyro.mean.Z         : num  
  58. fBodyGyro.std.X          : num  
  59. fBodyGyro.std.Y          : num  
  60. fBodyGyro.std.Z          : num  
  61. fBodyAccMag.mean         : num  
  62. fBodyAccMag.std          : num  
  63. fBodyBodyAccJerkMag.mean : num  
  64. fBodyBodyAccJerkMag.std  : num  
  65. fBodyBodyGyroMag.mean    : num  
  66. fBodyBodyGyroMag.std     : num  
  67. fBodyBodyGyroJerkMag.mean: num  
  68. fBodyBodyGyroJerkMag.std : num  
  
###Transformations

  * Activity and subject details were added to the test and train data.
  
  * Test data and train data were merged.
  
  * Activity was transformed to a factor variable.
  
  * Data was grouped by subject and then by activity (grouped by subject first since it was treated like primary key).
  
  * Grouped data was summarised into means for each of the measurements of means and standard deviations
  
  
