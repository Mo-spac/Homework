import 'quistion_8_and_9.dart';

void main() {
  Car car1 = Car("BMW", "S8", 2024);
  print("Car Details :");

  print(car1.make);
  print(car1.model);
  print(car1.year);
  car1.displayInfo();

  car1.make = "BMW";
  print(car1.make);
  car1.make = "Mercedes";
  print(car1.make);
  car1.make = "Toyota";
  print(car1.make);

  car1.model = "S7";
  print(car1.model);
  car1.model = "";
  print(car1.model);
}
