void main() {
  num number1 = 25;
  num number2 = 25.5;
  double number3 = 15.5;
  double number4 = 15;

  print(number1);
  print(number2);
  print(number3);
  print(number4);
  print("""
  
  This Example show the difference between the num and double data types in Dart:

  num is data type that more gemeral numeric type that contain integer , double and float ( decimal values)
  and it can switch between them.

  double is data type that more specific type under num , 
  it has the variable specifically needs to declare only decimal values, 
  when it contain integer value it store it as decimal value , such as the one in this example.

  """);
}
