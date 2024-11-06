void main() {
  int? score;

  print('score = ${score ?? 'No Score'}');

  score = 90;
  print('score = ${score ?? 'No Score'}');
}
