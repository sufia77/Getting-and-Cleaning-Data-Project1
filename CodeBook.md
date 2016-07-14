# Code Book - tidy_data
### All quoted item are values for particlular call such as Id, Variables etc.

## Id Fields

### subjectId - Unique Id for each Volunteers (1 to 30)

=======================================================================================================

   subjectId

-------------------------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 30 levels

   Values and labels     N     Percent  
                                        
              1 '1'  29842     3.4      
              2 '2'  25972     2.9      
              3 '3'  29326     3.3      
              4 '4'  27262     3.1      
              5 '5'  25972     2.9      
              6 '6'  27950     3.2      
              7 '7'  26488     3.0      
              8 '8'  24166     2.7      
              9 '9'  24768     2.8      
             10 '10' 25284     2.9      
             11 '11' 27176     3.1      
             12 '12' 27520     3.1      
             13 '13' 28122     3.2      
             14 '14' 27778     3.1      
             15 '15' 28208     3.2      
             16 '16' 31476     3.6      
             17 '17' 31648     3.6      
             18 '18' 31304     3.5      
             19 '19' 30960     3.5      
             20 '20' 30444     3.4      
             21 '21' 35088     4.0      
             22 '22' 27606     3.1      
             23 '23' 31992     3.6      
             24 '24' 32766     3.7      
             25 '25' 35174     4.0      
             26 '26' 33712     3.8      
             27 '27' 32336     3.7      
             28 '28' 32852     3.7      
             29 '29' 29584     3.3      
             30 '30' 32938     3.7      

### activityId - Unique Id for each activity (1 to 6)

=======================================================================================================

   activityId

-------------------------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 6 levels

        Values and labels      N      Percent   
                                                
   1 'LAYING'             167184     18.9       
   2 'SITTING'            152822     17.3       
   3 'STANDING'           163916     18.5       
   4 'WALKING'            148092     16.7       
   5 'WALKING_DOWNSTAIRS' 120916     13.7       
   6 'WALKING_UPSTAIRS'   132784     15.0       

### Variables/Columns of tidy_data extracted from features.txt and label as descriptive variable names.

=======================================================================================================

   variable

