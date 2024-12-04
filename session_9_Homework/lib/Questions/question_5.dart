void main() {
  Washer washer = Washer(ApplianceType.WASHER);
  washer.turnOn();
  washer.setTimer(12);
  washer.operate();
}

enum ApplianceType { WASHER, DRYER, OVEN }

abstract class Appliance {
  final ApplianceType applianceType;

  Appliance(this.applianceType);

  String getApplianceTypeName() {
    return applianceType.toString().split('.').last;
  }

  void turnOn() {
    print('${getApplianceTypeName()} Turn it ON.');
  }

  operate();
}

mixin TimerFeatureMixin {
  setTimer(int minutes) {
    print("Timer set for $minutes minutes.");
  }
}

class Washer extends Appliance with TimerFeatureMixin {
  Washer(super.applianceType);

  @override
  operate() {
    print("Washing clothes...");
  }
}

// // Enum for appliance types
// enum ApplianceType { WASHER, DRYER, OVEN }

// // Abstract class Appliance
// abstract class Appliance {
//   final ApplianceType type; // Property for appliance type

//   // Constructor to initialize the appliance type
//   Appliance(this.type);

//   // Method to turn on the appliance
//   void turnOn() {
//     print('$type is now ON.');
//   }

//   // Abstract method to define specific operation
//   void operate();
// }

// // Mixin TimerFeature
// mixin TimerFeature {
//   // Method to set a timer
//   void setTimer(int minutes) {
//     print('Timer set for $minutes minutes.');
//   }
// }

// // Class Washer that extends Appliance and mixes in TimerFeature
// class Washer extends Appliance with TimerFeature {
//   // Constructor for Washer
//   Washer() : super(ApplianceType.WASHER);

//   @override
//   void operate() {
//     print('Washing clothes...');
//   }
// }

// // Class Dryer that extends Appliance and mixes in TimerFeature
// class Dryer extends Appliance with TimerFeature {
//   // Constructor for Dryer
//   Dryer() : super(ApplianceType.DRYER);

//   @override
//   void operate() {
//     print('Drying clothes...');
//   }
// }

// // Class Oven that extends Appliance
// class Oven extends Appliance {
//   // Constructor for Oven
//   Oven() : super(ApplianceType.OVEN);

//   @override
//   void operate() {
//     print('Baking food...');
//   }
// }

// void main() {
//   // Create a Washer instance
//   Washer myWasher = Washer();
//   myWasher.turnOn();
//   myWasher.setTimer(30);
//   myWasher.operate();

//   print('');

//   // Create a Dryer instance
//   Dryer myDryer = Dryer();
//   myDryer.turnOn();
//   myDryer.setTimer(45);
//   myDryer.operate();

//   print('');

//   // Create an Oven instance
//   Oven myOven = Oven();
//   myOven.turnOn();
//   myOven.operate();
// }
