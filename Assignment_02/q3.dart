void main(){
  //Q.3: Create a list of Days and remove one by one from the end of list.
List<String> days = [];
days.addAll(["mon","tue","wed","thu","fri","sat","sun"]);
print(days);

while (days.isNotEmpty){
  days.removeLast();
  print(days);
}

}