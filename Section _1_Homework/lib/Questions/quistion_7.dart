void main() {
  String name = "Alice";
  name = 123; // error

  print(name);
}
/*
This error occurs because when defining the variable “name”, 
it was given the initial value of “Alice” and it was declared to be of data type “String”,
Therefore, in the Dart programming language, a variable can't be given an initial value based on its data type,
then change this value to enter other data type, such as the one in this example,
but it can be changed to the same value with the same data type.
*/
