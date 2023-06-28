

void main(){
  Map<String,int> shoppingCart = {"Apple": 5, "Banana": 10, "Cherry":6};

  if (shoppingCart.containsKey("Applle")){
    print("Product found!");
  }
  else{
    print("Product not found!");
  }
}