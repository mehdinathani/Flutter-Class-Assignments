void main() {
  // Define variables to store student name, roll number, class, and marks in 5 subjects
  String studentName = "John Doe";
  int studentRollNumber = 123456;
  String studentClass = "10th";
  int subject1Marks = 90;
  int subject2Marks = 55;
  int subject3Marks = 70;
  int subject4Marks = 60;
  int subject5Marks = 66;

  // Calculate the total marks and percentage
  int totalMarks = subject1Marks + subject2Marks + subject3Marks + subject4Marks + subject5Marks;
  double percentage = (totalMarks / 500) * 100;
  percentage = double.parse(percentage.toStringAsFixed(2));

  // Determine the grade
  String grade = "Fail";
  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  }

  // Print the marksheet
  print("Student Name: $studentName");
  print("Student Roll Number: $studentRollNumber");
  print("Class: $studentClass");
  print("Total Marks: $totalMarks");
  print("Percentage: $percentage%");
  print("Grade: $grade");
}
