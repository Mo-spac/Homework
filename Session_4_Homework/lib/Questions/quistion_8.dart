import 'quistion_8 copy.dart';

void main() {
  Product phone = Product("Iphone 15 Pro", 9300.4, 2);

  productDetails(phone);
  phone.updateQuantity(8);
  printTotalPrice(phone);

  print("*****************");

  Product laptop = Product("Lenovo Legon", 11600.4, -2);
  productDetails(laptop);

  laptop.updateQuantity(10);
  printTotalPrice(laptop);
}

void productDetails(Product product) {
  print("Product details: ");
  print("Product: ${product.name}");
  print("Unit Price: \$${product.price}");
  print(
      "Initial Quantity: ${(product.quantity >= 1) ? "${product.quantity}" : "Please, Enter a valid quantity"}");
  print(
      "Initial Total Price: ${(product.quantity >= 1) ? "\$ ${product.totalPrice()}" : "Please, Enter a valid quantity to get correct price"}");
}

void printTotalPrice(Product product) {
  return print(
      "Total Price for ${product.quantity} units as ${product.name}: \$${product.totalPrice()}");
}
