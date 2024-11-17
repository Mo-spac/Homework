class Car {
  String _make;
  String _model;
  int year;

  Car(this._make, this._model, this.year);
  displayInfo() {
    print("It is very fast");
    print('Car Make: $_make, Model: $_model, Year: $year');
  }

  set make(String value) {
    List<String> modelList = ["BMW", "Mercedes"];
    if (modelList.contains(value)) {
      _make = value;
    } else {
      print("invalid");
    }
  }

  String get make => _make;

  set model(String value) {
    if (value.isNotEmpty) {
      _model = value;
    } else {
      print("Model cannot be empty");
    }
  }

  String get model => _model;

  void displayDetails() {
    print('Car Make: $_make, Model: $_model, Year: $year');
  }
}

class ElectricCar extends Car {
  int batteryCapacity;

  // ElectricCar(super.make, super.model, super.year , this.batteryCapacity);
  ElectricCar(String make, String model, int year, this.batteryCapacity)
      : super(make, model, year);

  displayBatteryStatus() {
    print("Battery Capacity: $batteryCapacity ");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("The car is very fast");
    print("Battery Capacity: $batteryCapacity kWh");
  }
}
