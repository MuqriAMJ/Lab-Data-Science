#Activity 1
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)
pass_status <- scores > 49
print(pass_status)
grades <- cut(scores, breaks = c(-Inf, 49, 59, 69, 79, 89, 100), labels = c("F", "E", "D", "C", "B", "A"), include.lowest = TRUE)
grade_counts <- table(grades)
print(grade_counts)

#Activity 2
student_list <- list(names = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"), scores = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59))
highest_score <- max(student_list$scores)
lowest_score <- min(student_list$scores)
average_score <- mean(student_list$scores)
top_students <- student_list$names[student_list$scores == highest_score]
bottom_students <- student_list$names[student_list$scores == lowest_score]
cat("Highest Score:", highest_score, "\n")
cat("Lowest Score:", lowest_score, "\n")
cat("Average Score:", average_score, "\n")
cat("Student(s) with highest score:", paste(top_students, collapse=", "), "\n")
cat("Student(s) with lowest score:", paste(bottom_students, collapse=", "), "\n")

#Activity 3
student_list$chemistry <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
student_list$physics <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
fail_both <- sum(student_list$chemistry <= 49 & student_list$physics <= 49)
cat("Students who failed both Chemistry and Physics:", fail_both, "\n")
best_chem_score <- max(student_list$chemistry)
best_phys_score <- max(student_list$physics)
best_chem_student <- student_list$names[student_list$chemistry == best_chem_score]
best_phys_student <- student_list$names[student_list$physics == best_phys_score]
cat("Best in Chemistry:", paste(best_chem_student, collapse=", "), "(", best_chem_score, ")\n")
cat("Best in Physics:", paste(best_phys_student, collapse=", "), "(", best_phys_score, ")\n")
