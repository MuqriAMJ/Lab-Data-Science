#Activity 1
library(dplyr)
titanic <- read.csv("titanic.csv")
titanic_clean <- na.omit(titanic)
survival_counts <- table(titanic_clean$survived, titanic_clean$class)
barplot(survival_counts, 
        main = "Survival by Passenger Class",
        xlab = "Class", ylab = "Number of Passengers",
        col = c("red", "green"),
        legend = c("Died", "Survived"), 
        beside = TRUE)
boxplot(fare ~ survived, data = titanic_clean,
        main = "Fare Distribution by Survival",
        xlab = "Survived (0 = No, 1 = Yes)",
        ylab = "Fare Paid",
        col = c("orange", "lightblue"),
        names = c("Died", "Survived"))

#Activity 2
data("AirPassengers")
plot(AirPassengers, 
     type = "o", 
     col = "blue", 
     main = "Monthly Airline Passenger Growth (1949-1960)",
     xlab = "Year", 
     ylab = "Total Passengers (in thousands)")
abline(reg = lm(AirPassengers ~ time(AirPassengers)), col = "red", lwd = 2)
print("Summary of Passenger Data:")
summary(AirPassengers)


# ============================================================
# CONCLUSION REPORT & DATA STORY
# ============================================================
#
# [Activity 1: Titanic Insights]
# 1. Class Difference: The bar chart indicates that although Third Class 
#    passengers make up the largest portion overall, the proportion of 
#    survivors is noticeably higher in First Class, as seen by the taller 
#    green bars relative to their group size.
# 2. Financial Influence: The box plot highlights that survivors tend to 
#    have a higher median fare. This suggests that passengers who paid 
#    more may have had better chances of survival, possibly due to priority 
#    access to lifeboats or assistance.
#
# [Activity 2: AirPassengers Analysis - Management Briefing]
# "Good morning everyone. Based on our evaluation of the AirPassengers 
# dataset, we can observe a strong and continuous expansion in airline 
# passenger numbers over the years.
#
# Key Observations:
# - Upward Trend: The trend line clearly shows a consistent increase in 
#   passenger volume between 1949 and 1960.
# - Seasonal Pattern: There is a repeating pattern each year, where 
#   passenger numbers rise sharply during mid-year periods, indicating 
#   peak travel seasons.
# - Recommendation: Given this recurring trend, it would be beneficial for 
#   management to allocate more aircraft capacity and manpower during peak 
#   months to fully capture higher demand and improve revenue potential."
#
# ============================================================
