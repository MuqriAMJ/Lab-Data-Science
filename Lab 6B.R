#Activity 1
# 1. Create the data frame
exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2)
)
# Display the initial data frame
print("Initial Data Frame:")
print(exam_data)


#Activity 2
# 2. Add the 'qualify' column
exam_data$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
# Display the updated data frame
print("Data Frame with Qualify Column:")
print(exam_data)


#Activity 3
# 3. Create a new row for Emily
new_row <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)
# Bind the new row to the existing data frame
exam_data <- rbind(exam_data, new_row)
# Display the final data frame
print("Final Data Frame with New Row:")
print(exam_data)


#Activity 4
# 4. Display structures and dimensions
print("Structure of the Dataset:")
str(exam_data)
print("Dimensions (Rows and Columns):")
print(dim(exam_data))
# Change 'qualify' and 'name' to factors to get a better summary
exam_data$qualify <- as.factor(exam_data$qualify)
exam_data$name <- as.factor(exam_data$name)
print("Summary of the Dataset:")
summary(exam_data)