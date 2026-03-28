#Activity 1
# Input year
year <- 2004
# Selection statement to check leap year
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  print(paste(year, "is a leap year."))
} else {
  print(paste(year, "is not a leap year."))
}


#Activity 2
# Input an integer
n <- 5
# Repetition statement to display cubes
for (i in 1:n) {
  cube <- i^3
  cat("Number is:", i, "and cube of the", i, "is:", cube, "\n")
}


#Activity 3
# Input an integer
input_num <- 1634
temp <- input_num
sum_val <- 0
# Get the number of digits
digits <- nchar(as.character(input_num))
# While loop to calculate sum of powers
while (temp > 0) {
  digit <- temp %% 10
  sum_val <- sum_val + (digit ^ digits)
  temp <- floor(temp / 10)
}
# Check if it is an Armstrong number
if (sum_val == input_num) {
  print(paste(input_num, "is an Armstrong number."))
} else {
  print(paste(input_num, "is not an Armstrong number."))
}
