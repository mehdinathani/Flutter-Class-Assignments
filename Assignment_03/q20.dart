import 'dart:io';
void main() {
  List<String> vowels = ["a","e","i","o","u"];

  var vCount = 0;


stdout.write("Please type some text.");
String text = stdin.readLineSync()!;

for(var i = 0; i <text.length; i++){
  var character = text[i];
  
  if(vowels.contains(character)){ 
    vCount++;
  }
}

print("Number of vowels $vCount");

}