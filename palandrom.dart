import 'dart:io';

void main() {
  int? No = 0, rev = 0, dig = 0, temp = 0;

  stdout.write(" Enter a number =  =>");
  No = int.parse(stdin.readLineSync() ?? '');

  temp = No;
  while (temp! != 0) {
    dig = temp % 10;
    rev = (rev! * 10) + dig;
    temp = temp ~/ 10;

    stdout.write("\n  number $rev ");
  }

  if (rev == No) {
    stdout.write("\n This number is palandrom !!!");
  } else {
    stdout.write("\n Given No Is Not palandrom !!! ");
  }
}
