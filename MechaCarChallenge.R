## Linear Regression for MechaCar data
library(dplyr)

# Load the data 
MechaCar <- read.csv(file='Desktop/Bootcamp/MechaCar-Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar)

# Linear Regression 
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# Summary Statistics
summ_stats <- summary(linear_model)
summ_stats

## Suspension Coil Technical Analysis 
SuspensionCoil <- read.csv(file='Desktop/Bootcamp/MechaCar-Analysis//Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
View(SuspensionCoil)

total_summary <- SuspensionCoil %>% select(PSI) %>%
  summarize(meanPSI = mean(PSI), medianPSI = median(PSI), variancePSI = var(PSI), stdPSI = sd(PSI))

total_summary <- as.data.frame(total_summary)
total_summary    

## Lot Summary
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>%
  summarize(mean_byLot=mean(PSI), median_byLot=median(PSI), 
            variance_byLot=var(PSI), std_byLot=sd(PSI))
lot_summary


## Performing T-tests
library(stats) 

# Determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1500 pounds per square inch.

# Compare the mean
across_PSI <- t.test(SuspensionCoil$PSI, mu=1500)
across_PSI

# find if each manufacturing lot is statistically different from the population mean

# Lot 1
lot_1 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
lot_1

# Lot 2
lot_2 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
lot_2

# Lot 3
lot_3 <- t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot3")$PSI,mu=1500)
lot_3