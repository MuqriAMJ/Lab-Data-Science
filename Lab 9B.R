#Activity 1
data("ToothGrowth")
tg_data <- ToothGrowth
tg_data$supp <- as.numeric(tg_data$supp)
tg_corr <- cor(tg_data)
print("Correlation Matrix for ToothGrowth:")
print(tg_corr)
library(ggcorrplot)
ggcorrplot(tg_corr, lab = TRUE, title = "ToothGrowth Correlation Heatmap")

#Activity 2
data("mtcars")
raw_mpg <- mtcars$mpg
log_mpg <- log(raw_mpg)
standard_mpg <- scale(raw_mpg)
library(caret)
process_minmax <- preProcess(as.data.frame(raw_mpg), method = c("range"))
minmax_mpg <- predict(process_minmax, as.data.frame(raw_mpg))
print("Summary of Raw MPG:")
print(summary(raw_mpg))
print("Summary of Log Transformed MPG:")
print(summary(log_mpg))
print("Summary of Standard Scaled MPG (Mean should be 0):")
print(summary(standard_mpg))
print("Summary of Min-Max Scaled MPG (Range should be 0 to 1):")
print(summary(minmax_mpg))

# ============================================================
# DISCUSSION: ACTIVITY 1 - TOOTHGROWTH INSIGHTS
# ============================================================
#
# 1. POSITIVE RELATIONSHIP (Dose vs Length):
#    The results indicate a clear positive relationship between 'dose' 
#    and 'len'[cite: 876]. As the dosage of Vitamin C increases, the 
#    tooth length of guinea pigs also tends to increase accordingly.
#
# 2. EFFECT OF SUPPLEMENT TYPE:
#    After encoding 'supp' into numeric form, the correlation analysis 
#    allows us to examine whether the type of supplement (OJ vs VC) 
#    contributes linearly to tooth growth in addition to the dosage[cite: 876].
#
# 3. HEATMAP INTERPRETATION:
#    The heatmap further supports that 'dose' plays a dominant role in 
#    influencing 'len'[cite: 876]. Stronger color intensity shows that 
#    higher dosage levels (from 0.5 up to 2.0) are associated with greater 
#    tooth growth.
#
# 4. DATA SCIENCE IMPLICATION:
#    From these observations, 'dose' can be considered a key feature for 
#    predictive models. Identifying such relationships is important before 
#    proceeding with preprocessing steps like normalization or applying 
#    machine learning techniques[cite: 877].
#
# ============================================================
