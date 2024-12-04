void main() {
  List<Car> cars = [
    Car('Mercides', 2024, 17000),
    Car('BMW', 2023, 15000),
    Car('Ford', 2022, 20000),
  ];

  for (var car in cars) {
    car.describe();
  }
  int total = Car.totalMileage(cars);

  print('Total Mileage: $total');
}

class Vehicle {
  String brand;
  int year;
  Vehicle(this.brand, this.year);
  void describe() {
    print('Brand: $brand, Year: $year');
  }
}

class Car extends Vehicle {
  int mileage;

  Car(super.brand, super.year, this.mileage);
  @override
  void describe() {
    print('Brand: $brand, Year: $year, Mileage: $mileage');
  }

  static int totalMileage(List<Car> cars) {
    return cars.fold(0, (sum, car) => sum + car.mileage);
  }
}
