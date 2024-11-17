void main() {
  double length = 10.4;
  double width = 5.5;

  calculateArea(length, width);
}

calculateArea(double length, double width) {
  double result = length * width;
  print("The area of the rectangle = $result");
}
