import 'dart:io';

void main() {
  String A = "Meat";
  String B = "Team";

  List a1 = A.toLowerCase().split('');
  print(a1);
  List a1s = a1..sort((a, b) => a.toString().compareTo(b.toString()));

  print(a1s);

  List b1 = B.toLowerCase().split('');
  print(b1);
  List b1s = b1..sort((a, b) => a.toString().compareTo(b.toString()));

  print(b1s);

  var noteq = '';
  for (int i = 0; i < a1s.length; i++) {
    if (a1s[i] == b1s[i]) {
      continue;
    } else {
      noteq = 'not eq';
      break;
    }
  }

  print(noteq == '' ? '$A and $B are anagram' : '$A and $B is Not anagram');
}
