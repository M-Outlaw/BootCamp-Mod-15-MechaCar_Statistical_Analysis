# BootCamp-Mod-15-MechaCar_Statistical_Analysis
Performing statistical analysis using R.

## Overview of Project
The purpose of this analysis is to use R to help Jeremy, an analyst at AutosRUs, run linear regressions, summary statistics, and statistical tests to help the manufacturing team improve production of AutosRUs' new prototype, the MechaCar.

## Analysis
### Linear Regression to Predict MPG
- Miles per gallon (mpg) test results for 50 prototype MechaCars were used to determine which variables impacted mpg. Variables included were:
  * mpg
  * vehicle length
  * vehicle weight
  * spoiler angle
  * ground clearance
  * all wheel drive (AWD)

- The linear regression model determined is shown in the image below.
  * The slope of vehicle weight and spoiler angle are very small, close to zero.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression.png"width="521" height="170"/></p>

- The slopes of each variable can be seen on the plot below.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Plot_of_all_variables.png"width="489" height="730"/></p>


- The summary of the linear regression is shown below.
  * Vehicle weight, spoiler angle, and AWD all have a P-value over 0.05, showing that they are not significantly impact to mpg.
  * The intercept, vehicle length, and ground clearance show a P-value of less than 0.05 which shows that they are statistically unlikely to provide random amounts of variance to the linear model. Therefore, this shows that they make a significant impact on mpg.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression_Summary.png"width="503" height="384"/></p>


-The slope of the linear model is not considered to be zero because there is a significant linear relationship between two of the variables. The only way it could be considered zero, since we are using a multiple linear regression is if all variables had a slope of 0.


- This linear model is a relatively good model with an r-square of 0.71, but the model could more effectively predict mpg of MechaCar prototypes, seen from the fact that some of the variables do not have a significant impact on the mpg. However, removing these variables causes the r-squared value to go down to 0.67, showing that there is at least one other variable that was not included that is contributing to mpg.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Reduced_Linear_Regression.png"width="504" height="469"/></p>




### Summary Statistics on Suspension Coils
- Suspension Coil data on 50 MechaCars for each of 3 lots was used to check design specifications. 
- Summary statistics for the entire dataset is shown.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary_Stats.png"width="343" height="77"/></p>

- Summary statistics were also taken from the data of each lot.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Lots_Summary_Stats.png"width="497" height="126"/></p>


- Looking at the summary statistics for the entire data set, it seems that the dataset meets the design specifications of the MechaCar suspension coils not exceeding 100 pounds per square inch (PSI). However, when we break the data up into the individual lots, we see that:
* Lots 1 and 2 meet the design specifications since the variance is in the single digits for both of these.
* Lot 3 does not meet the design specifications since the variance is greater than 170 PSI.

-This is further shown by the boxplots of each manufacturing lot. Lot 3 has a much larger spread than the other two lots.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Boxplot.png"width="310" height="425"/></p>


### T-Tests on Suspension Coils
- T-tests were performed to further determine if the MechaCars in the different lots deviated from the intended mean.
- First, a random sample of the suspension coil data of 50 MechaCars from the data was taken, and compared to the mean of 1500 PSI. A one sample T-Test was used with the hypotheses of:
  * H<sub>o</sub> = There is no statistical difference between the sample mean and the population mean of 1500 PSI.

  * H<sub>a</sub> = There is a statistical difference between the sample mean and the population mean of 1500 PSI.

  * Since the p-value is greater than 0.05, we fail to reject the null hypothesis and say that the sample mean matches the population mean of 1500 PSI.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/sample_T_Test.png"width="404" height="227"/></p>

- But we need to test each lot to see if our conclusions based on the summary statistics hold true.
  * Lot 1 has a p-value of 1 showing that the mean of Lot 1 exactly matches the mean of the population mean of 1500 PSI.
  * Lot 2 has a p-value of 0.6072 which is greater than 0.05, meaning that you we cannot reject the null hypothesis and we can say that we are 95% confident that the mean of Lot 2 matches the population mean of 1500 PSI.
  * Lot 3 has a p-value of 0.04168 which is less than 0.05, meaning that we reject the null hypothesis and say that the mean of Lot 3 does not match the population mean of 1500 PSI. This is further shown by the fact that our 95% confidence interval is 1492.431 PSI to 1499.849 PSI, which is entirely outside of the population mean of 1500 PSI.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-15-MechaCar_Statistical_Analysis/blob/main/Images/Lots-T_tests.png"width="467" height="732"/></p>



### Study Design: MechaCar vs Competition.
- The statistical study that would be interesting to compare the performance of the MechaCar to the competition would be how fast is the car able to brake. 
- H<sub>o</sub> = The MechaCar is able to stop in less time than other cars.
- H<sub>a</sub> = The MechaCar is not able to stop in less time than other cars.
- The best test to use for this would be the ANOVA test, because we can compare more than just the MechaCar and one competition car. With the ANOVA test, for each speed, we can compare all competition cars to the MechaCar at once.
- To test this, we need data on each car of how long it takes for the car to come to a complete start at different speeds. 