-------------------------------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 86 levels

                                        Values and labels     N     Percent  
                                                                             
    1 'TimeBodyAccelerometerMean()-X'                     10299     1.2      
    2 'TimeBodyAccelerometerMean()-Y'                     10299     1.2      
    3 'TimeBodyAccelerometerMean()-Z'                     10299     1.2      
    4 'TimeBodyAccelerometerSTD()-X'                      10299     1.2      
    5 'TimeBodyAccelerometerSTD()-Y'                      10299     1.2      
    6 'TimeBodyAccelerometerSTD()-Z'                      10299     1.2      
    7 'TimeGravityAccelerometerMean()-X'                  10299     1.2      
    8 'TimeGravityAccelerometerMean()-Y'                  10299     1.2      
    9 'TimeGravityAccelerometerMean()-Z'                  10299     1.2      
   10 'TimeGravityAccelerometerSTD()-X'                   10299     1.2      
   11 'TimeGravityAccelerometerSTD()-Y'                   10299     1.2      
   12 'TimeGravityAccelerometerSTD()-Z'                   10299     1.2      
   13 'TimeBodyAccelerometerJerkMean()-X'                 10299     1.2      
   14 'TimeBodyAccelerometerJerkMean()-Y'                 10299     1.2      
   15 'TimeBodyAccelerometerJerkMean()-Z'                 10299     1.2      
   16 'TimeBodyAccelerometerJerkSTD()-X'                  10299     1.2      
   17 'TimeBodyAccelerometerJerkSTD()-Y'                  10299     1.2      
   18 'TimeBodyAccelerometerJerkSTD()-Z'                  10299     1.2      
   19 'TimeBodyGyroscopeMean()-X'                         10299     1.2      
   20 'TimeBodyGyroscopeMean()-Y'                         10299     1.2      
   21 'TimeBodyGyroscopeMean()-Z'                         10299     1.2      
   22 'TimeBodyGyroscopeSTD()-X'                          10299     1.2      
   23 'TimeBodyGyroscopeSTD()-Y'                          10299     1.2      
   24 'TimeBodyGyroscopeSTD()-Z'                          10299     1.2      
   25 'TimeBodyGyroscopeJerkMean()-X'                     10299     1.2      
   26 'TimeBodyGyroscopeJerkMean()-Y'                     10299     1.2      
   27 'TimeBodyGyroscopeJerkMean()-Z'                     10299     1.2      
   28 'TimeBodyGyroscopeJerkSTD()-X'                      10299     1.2      
   29 'TimeBodyGyroscopeJerkSTD()-Y'                      10299     1.2      
   30 'TimeBodyGyroscopeJerkSTD()-Z'                      10299     1.2      
   31 'TimeBodyAccelerometerMagnitudeMean()'              10299     1.2      
   32 'TimeBodyAccelerometerMagnitudeSTD()'               10299     1.2      
   33 'TimeGravityAccelerometerMagnitudeMean()'           10299     1.2      
   34 'TimeGravityAccelerometerMagnitudeSTD()'            10299     1.2      
   35 'TimeBodyAccelerometerJerkMagnitudeMean()'          10299     1.2      
   36 'TimeBodyAccelerometerJerkMagnitudeSTD()'           10299     1.2      
   37 'TimeBodyGyroscopeMagnitudeMean()'                  10299     1.2      
   38 'TimeBodyGyroscopeMagnitudeSTD()'                   10299     1.2      
   39 'TimeBodyGyroscopeJerkMagnitudeMean()'              10299     1.2      
   40 'TimeBodyGyroscopeJerkMagnitudeSTD()'               10299     1.2      
   41 'FrequencyBodyAccelerometerMean()-X'                10299     1.2      
   42 'FrequencyBodyAccelerometerMean()-Y'                10299     1.2      
   43 'FrequencyBodyAccelerometerMean()-Z'                10299     1.2      
   44 'FrequencyBodyAccelerometerSTD()-X'                 10299     1.2      
   45 'FrequencyBodyAccelerometerSTD()-Y'                 10299     1.2      
   46 'FrequencyBodyAccelerometerSTD()-Z'                 10299     1.2      
   47 'FrequencyBodyAccelerometerMeanFreq()-X'            10299     1.2      
   48 'FrequencyBodyAccelerometerMeanFreq()-Y'            10299     1.2      
   49 'FrequencyBodyAccelerometerMeanFreq()-Z'            10299     1.2      
   50 'FrequencyBodyAccelerometerJerkMean()-X'            10299     1.2      
   51 'FrequencyBodyAccelerometerJerkMean()-Y'            10299     1.2      
   52 'FrequencyBodyAccelerometerJerkMean()-Z'            10299     1.2      
   53 'FrequencyBodyAccelerometerJerkSTD()-X'             10299     1.2      
   54 'FrequencyBodyAccelerometerJerkSTD()-Y'             10299     1.2      
   55 'FrequencyBodyAccelerometerJerkSTD()-Z'             10299     1.2      
   56 'FrequencyBodyAccelerometerJerkMeanFreq()-X'        10299     1.2      
   57 'FrequencyBodyAccelerometerJerkMeanFreq()-Y'        10299     1.2      
   58 'FrequencyBodyAccelerometerJerkMeanFreq()-Z'        10299     1.2      
   59 'FrequencyBodyGyroscopeMean()-X'                    10299     1.2      
   60 'FrequencyBodyGyroscopeMean()-Y'                    10299     1.2      
   61 'FrequencyBodyGyroscopeMean()-Z'                    10299     1.2      
   62 'FrequencyBodyGyroscopeSTD()-X'                     10299     1.2      
   63 'FrequencyBodyGyroscopeSTD()-Y'                     10299     1.2      
   64 'FrequencyBodyGyroscopeSTD()-Z'                     10299     1.2      
   65 'FrequencyBodyGyroscopeMeanFreq()-X'                10299     1.2      
   66 'FrequencyBodyGyroscopeMeanFreq()-Y'                10299     1.2      
   67 'FrequencyBodyGyroscopeMeanFreq()-Z'                10299     1.2      
   68 'FrequencyBodyAccelerometerMagnitudeMean()'         10299     1.2      
   69 'FrequencyBodyAccelerometerMagnitudeSTD()'          10299     1.2      
   70 'FrequencyBodyAccelerometerMagnitudeMeanFreq()'     10299     1.2      
   71 'FrequencyBodyAccelerometerJerkMagnitudeMean()'     10299     1.2      
   72 'FrequencyBodyAccelerometerJerkMagnitudeSTD()'      10299     1.2      
   73 'FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()' 10299     1.2      
   74 'FrequencyBodyGyroscopeMagnitudeMean()'             10299     1.2      
   75 'FrequencyBodyGyroscopeMagnitudeSTD()'              10299     1.2      
   76 'FrequencyBodyGyroscopeMagnitudeMeanFreq()'         10299     1.2      
   77 'FrequencyBodyGyroscopeJerkMagnitudeMean()'         10299     1.2      
   78 'FrequencyBodyGyroscopeJerkMagnitudeSTD()'          10299     1.2      
   79 'FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()'     10299     1.2      
   80 'Angle(TimeBodyAccelerometerMean,Gravity)'          10299     1.2      
   81 'Angle(TimeBodyAccelerometerJerkMean),GravityMean)' 10299     1.2      
   82 'Angle(TimeBodyGyroscopeMean,GravityMean)'          10299     1.2      
   83 'Angle(TimeBodyGyroscopeJerkMean,GravityMean)'      10299     1.2      
   84 'Angle(X,GravityMean)'                              10299     1.2      
   85 'Angle(Y,GravityMean)'                              10299     1.2      
   86 'Angle(Z,GravityMean)'                              10299     1.2      

=======================================================================================================
