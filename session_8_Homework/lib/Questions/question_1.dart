void main() {
  print(divideNumbers(10, 5));
  print(divideNumbers(-1, 5));
  print(divideNumbers(0, 5));
}

double? divideNumbers(int a, int b) {
  try {
    if (b == 0) {
      throw Exception("Cannot divide by zero!");
    }
    double result = a / b;
    return result;
  } on Exception catch (e) {
    print(e);
    return null;
  }
}
