import 'dart:math';

void main() {
  Circle circle1 = Circle(10);
  circle1.area();
  print("Cirxle area with radius ${circle1.radius} = ${circle1.area()}");

  Rectangle rectangle1 = Rectangle(20, 5);
  rectangle1.area();

  print(
      "Rextangle area with lenght ${rectangle1.length} and width ${rectangle1.width} = ${rectangle1.area()}");
}

abstract class Shape {
  double area();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    double area = pi * radius * radius;
    return area;
  }
}

class Rectangle implements Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);

  @override
  double area() {
    double area = length * width;
    return area;
  }
}
