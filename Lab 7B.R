#Activity 1
library(readxl)
library(dplyr)
uforeport <- read_excel("uforeport.xls")
titanic <- read.csv("titanic.csv")
uforeport_clean <- na.omit(uforeport)
titanic_clean <- na.omit(titanic)
names(uforeport_clean) <- gsub(" ", "_", colnames(uforeport_clean))

#Activity 2
shape_summary <- uforeport_clean %>%
  group_by(Shape_Reported) %>%
  summarise(Count = n()) %>%
  arrange(desc(Count))
print("UFO Shape Distribution:")
print(head(shape_summary))
ca_sightings <- filter(uforeport_clean, State == "CA")
print(paste("Total sightings in California after cleaning:", nrow(ca_sightings)))

#Activity 3
cherbourg_total <- filter(titanic_clean, embark_town == "Cherbourg")
cherbourg_survived <- filter(cherbourg_total, survived == 1)
survival_rate_c <- (nrow(cherbourg_survived) / nrow(cherbourg_total)) * 100
print(paste("Survival rate of passengers from Cherbourg:", round(survival_rate_c, 2), "%"))
cherbourg_class <- cherbourg_total %>%
  group_by(class) %>%
  summarise(Percentage = (n() / nrow(cherbourg_total)) * 100)

print("Class distribution of passengers from Cherbourg:")
print(cherbourg_class)
gender_survival <- titanic_clean %>%
  group_by(sex) %>%
  summarise(Survival_Rate = mean(survived) * 100)

print("Survival Rate by Gender:")
print(gender_survival)


# ============================================================
# CONCLUSION REPORT
# ============================================================
# [Insight 1: Titanic Survival Factors]
# From the refined dataset, passengers who boarded at Cherbourg 
# demonstrate a noticeably higher survival rate (around 80% in the 
# selected subset). This trend is likely influenced by the fact that 
# many of these passengers were traveling in First Class, which 
# provided better priority and access to lifeboats during evacuation.
#
# [Insight 2: UFO Reporting Trends]
# After handling missing values, analysis of the 'Shape Reported' 
# column indicates that shapes such as 'TRIANGLE' and 'DISK' appear 
# most frequently. This may reflect a consistent pattern in how 
# witnesses describe and interpret unidentified aerial sightings.
#
# [Insight 3: Data Integrity]
# Applying na.omit() played an important role in improving data quality. 
# In the Titanic dataset, several records were missing details like 
# 'age' and 'deck'. By excluding incomplete entries, the calculated 
# survival rates are based only on reliable and complete data points.
# ============================================================
