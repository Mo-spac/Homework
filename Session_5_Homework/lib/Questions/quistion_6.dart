void main() {
  Car car1 = Car("BMW", "S8", 2024);
  print("Car Details :");
  print(car1.make);
  print(car1.model);
  print(car1.year);
  car1.displayInfo();
}

class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);
  displayInfo() {
    print("It is very fast");
  }
}
