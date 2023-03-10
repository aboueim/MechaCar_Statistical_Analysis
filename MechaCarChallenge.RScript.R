library(dplyr)

# Part 1: Linear Regression to Predict MPG
mpg_df <- read.csv('MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_df)) # generate summary statistics


# Part 2: Create Visualizations for the Trip Analysis
susp_df <- read.csv('Suspension_Coil.csv')

total_summary <- summarize(susp_df, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- group_by(susp_df, Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Part 3: T-Tests on Suspension Coils

t.test(susp_df$PSI, mu=1500)

lot1 <- subset(susp_df, Manufacturing_Lot == 'Lot1')
lot2 <- subset(susp_df, Manufacturing_Lot == 'Lot2')
lot3 <- subset(susp_df, Manufacturing_Lot == 'Lot3')

t.test (lot1$PSI, mu=1500)

t.test (lot2$PSI, mu=1500)

t.test (lot3$PSI, mu=1500)
