void main() {
  Map<String, dynamic> product = {
    "name": "Example Product",
    "price": 10.99,
    "quantity": 5,
  };

  int quantity = product["quantity"];

  if (quantity > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }
}
