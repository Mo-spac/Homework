void main() {
  int month = 3;
  String season;
  switch (month) {
    case 12 || 1 || 2:
      season = "Winter";
      break;
    case 3 || 4 || 5:
      season = "Spring";
      break;
    case 6 || 7 || 8:
      season = "Summer";
      break;
    case 9 || 10 || 11:
      season = "Autumn";
      break;

    default:
      season = 'Invalid month number';
  }
  print(season);
}
