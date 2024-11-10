void main() {
  Student student1 = Student("Mo", 20, true);
  student1.introducing();
  Student student2 = Student("Ahmed", 18, true);
  student2.introducing();
  Student student3 = Student("Ali", 16, false);
  student3.introducing();
}

class Student {
  String name;
  int age;
  bool isSpeakEnglish;

  Student(this.name, this.age, this.isSpeakEnglish);

  void introducing() {
    print("""
          Hello , my name is $name and I am $age years old,
          ${isSpeakEnglish ? 'My English is well' : 'I don\'t know English'}
    """);
  }
}
