import 'dart:math';

void main() {
  // ايه الفرق بين الطريقتين فى ان انادى ع الكلاس   ؟

  Shape circle1 = Circle(-5);
  Circle circle = Circle(-4);
  // circle.radius;

  print("Circle Area= ${circle1.calculateArea()}");
  print("Circle Area= ${circle.calculateArea()}");

  Shape rectangle1 = Rectangle(10, -5);
  Rectangle rectangle = Rectangle(9.5, -3);

  print("Rectangle Area= ${rectangle1.calculateArea()}");
  print("Rectangle Area= ${rectangle.calculateArea()}");
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double _radius = 0;

  Circle(this._radius);
  // مش عارف التغليف  ( set , get)مش شغالة هن ليه !؟
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("This value is invalid");
    }
  }

  double get radius => _radius;

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double _length = 0;
  double _width = 0;

  Rectangle(this._length, this._width);

  // مش عارف التغليف  ( set , get)مش شغالة هن ليه !؟

  set length(double value) {
    if (value > 0) {
      _length = value;
    } else {
      print("This value is invalid");
    }
  }

  double get length => _length;

  // مش عارف التغليف  ( set , get)مش شغالة هن ليه !؟

  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("This value is invalid");
    }
  }

  double get width => _width;

  @override
  double calculateArea() {
    return length * width;
  }
}
