import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int s1 = 1;
  int s2 = 5;
  int s3 = 100;

  for (int i = 0; i < n; i++) {
    if (i % 3 == 0) {
      stdout.write('$s1 ');
      s1 *= 2;
    } else if (i % 3 == 1) {
      stdout.write('$s2 ');
      s2 += 5;
    } else {
      stdout.write('$s3 ');
      s3 -= 10;
    }
  }
  print('');
}