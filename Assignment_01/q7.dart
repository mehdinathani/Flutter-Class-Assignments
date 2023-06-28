void main() {
  // Define variables to store customer ID, name, and unit consumed
  int customerId = 1001;
  String customerName = "James";
  int unitConsumed = 800;

  // Calculate the electricity bill
  double electricityBill = 0;
  if (unitConsumed <= 199) {
    electricityBill = unitConsumed * 1.2;
  } else if (unitConsumed > 199 && unitConsumed <= 400) {
    electricityBill = unitConsumed * 1.5;
  } else if (unitConsumed > 400 && unitConsumed <= 600) {
    electricityBill = unitConsumed * 1.8;
  } else {
    electricityBill = unitConsumed * 2;
  }

  // Print the electricity bill
  print("Customer IDNO: $customerId");
  print("Customer Name: $customerName");
  print("Unit Consumed: $unitConsumed");
  print("Amount Charges @Rs. ${electricityBill / unitConsumed} per unit: ${electricityBill}");
  print("Net Bill Amount: ${electricityBill}");
}
