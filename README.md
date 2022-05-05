# MechaCar-Analysis

## Linear Regression to Predict MPG
<img width="578" alt="Linear Regression" src="https://user-images.githubusercontent.com/94096530/166871667-d41df491-40c8-4df7-b021-011968e908ea.png">

We use the summary statistics output of the linear regression on all of the variables. We could see the following information from the regression:
 * A variable that provides non-random amounts of variance
    * The regression model told us the estimated variables with non-random variances are vehicle length and ground clearance. These two estimated variables have very small p values which makes them statistically likely to provide non-random amounts of variance.


## Summary Statistics on Suspension Coils
We perform the summary statistics on suspension coil to see the following:

1) Total Summary Statistics of Suspension Coils PSI
<p align="center">
<img width="333" alt="total summary" src="https://user-images.githubusercontent.com/94096530/166872397-6ff7bef8-153e-4578-9e38-9f93934cdc72.png"></p>

2) Summary Statistics of Suspension Coils PSI by Lot Number 
<p align ="center">
<img width="511" alt="LotSummary" src="https://user-images.githubusercontent.com/94096530/166872410-7bebd5eb-e30a-4cc8-a9bb-672fff132345.png"></p>

The design specifications for the MechaCar suspension mandate that the variance is below 100. In the data shown above, the manufacturing data meets the design specification in sum, but does not meet the design specification for each independent lot. The variance level for the sum of all lots is 62.2936, which is far below 100. When you look at the lot summary, we can see that Lot 3 has a variance of 170, which does not meet design requirements. 

## T-Tests on Suspension Coils
Running a t-test will determine if the average PSI is statistcally different from the population mean, which is 1500 pounds per square inch. 

* PSI (All manufacturing lots) 
<img width="456" alt="t test" src="https://user-images.githubusercontent.com/94096530/166873478-1aac539f-7f67-4197-b678-d3f0672374c0.png">
With a p-value of 0.06028, we fail to reject the null hypothesis that the true population mean is 1500 lbs per sq inch. Therefore, the mean PSI across all manufacturing lots is statistically different from the population mean.

* Independent Lots 
<p align="center"><img width="630" alt="Lot 1" src="https://user-images.githubusercontent.com/94096530/166873598-89e1b526-9682-4e83-bed3-97d0b6d5c8f4.png"></p>
With a p-value of 1, we reject the null hypothesis that the mean is not statistically different from the population mean.
<p align="center"><img width="606" alt="Lot 2" src="https://user-images.githubusercontent.com/94096530/166873611-46556272-c752-4909-b462-3818d99b97bc.png"></p>
With a p-valye of 0.6072, we reject the null hypothesis that the mean is not statistically different from the population mean.
<p align="center"><img width="631" alt="Lot 3" src="https://user-images.githubusercontent.com/94096530/166873632-c3b9e185-129a-430e-a82c-3947770caaf1.png"></p>
With a p-value of 0.04168, we fail to reject the null hypothesis. Therefore, the mean PSI in Lot 3 is statisically different than the population mean.

## Design a Study Comparing the MechaCar to the Competition
A statistical study on MechaCar's compared to other manufacturers could be how often the owner has maintanance problems and how much money on average they spend on upkeep for their car. We could use a t-test to compare the cost and frequency of maintanence for MechaCar owners against a group of consumers from another manufacturer, like Tesla. The t-test will be able to predict the average cost of owning a MechaCar vs another manufacturer, which could help in driving MechaCar's sales pitch. The metrics in our t-test will be the average spending on maintanence for MechaCar's products and the average spending on maintanence for other leading competitors. We would have the following hypothesis:
(null) A MechaCar owner will spend less money on maintanence and repairs than the owner of another leading car manufacturer.

