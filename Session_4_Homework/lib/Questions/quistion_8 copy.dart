class Product {
  String name;
  double price;
  int _quantity = 0;

  Product(this.name, this.price, int quantity) {
    this.quantity = quantity;
  }

  set quantity(int newQuantity) {
    if (newQuantity >= 0) {
      _quantity = newQuantity;

      print("Quantity is $_quantity for $name.");
    } else {
      print("Quantity is negative, that is invalid!, Setting to default (0)");
      print("Please, Enter a valid quantity");
    }
  }

  int get quantity => _quantity;

//   void updateQuantity() {
// if (condition) {

// }
//   }

  void updateQuantity(int newQuantity) {
    if (newQuantity >= 0) {
      _quantity = newQuantity;
      print("Quantity updated to $_quantity for $name.");
    } else {
      print("Quantity cannot be negative.");
    }
  }

  double totalPrice() {
    double total = price * quantity;
    return total;
  }
}
