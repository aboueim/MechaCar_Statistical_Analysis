# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A linear model was created by entering five predicting variables including vehicle Length, vehicle weight, spoiler angle, ground clearance, AWD to predict vehicle's MPG. As shown below, the results of the multiple regression analysis indicate that two of the predictors, namely, vehicle length and ground clearance are significantly related to MPG (p-value < 0.001) while the other three predictors' relationship with MPG is nonsignificant. 

The F-statistic (22.07) and p-value (<0.001) associated with the multiple regression model indicates the statistical significance of the overall model. That is, the slope of the linear model is significantly different from zero.

The linear model explains almost 70 percent of the variance in the dependent variable (i.e., MPG) with R-Squared equalt to 0.71 and adjusted R-squared of 0.68. The observed results implies high predictive power of this model.


![This is an image](Part1_results.png)


## Summary Statistics on Suspension Coils

As shown below, the varaince calcualted for the entire dataset (Total Summary Table) is equal to 62.3 which is less than 100 and thus meets the specified design constrait. However, when we dig into the dataset by breaking that the anlaysis to specific lots, we realize that while lot 1 and lot 2 meet the desing consideration (variance of lot1 and lot equal to 0.98 and 7.47 respectively), variance of the suspension coils related to vehicle manufactured in lot3 are above 100 (variance = 170.29). That means, among the three lots, only lots 1 and 2 meet the design threshold.

### Total Summary

![This is an image](Part2_results_totalsummary.png)

### Lot Summary

![This is an image](Part2_results_lotsummary.png)



## T-Tests on Suspension Coils

In this part four different t-tests has been executed and the result are as below. H0: There is no difference between the mean of data and population mean. Alpha = 0.05.

The first t-test was run to compare the means between the entire cases in the dataset and the assumed population mean of 1500.
As shown below, the null hypothesis of the equal mean value was not rejected (t = -1.8931, df = 149, p-value = 0.06028) under the 95 percent cofidence interval. That is, statistically, there is no significant difference between the dataset mean and 1500.

![This is an image](Part3_results_ttest.png)

The second t-test was run to compare the means between PSI of the vehicles manufactured in lot1 and the assumed population mean of 1500.
As shown below, the null hypothesis of the equal mean value was not rejected (t = 0, df = 49, p-value = 1) under the 95 percent cofidence interval. That is, statistically, there is no significant difference between the mean value of PSI related to vehicles manufacturted at lot1 are significantly different from the population mean value of 1500.

![This is an image](Part3_results_ttest_lot1.png)

The third t-test was run to compare the means between PSI of the vehicles manufactured in lot2 and the assumed population mean of 1500.
As shown below, the null hypothesis of the equal mean value was not rejected (t = 0.51745, df = 49, p-value = 0.6072) under the 95 percent cofidence interval. That is, statistically, there is no significant difference between the mean value of PSI related to vehicles manufacturted at lot2 and the population mean value of 1500.

![This is an image](Part3_results_ttest_lot2.png)

The fourth t-test was run to compare the means between PSI of the vehicles manufactured in lot3 and the assumed population mean of 1500.
As shown below, the null hypothesis of the equal mean value was rejected (t = -2.0916, df = 49, p-value = 0.04168) under the 95 percent cofidence interval. That is, statistically, the mean value of PSI related to vehicles manufacturted at lot3 are significantly different from the population mean value of 1500.

![This is an image](Part3_results_ttest_lot3.png)


## Study Design: MechaCar vs Competition

From a consumer perspective, different measures may be relevant once evaluating a vehicle. Given my general knowledge on vehicles, I suggest three major factors including safety, fuel economy, and price to be included in a performance study. Vehicle safety indicates the extent to which a vehicle protects passengers in the case of an accident such a collision. A safety rating such as one proposed by the Insurance Institute for Highway Safety (IIHS) can be used to measure this factor. This rating focuses on crashworthiness and crash avoidance and mitigation and calculates an index score combining how well a vehicle protects the occupants in a collision and how well a vehicle can detect and prevent a crash or lessen its severity. Fuel economy sp





Cost
This part include two different cost; Vehicle cost, maintenance cost. Here I choose to take into consideration a total cost of vehicle purchase and maintenance for 5 years and call it Cost

Steps of the study:

Collect market information including different manufacturers' vehicle and maintenance cost.
Since cost is a numeric value, and we want to compare the mean cost of our products with the market mean, we can use one-sample t-test. The sample is the portfolio of our products, and the population is the vehicle market. We wish to offer more affordable options to our costumer so the H0 should be Our products Cost mean is not less than markets Cost mean.. Thus the test is a one-way test.
We select our alpha. Here we can use the normal 0.05 as alpha.
We should run the test and extract p-value.
We need to compare the p-value with the alpha. The outcome and interpretation is like this:
if P-value < 0.05, then H0 is rejected, and we can conclude With 95% confidence, our products cost less than market average.
if P-value > 0.05, then there is not enough evidence to reject H0. Maybe with a higher alpha (lower confidence level) we can reject H0.
Sum up
What metric or metrics are you going to test?
Cost: Vehicle cost + Maintenance cost for 5 years
What is the null hypothesis or alternative hypothesis?
H0: Our products Cost mean is not less than markets Cost mean
What statistical test would you use to test the hypothesis? And why?
one-sample t-test, with 0.05 as alpha and one-way test.
What data is needed to run the statistical test?
We need below data for our products and other manufacturer products: Manufacturer, Vehicle Name (Optional), Vehicle Type (Optional), Vehicle Cost, Maintenance Cost for first 5 years.
Safety
We have to take some safety standard score into consideration. These scores can be numeric values in scale of 0-5 stars and if the scale is different, they can be converted. These scores should be collected for our vehicles and other manufacturers' vehicles. Again we have to use t-test to compare our score mean and market score mean.

Performance
For performance, we can use the different best practices since it can be a vast field to study. For example, by performance we might mean 0-100km time, maneuverability, braking performance, etc.

