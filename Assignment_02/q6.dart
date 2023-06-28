//Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value o f Capital & Currency.

import 'dart:io';

void main(){
  Map<String, Map<String,dynamic>> world = {
    "Pakistan":{
      "capitalCity": "Islamabad", "currency": "PKR", "language":"Urdu"
    },
    "Iran":{
      "capitalCity": "Tehran", "currency": "IRR", "language":"Persian"
    },
    "India":{
      "capitalCity": "New Dehli", "currency": "INR", "language":"Hindi"
    }
  };

  stdout.write('Enter a country: ');
  String countryKey = stdin.readLineSync()!;

  if(world.containsKey(countryKey)){
    print("Details for $countryKey are here.");
    print(world[countryKey]);
  }
  else{
    print("Country not found, Please try again");
  }
  //print(world);
}