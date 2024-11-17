import 'dart:io';

enum User { admin, user, guest }

void main() {
  String? typeUser = readUserType();

  User users = selectUserType(typeUser);

//   // User? users;
  printUserType(users);
  printUserType(selectUserType(typeUser));
  printUserType(selectUserType(readUserType()));
}

String? readUserType() {
  print("Choose your type [admin , user, guest]");
  String? typeUser = stdin.readLineSync()?.toLowerCase();
  return typeUser;
}

User selectUserType(String? typeUser) {
  User users;

  if (typeUser == 'admin') {
    users = User.admin;
  } else if (typeUser == 'user') {
    users = User.user;
  } else {
    users = User.guest;
  }
  return users;
}

void printUserType(User users) {
  if (users == User.admin) {
    print('Welcome Admin');
  } else if (users == User.user) {
    print('Welcome User');
  } else {
    print('Welcome Guest');
  }
}
