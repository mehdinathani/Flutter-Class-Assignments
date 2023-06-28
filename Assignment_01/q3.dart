void main() {
int totalClasses = 16;
int attendedClasses = 10;

num attendacenPercantage = attendedClasses / totalClasses * 100;
print(attendacenPercantage);
  
if(attendacenPercantage > 75){
  print("Total Classes attended is $attendacenPercantage%, so Student is Allowed for exams");
}
  else{
    print("Total Classes attended is $attendacenPercantage%, so Student not Allowed for exams");
  }

}
