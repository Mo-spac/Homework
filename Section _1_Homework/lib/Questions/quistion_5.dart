void main() {
  // Var : is type of the variable you can entry it once at the time of assignment and cannot change.
  var modelsOfBMW = "S7";
  modelsOfBMW = "Sa";
  model = 55; // error
  print(modelsOfBMW);

  // dynamic : is type of the variable you can entry it  the time of assignment and  change at runtime .
  //it is more flexible , This allows the variable to hold values of different types over its lifetime.
  dynamic modelsOfMercedesBenz = "A-Class";
  modelsOfMercedesBenz = "S-Clas";
  modelsOfMercedesBenz = 801;

  print(modelsOfMercedesBenz);
}
