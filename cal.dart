import 'dart:io';

class Functions {
  add() {
    int? Sum = 0;

    stdout.write("Enter Count Of No =>");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      Sum = Sum! + No;
    }

    stdout.write(" Addation Of Numbers => $Sum \n ");
  }

  Sub() {
    int? Sub = 0;

    stdout.write("Enter Count Of No =>");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        Sub = No;
      } else {
        Sub = Sub! - No;
      }
    }

    stdout.write("Substraction Of Numbers => $Sub \n ");
  }

  Mul() {
    int? Mul = 0;

    stdout.write("Enter Count Of No =>");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        Mul = No;
      } else {
        Mul = Mul! * No;
      }
    }

    stdout.write("Multilaction Of Numbers => $Mul \n");
  }

  Div() {
    double? Div = 0;

    stdout.write("Enter Count Of No =>");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      double? No = double.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        Div = No;
      } else {
        Div = Div! / No;
      }
    }

    stdout.write("Divsion Of Numbers => $Div \n ");
  }
}

class Menu extends Functions {
  void menu() {
    while (true) {
      stdout.writeln("\t 1) Addation ");
      stdout.writeln("\t 2) Substration ");
      stdout.writeln("\t 3) Multiplaction ");
      stdout.writeln("\t 4) Devsion ");
      stdout.writeln("\t 5) Exit ");

      stdout.write("Enter Your Choice =>");
      int Choice = int.parse(stdin.readLineSync() ?? '');

      if (Choice <= 0) {
        break;
      } else {
        switch (Choice) {
          case 1:
            add();
            print("Thanks For Visit");
            break;
          case 2:
            Sub();
            print("Thanks For Visit");
            break;
          case 3:
            Mul();
            print("Thanks For Visit");
            break;
          case 4:
            Div();
            print("Thanks For Visit");
            break;
          case 5:
            stdout.write("Enter Y to Exit ");
            String? result = stdin.readLineSync();

            if (result == 'Y' || result == 'y') {
              exit(0);
            }

            print("Thanks For Visit");
            break;
        }
      }
    }
  }
}

void main() {
  Menu obj = new Menu();

  obj.menu();
}
