# Deliverable 1

# 3. Load timyverse and dplyr, since tinyverse is needed to use dplyr
library(tidyverse)
library(dplyr)

# 4. Import and read in CSV file as a dataframe
mpg_df <- read.csv(file='MechaCar_mpg.csv')

# 5. Perform Multiple Linear Regression Model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df) 

# 6. Genearate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df) )

# Checking graph and line 
model_length <- lm(mpg ~ vehicle_length,data=mpg_df) 
yvals <- model_length$coefficients['vehicle_length']*mpg_df$vehicle_length +
  model_length$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg_df,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

model_weight <- lm(mpg ~ vehicle_weight,data=mpg_df) 
yvals <- model_weight$coefficients['vehicle_weight']*mpg_df$vehicle_weight +
  model_weight$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg_df,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

model_angle <- lm(mpg ~ spoiler_angle,data=mpg_df) 
yvals <- model_angle$coefficients['spoiler_angle']*mpg_df$spoiler_angle +
  model_angle$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg_df,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

model_clear <- lm(mpg ~ ground_clearance,data=mpg_df) 
yvals <- model_clear$coefficients['ground_clearance']*mpg_df$ground_clearance +
  model_clear$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg_df,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

model_AWD <- lm(mpg ~ AWD,data=mpg_df) 
yvals <- model_AWD$coefficients['AWD']*mpg_df$AWD +
  model_AWD$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg_df,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Vehicle_length and ground_clearance were the only variables to show a correlation with mpg
# Create linear regression with just those two variables
lm(mpg ~ vehicle_length + ground_clearance,data=mpg_df) 
summary(lm(mpg ~ vehicle_length + ground_clearance,data=mpg_df))




#Deliverable 2: Create Visualizations for the Trip
# 2. Read in Suspension Coil CSV
coil_table <- read.csv(file='Suspension_Coil.csv')

# 3. Create a dataframe using the summarize function
total_summary_df <- coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# 4. Create a dataframe using the summarize function grouped by Lot
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Create boxplots to better visualize the data
boxplot(coil_table$PSI ~ coil_table$Manufacturing_Lot, xlab = "PSI", ylab = "Manufacturing Lot")


# Deliverable 3: T-Tests on Suspension Coils
# 1. Run a t-test for the Suspension Coil data to see if all manufactoring lots 
# compare a sample to the population mean
sample_coil_table <- coil_table %>% sample_n(50)
t.test(sample_coil_table$PSI,mu=1500)

# 2. Run t-tests to each lot to see if they are significantly different from the population mean
Lot1_sample = subset(coil_table, Manufacturing_Lot == "Lot1")
t.test(Lot1_sample$PSI,mu=1500)

Lot2_sample = subset(coil_table, Manufacturing_Lot == "Lot2")
t.test(Lot2_sample$PSI,mu=1500)

Lot3_sample = subset(coil_table, Manufacturing_Lot == "Lot3")
t.test(Lot3_sample$PSI,mu=1500)




# Deliverable 4: Design a Study Comparing the MechaCar to the Competition

# 













