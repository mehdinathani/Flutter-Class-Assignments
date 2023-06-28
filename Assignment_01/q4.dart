void main() {
// Define an integer variable to store the year
int year = 2001;

// Check if the year is divisible by 4
if (year % 4 == 0) {
// If the year is divisible by 4, then it is a leap year
print("The year $year is a leap year");
} else {
// If the year is not divisible by 4, then it is not a leap year
if (year % 100 == 0) {
// If the year is divisible by 100, then it is not a leap year unless it is also divisible by 400
if (year % 400 == 0) {
print("The year $year is a leap year");
} else {
print("The year $year is not a leap year");
}
} else {
print("The year $year is not a leap year");
}
}
}
