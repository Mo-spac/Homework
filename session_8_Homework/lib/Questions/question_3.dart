void main() {
  // List<int> nums = [10, 3, 45, 7];
  // print(findLargest(nums));

  Product product1 = Product(name: "Phone");
  print(product1.name);
  print(product1.price);
  print(product1.stock);
  product1.sell(2);
  print("*****************");

  Product product2 = Product(name: "Laptop", price: 2000.0, stock: 10);
  print(product2.name);
  print(product2.price);
  print(product2.stock);
  product2.sell(2);
  product2.sell(4);
  product2.sell(6);
}

class Product {
  String name;
  double price;
  int stock;

  Product({required this.name, this.price = 0.0, this.stock = 0});

  void sell(int quantity) {
    if (quantity <= stock) {
      stock -= quantity;
      print("Sold $quantity units of $name. Updated stock: $stock");
    } else {
      print("Not enough stock to sell $quantity units of $name");
    }
  }
}
