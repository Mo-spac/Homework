void main() {
  // String firstName = 'Mohammed';
  // String lastName = 'Samy';
  // int degreeOfArabic = 98;
  // int degreeOfEnglish = 98;
  // double degreeOfMath = 97.5;
  // bool? isSpeakEnglish;

  // double SumOfDegrees = degreeOfArabic + degreeOfEnglish + degreeOfMath;
  // String fullName = firstName + lastName;

  // print("Your name is $fullName");
  introducing(firstName: "Mohammed", lastName: "Sami");

  // print("Sum of your degree = $SumOfDegrees");
  sumOfDegree(arabic: 89, math: 99.5);

  // print("You speak English ${isSpeakEnglish == true ? 'well' : 'badly'}");

  // isSpeakEnglish == true
  //     ? print("You speak English well")
  //     : print("You speak English badly");

  speakingEnglish(true);
}

void introducing({required String firstName, required String lastName}) {
  String fullName = firstName + " " + lastName;
  print("Hello, my name is $fullName");
}

void sumOfDegree({required int arabic, required double math}) {
  double sum = arabic + math;
  print("Sum of your degree = $sum");
}

void speakingEnglish(bool haveEnglish) {
  if (haveEnglish == true) {
    print("You speak English is well");
  } else {
    print("You speak English is badly");
  }
}
