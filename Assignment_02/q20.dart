void main() {
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };

  bool isSedan = car["isSedan"];
  String color = car["color"];

  if (isSedan && color == "Red") {
    print("Match");
  } else {
    print("No match");
  }
}
