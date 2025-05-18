import 'dart:io';

void main() {
  int? No = 0, i = 0;

  stdout.write(" Enter a number to find it is prime or not =  =>");
  No = int.parse(stdin.readLineSync() ?? '');

  for (i = 2; i! < No; i++) {
    if (No % i == 0) {
      break;
    }
  }

  if (No == i) {
    stdout.write("\n This number is prime !!!");
  } else {
    stdout.write("\n Given No Is Not Prime !!! ");
  }
}
