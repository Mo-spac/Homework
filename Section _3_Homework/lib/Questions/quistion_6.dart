void main() {
  Map<String, dynamic> student = {
    "name": "Mohammed",
    "age": 19,
    "grade": "A+",
  };
  print("\nInitial student details: $student");

  print("\nStudent Details:");
  student.forEach((key, value) {
    print('$key: $value');
  });

  student['school'] = 'High School';
  print("\nAfter adding school: $student");

  print("\nStudent Details:");
  student.forEach((key, value) {
    print('$key: $value');
  });

  student["name"] = "Mohammed Samy";
  print("\nAfter updating name: $student");

  print("\nStudent Details:");
  student.forEach((key, value) {
    print('$key: $value');
  });

  student.remove("age");
  print("\nAfter removing age: $student");

  print("\nStudent Details:");
  student.forEach((key, value) {
    print('$key: $value');
  });
}
