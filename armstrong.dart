import 'dart:io';

void main() {
  int? No = 0;

  stdout.write(" Enter a number =  =>");
  No = int.parse(stdin.readLineSync() ?? '');

  int temp = No;

  int ans = 0;

  int numlength = No.toString().length;

  while (temp != 0) {
    int rem = temp % 10;
    temp = temp ~/ 10;

    int multiple = 1;

    for (int i = 1; i <= numlength; i++) {
      multiple = multiple * rem;
    }
    ans = ans + multiple;
  }
  if (ans == No) {
    stdout.write("\n This number is armstrong !!!");
  } else {
    stdout.write("\n Given No Is Not armstrong !!! ");
  }
}
